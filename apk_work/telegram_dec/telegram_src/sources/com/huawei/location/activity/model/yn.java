package com.huawei.location.activity.model;

import com.huawei.hms.location.entity.activity.ActivityRecognitionResult;
import com.huawei.hms.location.entity.activity.DetectedActivity;
import com.huawei.location.activity.RiemannSoftArService;
import com.huawei.location.base.activity.callback.ARCallback;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    public List yn;
    private int Vw = -2;
    private int FB = -2;
    private int LW = -2;
    private int dC = 0;
    private int E5 = 0;
    private int d2 = 0;
    private int zp = 0;
    private Vw ut = new Vw();

    /* JADX INFO: Access modifiers changed from: private */
    public class Vw implements ARCallback {
        private Vw() {
        }

        @Override // com.huawei.location.base.activity.callback.ARCallback
        public void onActivityRecognition(ActivityRecognitionResult activityRecognitionResult) {
            yn.this.yn = activityRecognitionResult.getProbableActivities();
            yn ynVar = yn.this;
            List list = ynVar.yn;
            if (list == null) {
                LogConsole.e("ATProvider", "detectedActivities is null.");
                return;
            }
            int type = -1;
            int confidence = -1;
            for (int i = 0; i < list.size(); i++) {
                if (((DetectedActivity) list.get(i)).getType() != 2 && ((DetectedActivity) list.get(i)).getConfidence() > confidence) {
                    type = ((DetectedActivity) list.get(i)).getType();
                    confidence = ((DetectedActivity) list.get(i)).getConfidence();
                }
            }
            yn.yn(ynVar, type);
        }
    }

    private void yn(int i, int i2) {
        LogConsole.i("ATProvider", "report ！  statu is : " + this.Vw + " inOrOut is : " + i2);
        RiemannSoftArService.getInstance().onStatusChanged(i, i2);
    }

    static void yn(yn ynVar, int i) {
        ynVar.getClass();
        LogConsole.i("ATProvider", " GET NEW RESULT : " + i + " currentStatus is : " + ynVar.Vw);
        ynVar.FB = i;
        int i2 = ynVar.Vw;
        if (i2 == -2) {
            ynVar.Vw = i;
        } else {
            if (i == i2) {
                if (ynVar.dC == 0) {
                    return;
                }
                int i3 = ynVar.zp + 1;
                ynVar.zp = i3;
                if (i3 >= 10) {
                    ynVar.dC = 0;
                    ynVar.E5 = 0;
                    ynVar.d2 = 0;
                    ynVar.zp = 0;
                    return;
                }
                return;
            }
            int i4 = ynVar.E5 + 1;
            ynVar.E5 = i4;
            ynVar.dC = 1;
            int i5 = ynVar.LW;
            if (i5 == -2 || i5 == -1) {
                ynVar.LW = i;
                return;
            }
            if (i4 == 10 && i2 != -1) {
                ynVar.yn(i2, 2);
                ynVar.Vw = -1;
            }
            int i6 = ynVar.FB;
            if (i6 == ynVar.LW) {
                ynVar.d2++;
            } else {
                ynVar.LW = i6;
                ynVar.d2 = 1;
            }
            if (ynVar.d2 < 10) {
                return;
            }
            ynVar.dC = 0;
            ynVar.E5 = 0;
            ynVar.d2 = 0;
            ynVar.zp = 0;
            i = ynVar.LW;
            ynVar.Vw = i;
            ynVar.LW = -1;
        }
        ynVar.yn(i, 1);
    }

    public void Vw() {
        this.Vw = -2;
        this.FB = -2;
        this.LW = -2;
        this.dC = 0;
        this.E5 = 0;
        this.d2 = 0;
        this.zp = 0;
    }

    public Vw yn() {
        return this.ut;
    }
}
