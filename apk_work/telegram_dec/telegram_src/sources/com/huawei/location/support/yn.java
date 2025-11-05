package com.huawei.location.support;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.huawei.hms.location.entity.activity.ActivityRecognitionResult;
import com.huawei.hms.location.entity.activity.DetectedActivity;
import com.huawei.location.base.activity.ISoftARManager;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.android.receiver.ScreenStatusBroadcastReceiver;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.PermissionUtil;
import com.huawei.location.router.LocationNaming;
import com.huawei.location.router.RouterTaskHandler;
import com.huawei.location.router.entity.IRouterResponse;
import com.huawei.location.router.entity.RouterRequest;
import com.huawei.location.sdm.Config;
import com.huawei.location.tiles.store.dC;
import java.io.IOException;
import java.util.UUID;
import org.json.JSONException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private Vw[] E5;
    private boolean FB;
    private Config G3;
    private Vw[] LW;
    private dC Ot;
    private Vw[] d2;
    private Vw[] dC;
    private FB oc;
    private com.huawei.location.ephemeris.yn ut;
    private ISoftARManager zp;
    private int yn = -1;
    private long Vw = 0;
    private ARCallback Yx = new C0035yn();

    class FB extends Handler {
        FB(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 11) {
                yn.this.yn();
            }
        }
    }

    static class Vw {
        int FB;
        boolean Vw = true;
        boolean yn;

        Vw() {
        }
    }

    /* renamed from: com.huawei.location.support.yn$yn, reason: collision with other inner class name */
    class C0035yn implements ARCallback {
        C0035yn() {
        }

        @Override // com.huawei.location.base.activity.callback.ARCallback
        public void onActivityRecognition(ActivityRecognitionResult activityRecognitionResult) {
            LogConsole.i("SDMSupportManager", "onActivityRecognition");
            if (activityRecognitionResult == null || activityRecognitionResult.getProbableActivities() == null || activityRecognitionResult.getProbableActivities().size() <= 0) {
                return;
            }
            DetectedActivity detectedActivity = activityRecognitionResult.getProbableActivities().get(0);
            if (detectedActivity != null) {
                yn.this.yn = detectedActivity.getType();
            }
            if (yn.this.yn != 2 || activityRecognitionResult.getProbableActivities().size() <= 1) {
                return;
            }
            DetectedActivity detectedActivity2 = activityRecognitionResult.getProbableActivities().get(1);
            if (detectedActivity != null) {
                yn.this.yn = detectedActivity2.getType();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void yn() {
        IRouterResponse iRouterResponseExecute = RouterTaskHandler.getInstance().execute(new RouterRequest(LocationNaming.REQUEST_ADAPTER_SDM, "", UUID.randomUUID().toString(), null));
        if (iRouterResponseExecute instanceof ISoftARManager) {
            this.zp = (ISoftARManager) iRouterResponseExecute;
        }
        ISoftARManager iSoftARManager = this.zp;
        if (iSoftARManager != null) {
            iSoftARManager.requestActivityUpdates(1000L, this.Yx);
        }
        this.LW = new Vw[2];
        this.dC = new Vw[2];
        this.E5 = new Vw[2];
        this.d2 = new Vw[2];
        this.Ot = new dC(25, 30);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean yn(Vw[] vwArr, boolean z) {
        int iVw;
        int iYn;
        if (vwArr == null || vwArr.length < 2) {
            yn();
            return false;
        }
        Vw vw = vwArr[0];
        if (vw == null) {
            LogConsole.i("SDMSupportManager", "sdm record status[0] first time");
            Vw vw2 = new Vw();
            vwArr[0] = vw2;
            vw2.yn = z;
            vw2.FB++;
            return z;
        }
        if (vw.yn != z) {
            Vw vw3 = vwArr[1];
            if (vw3 == null) {
                LogConsole.i("SDMSupportManager", "sdm record status[1] first time");
                Vw vw4 = new Vw();
                vwArr[1] = vw4;
                vw4.yn = z;
                vw4.FB++;
            } else {
                vw3.FB++;
                Config config = this.G3;
                boolean z2 = z | vw.Vw;
                if (config != null) {
                    iYn = config.yn();
                    iVw = this.G3.Vw();
                    if (z2) {
                        iVw = iYn;
                    }
                    if (vwArr[1].FB >= iVw) {
                        LogConsole.i("SDMSupportManager", "sdm status changed");
                        Vw vw5 = vwArr[1];
                        vwArr[0] = vw5;
                        vw5.Vw = false;
                        vwArr[1] = null;
                    }
                } else if (z2) {
                    iYn = 3;
                    iVw = iYn;
                    if (vwArr[1].FB >= iVw) {
                    }
                } else {
                    iVw = 10;
                    if (vwArr[1].FB >= iVw) {
                    }
                }
            }
        } else {
            vw.FB++;
            if (vwArr[1] != null) {
                LogConsole.i("SDMSupportManager", "sdm destroy status[1]");
                vwArr[1] = null;
            }
        }
        return vwArr[0].yn;
    }

    public void Vw() {
        ISoftARManager iSoftARManager = this.zp;
        if (iSoftARManager != null) {
            iSoftARManager.removeActivityUpdates(this.Yx);
            this.yn = -1;
        }
        this.oc = null;
    }

    public void yn(Looper looper, com.huawei.location.ephemeris.yn ynVar, Config config) {
        this.G3 = config;
        this.ut = ynVar;
        if (this.oc == null) {
            this.oc = new FB(looper);
        }
        if (this.oc.hasMessages(11)) {
            LogConsole.i("SDMSupportManager", "init failed,caz has msg");
        } else {
            this.oc.sendEmptyMessage(11);
        }
    }

    public boolean yn(double d, double d2, float f) throws JSONException, IOException {
        String str;
        boolean z;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.Vw > 1000) {
            this.Vw = jCurrentTimeMillis;
            boolean zYn = yn(this.LW, ScreenStatusBroadcastReceiver.isScreenOn());
            boolean zYn2 = yn(this.dC, !PermissionUtil.isAppIsInBackground(ContextUtil.getContext().getPackageName()));
            Vw[] vwArr = this.E5;
            LogConsole.i("SDMSupportManager", "currentARType: " + this.yn);
            int i = this.yn;
            if (i == 3 || i == 7) {
                Config config = this.G3;
                z = config == null || f < ((float) config.dC());
            } else {
                if (this.G3 != null && f < r4.dC()) {
                    LogConsole.i("SDMSupportManager", "speed: " + f);
                }
            }
            boolean zYn3 = yn(vwArr, z);
            Vw[] vwArr2 = this.d2;
            dC dCVar = this.Ot;
            boolean zYn4 = yn(vwArr2, dCVar != null ? dCVar.yn(d, d2) : false);
            boolean z2 = zYn && zYn2 && zYn3 && zYn4;
            this.FB = z2;
            if (z2) {
                com.huawei.location.ephemeris.yn ynVar = this.ut;
                if (ynVar == null) {
                    return false;
                }
                boolean zYn5 = ynVar.yn();
                this.FB = zYn5;
                str = zYn5 ? "sdm is ok" : "sdm is bad caz EphModule not available";
            } else {
                str = "sdm is bad caz after smooth:   screen[" + zYn + "]; isForeground[" + zYn2 + "]; ar[" + zYn3 + "]; tile[" + zYn4 + "]";
            }
        } else {
            str = "sdm check time support: " + this.FB;
        }
        LogConsole.i("SDMSupportManager", str);
        return this.FB;
    }
}
