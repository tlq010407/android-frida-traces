package com.huawei.location.lite.common.security;

import android.text.TextUtils;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.LoadSoUtil;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import java.nio.charset.StandardCharsets;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class OpensslSm4Security implements Vw {
    public static native byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    public static native byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3);

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
    @Override // com.huawei.location.lite.common.security.Vw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String decrypt(String str, String str2) {
        String str3;
        if (!LoadSoUtil.loadLocalSo("libOpensslSm4Security.so")) {
            LogConsole.d("OpensslSm4Security", "load openssl sm4 plugin fail");
            return "";
        }
        if (TextUtils.isEmpty(str)) {
            LogConsole.e("OpensslSm4Security", "gcm decrypt param is not right");
            return "";
        }
        if (TextUtils.isEmpty(str2) || str2.length() != 32) {
            LogConsole.e("OpensslSm4Security", "gcm decrypt key is not right");
            return "";
        }
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length < 2) {
            LogConsole.e("OpensslSm4Security", "gcm decrypt key is not right");
            return "";
        }
        String str4 = strArrSplit[0];
        if (TextUtils.isEmpty(str4) || str4.length() != 24) {
            str3 = "gcm decrypt iv is not right";
        } else {
            String str5 = strArrSplit[1];
            if (TextUtils.isEmpty(str5) || str5.length() <= 32) {
                str3 = "gcm cipherAndTag length is not right";
            } else {
                String strSubstring = str5.substring(0, str5.length() - 32);
                if (TextUtils.isEmpty(strSubstring) || strSubstring.length() % 2 != 0) {
                    str3 = "gcm decrypt tag is not right";
                } else {
                    String strSubstring2 = str5.substring(str5.length() - 32);
                    if (!TextUtils.isEmpty(strSubstring2) && strSubstring2.length() == 32) {
                        String str6 = new String(decrypt(HexUtil.hexStr2ByteArray(strSubstring), HexUtil.hexStr2ByteArray(str2), HexUtil.hexStr2ByteArray(str4), HexUtil.hexStr2ByteArray(strSubstring2)), StandardCharsets.UTF_8);
                        if (!TextUtils.isEmpty(str6)) {
                            return str6;
                        }
                        str3 = "gcm decrypt result is not right";
                    }
                }
            }
        }
        LogConsole.e("OpensslSm4Security", str3);
        return "";
    }

    @Override // com.huawei.location.lite.common.security.Vw
    public String encrypt(String str, String str2) {
        if (!LoadSoUtil.loadLocalSo("libOpensslSm4Security.so")) {
            LogConsole.d("OpensslSm4Security", "load openssl sm4 plugin fail");
            return "";
        }
        if (TextUtils.isEmpty(str)) {
            LogConsole.e("OpensslSm4Security", "gcm encrypt param is not right");
            return "";
        }
        if (TextUtils.isEmpty(str2) || str2.length() != 32) {
            LogConsole.e("OpensslSm4Security", "gcm encrypt key is not right");
            return "";
        }
        String strGenerateSecureRandomStr = EncryptUtil.generateSecureRandomStr(12);
        if (TextUtils.isEmpty(strGenerateSecureRandomStr) || strGenerateSecureRandomStr.length() != 24) {
            LogConsole.e("OpensslSm4Security", "gcm encrypt iv is not right");
            return "";
        }
        String strByteArray2HexStr = HexUtil.byteArray2HexStr(encrypt(StringUtils.getBytes(str), HexUtil.hexStr2ByteArray(str2), HexUtil.hexStr2ByteArray(strGenerateSecureRandomStr)));
        if (TextUtils.isEmpty(strByteArray2HexStr) || strByteArray2HexStr.length() <= 32) {
            LogConsole.e("OpensslSm4Security", "gcm encrypt result is not right");
            return "";
        }
        return strGenerateSecureRandomStr + ":" + strByteArray2HexStr;
    }
}
