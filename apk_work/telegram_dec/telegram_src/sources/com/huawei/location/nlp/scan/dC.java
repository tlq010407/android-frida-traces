package com.huawei.location.nlp.scan;

import android.text.TextUtils;
import com.huawei.location.lite.common.config.ConfigManager;
import com.huawei.location.lite.common.log.LogConsole;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class dC {
    private yn yn;

    public dC(com.huawei.location.nlp.api.Vw vw) throws NumberFormatException {
        yn e5;
        int iYn = yn();
        if (iYn == 0) {
            e5 = new E5(vw);
        } else if (iYn == 1) {
            e5 = new com.huawei.location.nlp.scan.wifi.yn(vw);
        } else {
            if (iYn != 2) {
                this.yn = new Vw();
                return;
            }
            e5 = new com.huawei.location.nlp.scan.cell.Vw(vw);
        }
        this.yn = e5;
    }

    public void FB() {
        this.yn.Vw();
    }

    public void Vw() {
        this.yn.yn();
    }

    public int yn() throws NumberFormatException {
        int i;
        String config = ConfigManager.getInstance().getConfig("location", "geo_position_type");
        LogConsole.i("ScanTask", "getConfig, model is " + config);
        if (TextUtils.isEmpty(config)) {
            i = 0;
        } else {
            try {
                i = Integer.parseInt(config);
            } catch (NumberFormatException unused) {
                LogConsole.e("ScanTask", "scan model parse fail, NumberFormatException");
            }
        }
        LogConsole.i("ScanTask", "final model is " + i);
        return i;
    }

    public void yn(long j) {
        this.yn.yn(j);
    }
}
