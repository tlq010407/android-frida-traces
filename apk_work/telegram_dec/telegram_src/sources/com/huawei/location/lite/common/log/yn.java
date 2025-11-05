package com.huawei.location.lite.common.log;

import android.util.Log;
import java.text.Normalizer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private FB yn(int i, String str, String str2, Throwable th) {
        FB fb = new FB(i, "LITE_SDK-" + str);
        fb.yn(str2);
        fb.yn(th);
        return fb;
    }

    private String yn(String str) {
        return str != null ? Normalizer.normalize(str, Normalizer.Form.NFKC).replace("\\n", "").replace("\\r", "") : "";
    }

    public void yn(int i, String str, String str2) {
        FB fbYn = yn(i, str, str2, null);
        Log.println(i, str, yn(fbYn.Vw() + fbYn.yn()));
    }
}
