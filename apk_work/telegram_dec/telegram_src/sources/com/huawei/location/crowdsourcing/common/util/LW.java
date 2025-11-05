package com.huawei.location.crowdsourcing.common.util;

import android.telephony.TelephonyManager;
import com.google.firebase.remoteconfig.internal.ConfigCacheClient$$ExternalSyntheticLambda1;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class LW {
    private static final byte[] yn = new byte[0];

    static class yn extends TelephonyManager.CellInfoCallback {
        yn() {
        }

        @Override // android.telephony.TelephonyManager.CellInfoCallback
        public void onCellInfo(List list) {
            synchronized (LW.yn) {
                LW.yn.notifyAll();
            }
        }
    }

    static void yn(TelephonyManager telephonyManager) {
        String str;
        String str2;
        yn ynVar = new yn();
        byte[] bArr = yn;
        synchronized (bArr) {
            try {
                telephonyManager.requestCellInfoUpdate(new ConfigCacheClient$$ExternalSyntheticLambda1(), ynVar);
                bArr.wait(1000L);
            } catch (InterruptedException unused) {
                str = "RefreshByCellInfoCallback";
                str2 = "Get cell sleep interrupted!";
                LogConsole.e(str, str2);
            } catch (Exception unused2) {
                str = "RefreshByCellInfoCallback";
                str2 = "Request cellInfoUpdate failed";
                LogConsole.e(str, str2);
            }
        }
    }
}
