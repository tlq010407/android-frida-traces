package com.huawei.hms.support.api.location.common;

import android.os.SystemClock;
import com.huawei.hms.support.log.HMSLog;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LocationClientStateManager {
    private static final long MAX_INTERVAL_TIME = 300000;
    private static final int MAX_RECONNECT_COUNT = 3;
    private static final long REPEAT_REQUEST_INTERVAL_TIME = 500;
    public static final int RE_START_STATE_DOING = 1;
    public static final int RE_START_STATE_FAILED = 2;
    public static final int RE_START_STATE_INITIAL = 0;
    private static final byte[] SYNC_LOCK = new byte[0];
    private static final String TAG = "LocationClientStateManager";
    private volatile AtomicLong lastDisConnectTime;
    private volatile AtomicInteger reConnectCount;
    private volatile AtomicInteger resendState;

    private static class b {
        private static final LocationClientStateManager a = new LocationClientStateManager();
    }

    private LocationClientStateManager() {
        this.lastDisConnectTime = new AtomicLong(0L);
        this.reConnectCount = new AtomicInteger(0);
        this.resendState = new AtomicInteger(0);
    }

    private boolean checkReconnectStrategy() {
        synchronized (SYNC_LOCK) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.lastDisConnectTime.get() < REPEAT_REQUEST_INTERVAL_TIME) {
                    HMSLog.e(TAG, "can not reconnect , not satisfied interval");
                    return false;
                }
                if (this.reConnectCount.get() == 0) {
                    this.lastDisConnectTime.set(jElapsedRealtime);
                    this.reConnectCount.incrementAndGet();
                    HMSLog.i(TAG, "first reconnect");
                    return true;
                }
                if (jElapsedRealtime - this.lastDisConnectTime.get() > MAX_INTERVAL_TIME) {
                    this.reConnectCount.set(1);
                    this.lastDisConnectTime.set(jElapsedRealtime);
                    HMSLog.i(TAG, "over MAX_INTERVAL_TIME , restart first reconnect");
                    return true;
                }
                if (this.reConnectCount.get() >= 3) {
                    this.lastDisConnectTime.set(jElapsedRealtime);
                    HMSLog.i(TAG, "can not reconnect , cause count > MAX_RECONNECT_COUNT");
                    return false;
                }
                HMSLog.i(TAG, "can reconnect");
                this.lastDisConnectTime.set(jElapsedRealtime);
                this.reConnectCount.incrementAndGet();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static LocationClientStateManager getInstance() {
        return b.a;
    }

    public boolean canResendRequest() {
        boolean z;
        synchronized (SYNC_LOCK) {
            try {
                z = this.resendState.get() == 2 || this.resendState.get() == 0;
            } finally {
            }
        }
        return z;
    }

    public boolean checkCanResendRequest() {
        boolean z;
        synchronized (SYNC_LOCK) {
            try {
                z = checkReconnectStrategy() && canResendRequest();
            } finally {
            }
        }
        return z;
    }

    public synchronized int getResendState() {
        return this.resendState.get();
    }

    public void resetCache() {
        synchronized (SYNC_LOCK) {
            try {
                if (this.reConnectCount.get() == 0 && this.lastDisConnectTime.get() == 0) {
                    HMSLog.i(TAG, "not need resetCache");
                    return;
                }
                HMSLog.i(TAG, "resetCache");
                this.lastDisConnectTime.set(0L);
                this.reConnectCount.set(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setResendState(int i) {
        synchronized (SYNC_LOCK) {
            this.resendState.set(i);
        }
    }
}
