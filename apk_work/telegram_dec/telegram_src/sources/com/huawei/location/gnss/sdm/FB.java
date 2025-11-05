package com.huawei.location.gnss.sdm;

import android.location.Location;
import android.os.Build;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.sdm.Sdm;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class FB {
    private Sdm Vw;
    private com.huawei.location.sdm.yn yn = null;

    interface Vw {
    }

    class yn implements com.huawei.location.sdm.yn {
        final /* synthetic */ Vw yn;

        yn(FB fb, Vw vw) {
            this.yn = vw;
        }

        @Override // com.huawei.location.sdm.yn
        public void onLocationChanged(Location location) {
            com.huawei.location.gnss.sdm.Vw.yn(((com.huawei.location.gnss.sdm.yn) this.yn).yn, location);
        }
    }

    FB() {
        this.Vw = null;
        if (Build.VERSION.SDK_INT >= 24) {
            this.Vw = new Sdm();
        }
    }

    void yn() {
        Sdm sdm;
        com.huawei.location.sdm.yn ynVar = this.yn;
        if (ynVar == null) {
            LogConsole.i("SdmWrapper", "no need stop");
            return;
        }
        if (Build.VERSION.SDK_INT < 24 || (sdm = this.Vw) == null) {
            LogConsole.e("SdmWrapper", "no sdm to stop");
            return;
        }
        sdm.remove(ynVar);
        this.yn = null;
        LogConsole.i("SdmWrapper", "sdm stop success");
    }

    void yn(Vw vw) {
        yn();
        Sdm sdm = this.Vw;
        if (sdm == null) {
            LogConsole.e("SdmWrapper", "no sdm to start");
            return;
        }
        yn ynVar = new yn(this, vw);
        this.yn = ynVar;
        sdm.request(ynVar);
        LogConsole.i("SdmWrapper", "sdm start success");
    }

    boolean yn(long j, float f) {
        Sdm sdm = this.Vw;
        if (sdm != null && Build.VERSION.SDK_INT >= 24) {
            return sdm.support(j, f);
        }
        return false;
    }
}
