package com.huawei.location.crowdsourcing.common.util;

import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.util.SafeBase64;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class FB {

    enum yn {
        DEFAULT_ALG("HmacSHA256");

        private final String FB;

        yn(String str) {
            this.FB = str;
        }

        public String yn() {
            return this.FB;
        }
    }

    public static String yn(String str, byte[] bArr) throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException {
        String str2;
        byte[] bArrDoFinal;
        byte[] bArrEncode;
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, yn.DEFAULT_ALG.yn());
        try {
            Mac mac = Mac.getInstance(secretKeySpec.getAlgorithm());
            try {
                mac.init(secretKeySpec);
                bArrDoFinal = mac.doFinal(str.getBytes(StandardCharsets.UTF_8));
            } catch (InvalidKeyException unused) {
                str2 = "InvalidKeyException";
                LogConsole.e("HmacUtil", str2);
                bArrDoFinal = null;
                if (bArrDoFinal == null) {
                    return null;
                }
                return new String(bArrEncode, StandardCharsets.UTF_8);
            }
        } catch (NoSuchAlgorithmException unused2) {
            str2 = "NoSuchAlgorithmException";
        }
        if (bArrDoFinal == null && (bArrEncode = SafeBase64.encode(bArrDoFinal, 2)) != null) {
            return new String(bArrEncode, StandardCharsets.UTF_8);
        }
        return null;
    }
}
