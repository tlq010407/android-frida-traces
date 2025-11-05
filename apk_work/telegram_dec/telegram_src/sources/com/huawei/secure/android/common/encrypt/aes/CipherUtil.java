package com.huawei.secure.android.common.encrypt.aes;

import com.huawei.secure.android.common.encrypt.utils.b;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class CipherUtil {
    private static Cipher a(byte[] bArr, byte[] bArr2, int i, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String str2;
        if (bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 12 || !AesGcm.isBuildVersionHigherThan19()) {
            str2 = "gcm encrypt param is not right";
        } else {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                Cipher cipher = Cipher.getInstance(str);
                cipher.init(i, secretKeySpec, "AES/GCM/NoPadding".equals(str) ? AesGcm.getGcmAlgorithmParams(bArr2) : new IvParameterSpec(bArr2));
                return cipher;
            } catch (GeneralSecurityException e) {
                str2 = "GCM encrypt data error" + e.getMessage();
            }
        }
        b.b("CipherUtil", str2);
        return null;
    }

    private static Cipher b(byte[] bArr, byte[] bArr2, int i) {
        return a(bArr, bArr2, i, "AES/GCM/NoPadding");
    }

    public static Cipher getAesGcmEncryptCipher(byte[] bArr, byte[] bArr2) {
        return b(bArr, bArr2, 1);
    }
}
