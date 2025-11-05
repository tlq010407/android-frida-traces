package com.huawei.location.lite.common.security;

import android.text.TextUtils;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.secure.android.common.encrypt.keystore.aes.AesGcmKS;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class yn implements Vw {
    yn() {
    }

    @Override // com.huawei.location.lite.common.security.Vw
    public String decrypt(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            LogConsole.e("AesSecurityCipher", "decrypt alias or content is null");
            return "";
        }
        try {
            return AesGcmKS.decrypt(str2, str);
        } catch (Exception unused) {
            LogConsole.e("AesSecurityCipher", "AesGcmKS decrypt failed", true);
            return "";
        }
    }

    @Override // com.huawei.location.lite.common.security.Vw
    public String encrypt(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            str3 = "encrypt alias or content is null";
        } else {
            if (str.length() <= 4096) {
                try {
                    return AesGcmKS.encrypt(str2, str);
                } catch (Exception unused) {
                    LogConsole.e("AesSecurityCipher", "AesGcmKS encrypt failed", true);
                    return "";
                }
            }
            str3 = "encrypt text is too long";
        }
        LogConsole.e("AesSecurityCipher", str3);
        return "";
    }
}
