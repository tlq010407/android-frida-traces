package com.huawei.secure.android.common.encrypt.aes;

import android.os.Build;
import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.encrypt.utils.b;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class AesGcm {
    private static byte[] a(String str, byte[] bArr, byte[] bArr2) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "encrypt 5 content is null";
        } else if (bArr == null) {
            str2 = "encrypt 5 key is null";
        } else if (bArr.length < 16) {
            str2 = "encrypt 5 key lengh is not right";
        } else if (bArr2 == null) {
            str2 = "encrypt 5 iv is null";
        } else if (bArr2.length < 12) {
            str2 = "encrypt 5 iv lengh is not right";
        } else if (isBuildVersionHigherThan19()) {
            try {
                return encrypt(str.getBytes("UTF-8"), bArr, bArr2);
            } catch (UnsupportedEncodingException e) {
                str2 = "GCM encrypt data error" + e.getMessage();
            }
        } else {
            str2 = "encrypt 5 build version not higher than 19";
        }
        b.b("GCM", str2);
        return new byte[0];
    }

    private static byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length - 12];
        System.arraycopy(bArr, 12, bArr2, 0, bArr.length - 12);
        return bArr2;
    }

    private static byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[12];
        System.arraycopy(bArr, 0, bArr2, 0, 12);
        return bArr2;
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) {
        return decrypt(b(bArr), bArr2, c(bArr));
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String str;
        if (bArr == null) {
            str = "decrypt 6 content is null";
        } else if (bArr.length == 0) {
            str = "decrypt 6 content length is 0";
        } else if (bArr2 == null) {
            str = "decrypt 6 key is null";
        } else if (bArr2.length < 16) {
            str = "decrypt 6 key length is error";
        } else if (bArr3 == null) {
            str = "decrypt 6 iv is null";
        } else if (bArr3.length < 12) {
            str = "decrypt 6 iv length is error";
        } else if (isBuildVersionHigherThan19()) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(2, secretKeySpec, getGcmAlgorithmParams(bArr3));
                return cipher.doFinal(bArr);
            } catch (GeneralSecurityException e) {
                str = "GCM decrypt data exception: " + e.getMessage();
            }
        } else {
            str = "decrypt 6 build version not higher than 19";
        }
        b.b("GCM", str);
        return new byte[0];
    }

    public static String encrypt(String str, byte[] bArr) throws NoSuchAlgorithmException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "encrypt 2 content is null";
        } else if (bArr == null) {
            str2 = "encrypt 2 key is null";
        } else if (bArr.length < 16) {
            str2 = "encrypt 2 key lengh is not right";
        } else {
            if (isBuildVersionHigherThan19()) {
                byte[] bArrGenerateSecureRandom = EncryptUtil.generateSecureRandom(12);
                byte[] bArrA = a(str, bArr, bArrGenerateSecureRandom);
                if (bArrA == null || bArrA.length == 0) {
                    return "";
                }
                return HexUtil.byteArray2HexStr(bArrGenerateSecureRandom) + HexUtil.byteArray2HexStr(bArrA);
            }
            str2 = "encrypt 2 build version not higher than 19";
        }
        b.b("GCM", str2);
        return "";
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String str;
        if (bArr == null) {
            str = "encrypt 6 content is null";
        } else if (bArr.length == 0) {
            str = "encrypt 6 content length is 0";
        } else if (bArr2 == null) {
            str = "encrypt 6 key is null";
        } else if (bArr2.length < 16) {
            str = "encrypt 6 key length is error";
        } else if (bArr3 == null) {
            str = "encrypt 6 iv is null";
        } else if (bArr3.length < 12) {
            str = "encrypt 6 iv length is error";
        } else if (isBuildVersionHigherThan19()) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, secretKeySpec, getGcmAlgorithmParams(bArr3));
                return cipher.doFinal(bArr);
            } catch (GeneralSecurityException e) {
                str = "GCM encrypt data error" + e.getMessage();
            }
        } else {
            str = "encrypt 6 build version not higher than 19";
        }
        b.b("GCM", str);
        return new byte[0];
    }

    public static AlgorithmParameterSpec getGcmAlgorithmParams(byte[] bArr) {
        return Build.VERSION.SDK_INT < 21 ? new IvParameterSpec(bArr) : new GCMParameterSpec(128, bArr);
    }

    public static boolean isBuildVersionHigherThan19() {
        return true;
    }
}
