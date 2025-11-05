package com.huawei.hms.locationSdk;

import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.support.api.location.common.CollectionsUtil;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.log.HMSLog;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class c0 extends b0 {
    private static volatile c0 c;
    private static final byte[] d = new byte[0];
    private List<LocationCallback> b = new ArrayList(10);

    public static c0 b() {
        if (c == null) {
            synchronized (d) {
                try {
                    if (c == null) {
                        c = new c0();
                    }
                } finally {
                }
            }
        }
        return c;
    }

    public void a(LocationCallback locationCallback) {
        synchronized (d) {
            try {
                if (locationCallback == null) {
                    return;
                }
                if (this.b == null) {
                    this.b = new ArrayList();
                }
                this.b.add(locationCallback);
                HMSLocationLog.i("LocationRequestCacheManager", "", "add callback to removingCallbackList, size is : " + this.b.size());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(LocationCallback locationCallback, int i) throws InterruptedException {
        if (b().b(locationCallback)) {
            if (i <= 0) {
                HMSLocationLog.i("LocationRequestCacheManager", "", "try max times, request now");
                b().c(locationCallback);
                return;
            }
            try {
                HMSLocationLog.i("LocationRequestCacheManager", "", "sleep 100 ms here, count: " + i);
                Thread.currentThread();
                Thread.sleep(100L);
            } catch (InterruptedException unused) {
                HMSLocationLog.e("LocationRequestCacheManager", "", "InterruptedException");
            }
            a(locationCallback, i - 1);
        }
    }

    public void a(d0 d0Var, int i) throws IllegalArgumentException {
        if (d0Var == null || CollectionsUtil.isEmpty(a())) {
            HMSLog.i("LocationRequestCacheManager", "updateCacheNumUpdates fail, cache or numUpdates is null");
            return;
        }
        for (int i2 = 0; i2 < a().size(); i2++) {
            d0 d0Var2 = a().get(i2) instanceof d0 ? (d0) a().get(i2) : null;
            if (d0Var2 != null && d0Var2.equals(d0Var)) {
                if (i > 0) {
                    d0Var2.d().setNumUpdates(i);
                }
                d0Var2.a(i);
            }
        }
    }

    public boolean b(LocationCallback locationCallback) {
        synchronized (d) {
            if (locationCallback != null) {
                try {
                    if (!CollectionsUtil.isEmpty(this.b)) {
                        for (int i = 0; i < this.b.size(); i++) {
                            LocationCallback locationCallback2 = this.b.get(i);
                            if (locationCallback2 != null && locationCallback2.equals(locationCallback)) {
                                HMSLocationLog.i("LocationRequestCacheManager", "", "find callback in removingCallbackList, size is : " + this.b.size());
                                return true;
                            }
                        }
                        return false;
                    }
                } finally {
                }
            }
            return false;
        }
    }

    public boolean c(LocationCallback locationCallback) {
        synchronized (d) {
            if (locationCallback != null) {
                try {
                    if (!CollectionsUtil.isEmpty(this.b)) {
                        for (LocationCallback locationCallback2 : this.b) {
                            if (locationCallback2.equals(locationCallback)) {
                                this.b.remove(locationCallback2);
                                HMSLocationLog.i("LocationRequestCacheManager", "", "remove callback from removingCallbackList, size is : " + this.b.size());
                                return true;
                            }
                        }
                        return false;
                    }
                } finally {
                }
            }
            return false;
        }
    }
}
