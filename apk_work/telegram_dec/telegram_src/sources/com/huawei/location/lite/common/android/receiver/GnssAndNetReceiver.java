package com.huawei.location.lite.common.android.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.intent.SafeIntent;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class GnssAndNetReceiver {
    private BroadcastReceiver gnssReceiver;
    private AtomicInteger networkCnt;
    private BroadcastReceiver networkReceiver;
    private final String TAG = "AvailabilityObserver";
    private boolean isFirstReceive = true;

    public GnssAndNetReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.location.MODE_CHANGED");
        this.gnssReceiver = new BroadcastReceiver() { // from class: com.huawei.location.lite.common.android.receiver.GnssAndNetReceiver.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (TextUtils.equals(new SafeIntent(intent).getAction(), "android.location.MODE_CHANGED")) {
                    GnssAndNetReceiver.this.notifyListeners();
                }
            }
        };
        ContextUtil.getContext().registerReceiver(this.gnssReceiver, intentFilter);
        LogConsole.i("AvailabilityObserver", "register gnss receiver ");
    }

    private void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        try {
            ContextUtil.getContext().unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            LogConsole.e("AvailabilityObserver", e.getMessage());
        }
    }

    public abstract void notifyListeners();

    public void registerNetworkObserve() {
        if (this.networkCnt == null) {
            this.networkCnt = new AtomicInteger(0);
        }
        this.networkCnt.incrementAndGet();
        LogConsole.d("AvailabilityObserver", "network observe cnt incrementAndGet:" + this.networkCnt.get());
        if (this.networkReceiver != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.networkReceiver = new BroadcastReceiver() { // from class: com.huawei.location.lite.common.android.receiver.GnssAndNetReceiver.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (TextUtils.equals(new SafeIntent(intent).getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
                    if (GnssAndNetReceiver.this.isFirstReceive) {
                        GnssAndNetReceiver.this.isFirstReceive = false;
                    } else {
                        GnssAndNetReceiver.this.notifyListeners();
                    }
                }
            }
        };
        ContextUtil.getContext().registerReceiver(this.networkReceiver, intentFilter);
        LogConsole.i("AvailabilityObserver", "register network receiver");
    }

    public void unRegisterAllObserve() {
        BroadcastReceiver broadcastReceiver = this.networkReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
            this.networkReceiver = null;
            LogConsole.i("AvailabilityObserver", "unregister network receiver");
        }
        BroadcastReceiver broadcastReceiver2 = this.gnssReceiver;
        if (broadcastReceiver2 != null) {
            unregisterReceiver(broadcastReceiver2);
            this.gnssReceiver = null;
            LogConsole.i("AvailabilityObserver", "unregister gnss receiver");
        }
    }

    public void unRegisterNetworkObserve() {
        AtomicInteger atomicInteger = this.networkCnt;
        if (atomicInteger == null || this.networkReceiver == null) {
            return;
        }
        atomicInteger.decrementAndGet();
        LogConsole.d("AvailabilityObserver", "network observe cnt decrementAndGet:" + this.networkCnt.get());
        if (this.networkCnt.get() <= 0) {
            unregisterReceiver(this.networkReceiver);
            this.isFirstReceive = true;
            this.networkReceiver = null;
            this.networkCnt = null;
            LogConsole.i("AvailabilityObserver", "unregister network receiver");
        }
    }
}
