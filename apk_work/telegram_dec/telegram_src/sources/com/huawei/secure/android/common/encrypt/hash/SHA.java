package com.huawei.secure.android.common.encrypt.hash;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.encrypt.utils.b;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class SHA {
    private static final String a = "SHA";
    private static final String[] d = {"SHA-256", "SHA-384", "SHA-512"};

    private static boolean a(String str) {
        for (String str2 : d) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static String sha256Encrypt(String str) {
        return shaEncrypt(str, "SHA-256");
    }

    public static String shaEncrypt(String str, String str2) throws UnsupportedEncodingException {
        String str3;
        String str4;
        byte[] bytes;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str3 = a;
            str4 = "content or algorithm is null.";
        } else {
            if (a(str2)) {
                try {
                    bytes = str.getBytes("UTF-8");
                } catch (UnsupportedEncodingException unused) {
                    bytes = new byte[0];
                    b.b(a, "Error in generate SHA UnsupportedEncodingException");
                }
                return HexUtil.byteArray2HexStr(shaEncryptByte(bytes, str2));
            }
            str3 = a;
            str4 = "algorithm is not safe or legal";
        }
        b.b(str3, str4);
        return "";
    }

    public static byte[] shaEncryptByte(byte[] bArr, String str) throws NoSuchAlgorithmException {
        String str2;
        String str3;
        if (bArr == null || TextUtils.isEmpty(str)) {
            str2 = a;
            str3 = "content or algorithm is null.";
        } else if (a(str)) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException unused) {
                str2 = a;
                str3 = "Error in generate SHA NoSuchAlgorithmException";
            }
        } else {
            str2 = a;
            str3 = "algorithm is not safe or legal";
        }
        b.b(str2, str3);
        return new byte[0];
    }

    public static boolean validateSHA256(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals(sha256Encrypt(str));
    }
}
