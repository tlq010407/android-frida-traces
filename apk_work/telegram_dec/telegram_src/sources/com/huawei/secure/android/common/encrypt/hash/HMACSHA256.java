package com.huawei.secure.android.common.encrypt.hash;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.encrypt.utils.b;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class HMACSHA256 {
    private static final String a = "HMACSHA256";

    public static byte[] hmacEncrypt(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException, InvalidKeyException {
        String str;
        String str2;
        if (bArr == null || bArr2 == null) {
            str = a;
            str2 = "content or key is null.";
        } else if (bArr2.length < 32) {
            str = a;
            str2 = "hmac key length is not right";
        } else {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "HmacSHA256");
                Mac mac = Mac.getInstance(secretKeySpec.getAlgorithm());
                mac.init(secretKeySpec);
                return mac.doFinal(bArr);
            } catch (InvalidKeyException | NoSuchAlgorithmException e) {
                b.b(a, "hmacsha256 encrypt exception" + e.getMessage());
            }
        }
        b.b(str, str2);
        return new byte[0];
    }

    public static String hmacSHA256Encrypt(String str, byte[] bArr) throws UnsupportedEncodingException {
        byte[] bytes;
        if (TextUtils.isEmpty(str) || bArr == null) {
            return "";
        }
        if (bArr.length < 32) {
            b.b(a, "hmac key length is not right");
            return "";
        }
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            b.b(a, "hmacsha256 encrypt exception" + e.getMessage());
            bytes = new byte[0];
        }
        return HexUtil.byteArray2HexStr(hmacEncrypt(bytes, bArr));
    }
}
