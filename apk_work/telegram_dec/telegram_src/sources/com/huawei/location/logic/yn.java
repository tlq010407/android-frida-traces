package com.huawei.location.logic;

import android.os.Handler;
import android.os.HandlerThread;
import com.huawei.hms.location.entity.activity.ActivityTransitionRequest;
import com.huawei.location.activity.RiemannSoftArService;
import com.huawei.location.base.activity.AbstractARServiceManager;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.base.activity.callback.ATCallback;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.base.activity.entity.ClientInfo;
import com.huawei.location.lite.common.android.receiver.PackageOperateCallback;
import com.huawei.location.lite.common.android.receiver.PackageReceiver;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.ROMUtil;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private static volatile yn Vw;
    private static final byte[] yn = new byte[0];
    private Handler LW;
    private HandlerThread dC;
    private Map E5 = new ConcurrentHashMap();
    private PackageOperateCallback d2 = new C0027yn();
    private AbstractARServiceManager FB = RiemannSoftArService.getInstance();

    /* renamed from: com.huawei.location.logic.yn$yn, reason: collision with other inner class name */
    class C0027yn implements PackageOperateCallback {

        /* renamed from: com.huawei.location.logic.yn$yn$yn, reason: collision with other inner class name */
        class RunnableC0028yn implements Runnable {
            final /* synthetic */ String yn;

            RunnableC0028yn(String str) {
                this.yn = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    LogConsole.i("ActivityRecognitionClientImpl", "uninstall:" + this.yn + " remove AR and AT request start", true);
                    yn.this.FB.getRecognitionRequestMapping().removeActivityUpdatesMappingInfoByPackageName(this.yn);
                    yn.this.FB.getTransitionMappingManager().removeActivityTransitionMappingInfoByPackageName(this.yn);
                    yn.this.FB.scheduleTimer();
                    yn.this.E5.remove(this.yn);
                    yn.this.LW.getLooper().quitSafely();
                    LogConsole.i("ActivityRecognitionClientImpl", "uninstall:" + this.yn + " remove AR and AT request success!");
                } catch (Exception unused) {
                    LogConsole.e("ActivityRecognitionClientImpl", "uninstall:" + this.yn + " remove AR and AT exception", true);
                }
            }
        }

        C0027yn() {
        }

        @Override // com.huawei.location.lite.common.android.receiver.PackageOperateCallback
        public void onAdded(String str) {
            LogConsole.i("ActivityRecognitionClientImpl", "call onAdded enter:" + str);
        }

        @Override // com.huawei.location.lite.common.android.receiver.PackageOperateCallback
        public void onRemoved(String str) {
            LogConsole.i("ActivityRecognitionClientImpl", "call onRemoved:" + str, true);
            RunnableC0028yn runnableC0028yn = new RunnableC0028yn(str);
            yn.this.E5.put(str, runnableC0028yn);
            if (yn.this.LW == null || yn.this.dC == null || !yn.this.dC.isAlive()) {
                yn.dC(yn.this);
            }
            yn.this.LW.postDelayed(runnableC0028yn, UcsLib.NATIVE_VERIFY_SIGNATURE_FAIL);
            LogConsole.i("ActivityRecognitionClientImpl", "call onRemoved end:" + str);
        }

        @Override // com.huawei.location.lite.common.android.receiver.PackageOperateCallback
        public void onReplaced(String str) {
            LogConsole.i("ActivityRecognitionClientImpl", "call onReplaced enter:" + str, true);
            Runnable runnable = (Runnable) yn.this.E5.get(str);
            if (runnable == null) {
                LogConsole.i("ActivityRecognitionClientImpl", "removeThread had deleted or executed", true);
                return;
            }
            yn.this.LW.removeCallbacks(runnable);
            LogConsole.i("ActivityRecognitionClientImpl", "call onReplaced end:" + str + ":cancle removeThread success");
        }
    }

    private yn() {
        PackageReceiver.getInstance().registerCallback(this.d2);
    }

    static void dC(yn ynVar) {
        ynVar.getClass();
        HandlerThread handlerThread = new HandlerThread("Location-ARCImp");
        ynVar.dC = handlerThread;
        handlerThread.start();
        ynVar.LW = new Handler(ynVar.dC.getLooper());
    }

    public static yn yn() {
        if (Vw == null) {
            synchronized (yn) {
                try {
                    if (Vw == null) {
                        Vw = new yn();
                    }
                } finally {
                }
            }
        }
        return Vw;
    }

    private List yn(ClientInfo clientInfo) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(clientInfo.getPackageName());
        arrayList.add(clientInfo.getTransactionID());
        arrayList.add("ARService is not support");
        return arrayList;
    }

    public void yn(long j, ARCallback aRCallback, ClientInfo clientInfo) {
        if (!ROMUtil.isHuaweiPlatformDevice() || ROMUtil.getEmuiVersionCode() >= 17) {
            this.FB.requestActivityUpdates(j, aRCallback, clientInfo);
            return;
        }
        LogConsole.e("ActivityRecognitionClientImpl", yn(clientInfo), true);
        throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
    }

    public void yn(ActivityTransitionRequest activityTransitionRequest, ATCallback aTCallback, ClientInfo clientInfo) {
        if (!ROMUtil.isHuaweiPlatformDevice() || ROMUtil.getEmuiVersionCode() >= 17) {
            this.FB.requestActivityTransitionUpdates(activityTransitionRequest, aTCallback, clientInfo);
            return;
        }
        LogConsole.e("ActivityRecognitionClientImpl", yn(clientInfo), true);
        throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
    }

    public void yn(ARCallback aRCallback, ClientInfo clientInfo) {
        if (!ROMUtil.isHuaweiPlatformDevice() || ROMUtil.getEmuiVersionCode() >= 17) {
            this.FB.removeActivityUpdates(aRCallback, clientInfo);
            return;
        }
        LogConsole.e("ActivityRecognitionClientImpl", yn(clientInfo), true);
        throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
    }

    public void yn(ATCallback aTCallback, ClientInfo clientInfo) {
        if (!ROMUtil.isHuaweiPlatformDevice() || ROMUtil.getEmuiVersionCode() >= 17) {
            this.FB.removeActivityTransitionUpdates(aTCallback, clientInfo);
            return;
        }
        LogConsole.e("ActivityRecognitionClientImpl", yn(clientInfo), true);
        throw new LocationServiceException(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE, ActivityErrorCode.getErrorCodeMessage(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE) + ":end request.");
    }
}
