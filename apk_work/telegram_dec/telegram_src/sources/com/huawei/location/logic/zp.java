package com.huawei.location.logic;

import com.huawei.hms.location.entity.activity.ActivityTransitionRequest;
import com.huawei.location.activity.RiemannSoftArService;
import com.huawei.location.base.activity.AbstractARServiceManager;
import com.huawei.location.base.activity.ISoftARManager;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.base.activity.callback.ATCallback;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class zp implements ISoftARManager {
    private static volatile zp Vw;
    private static final byte[] yn = new byte[0];
    private AbstractARServiceManager FB = RiemannSoftArService.getInstance();

    private zp() {
    }

    public static zp yn() {
        if (Vw == null) {
            synchronized (yn) {
                try {
                    if (Vw == null) {
                        Vw = new zp();
                    }
                } finally {
                }
            }
        }
        return Vw;
    }

    @Override // com.huawei.location.base.activity.ISoftARManager
    public void removeActivityTransitionUpdates(ATCallback aTCallback) {
        LogConsole.i("SoftARManagerImpl", "removeActivityTransitionUpdates");
        try {
            this.FB.removeActivityTransitionUpdates(aTCallback, null);
        } catch (Exception unused) {
            LogConsole.e("SoftARManagerImpl", "removeAT exception", true);
        }
    }

    @Override // com.huawei.location.base.activity.ISoftARManager
    public void removeActivityUpdates(ARCallback aRCallback) {
        LogConsole.i("SoftARManagerImpl", "removeActivityUpdates");
        try {
            this.FB.removeActivityUpdates(aRCallback, null);
        } catch (Exception unused) {
            LogConsole.e("SoftARManagerImpl", "removeAR exception", true);
        }
    }

    @Override // com.huawei.location.base.activity.ISoftARManager
    public void requestActivityTransitionUpdates(List list, ATCallback aTCallback) {
        LogConsole.i("SoftARManagerImpl", "requestActivityTransitionUpdates");
        ActivityTransitionRequest activityTransitionRequest = new ActivityTransitionRequest();
        activityTransitionRequest.setTransitions(list);
        try {
            this.FB.requestActivityTransitionUpdates(activityTransitionRequest, aTCallback, null);
        } catch (Exception unused) {
            LogConsole.e("SoftARManagerImpl", "requestAT exception", true);
        }
    }

    @Override // com.huawei.location.base.activity.ISoftARManager
    public void requestActivityUpdates(long j, ARCallback aRCallback) {
        LogConsole.i("SoftARManagerImpl", "requestActivityUpdates");
        if (j <= 0) {
            j = 30000;
        }
        try {
            this.FB.requestActivityUpdates(j, aRCallback, null);
        } catch (Exception unused) {
            LogConsole.e("SoftARManagerImpl", "requestAR exception", true);
        }
    }
}
