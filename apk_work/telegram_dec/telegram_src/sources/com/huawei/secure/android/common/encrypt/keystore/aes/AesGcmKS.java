package com.huawei.secure.android.common.encrypt.keystore.aes;

import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.encrypt.utils.b;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class AesGcmKS {
    private static Map g = new HashMap();

    private static SecretKey a(String str) throws NoSuchAlgorithmException, UnrecoverableKeyException, IOException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        StringBuilder sb;
        String str2;
        b.c("GCMKS", "load key");
        SecretKey secretKeyGenerateKey = null;
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            Key key = keyStore.getKey(str, null);
            if (key instanceof SecretKey) {
                secretKeyGenerateKey = (SecretKey) key;
            } else {
                b.c("GCMKS", "generate key");
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build());
                secretKeyGenerateKey = keyGenerator.generateKey();
            }
        } catch (IOException e) {
            e = e;
            sb = new StringBuilder();
            str2 = "IOException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (InvalidAlgorithmParameterException e2) {
            e = e2;
            sb = new StringBuilder();
            str2 = "InvalidAlgorithmParameterException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (KeyStoreException e3) {
            e = e3;
            sb = new StringBuilder();
            str2 = "KeyStoreException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (NoSuchAlgorithmException e4) {
            e = e4;
            sb = new StringBuilder();
            str2 = "NoSuchAlgorithmException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (NoSuchProviderException e5) {
            e = e5;
            sb = new StringBuilder();
            str2 = "NoSuchProviderException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (UnrecoverableKeyException e6) {
            e = e6;
            sb = new StringBuilder();
            str2 = "UnrecoverableKeyException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (CertificateException e7) {
            e = e7;
            sb = new StringBuilder();
            str2 = "CertificateException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        } catch (Exception e8) {
            e = e8;
            sb = new StringBuilder();
            str2 = "Exception: ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("GCMKS", sb.toString());
            g.put(str, secretKeyGenerateKey);
            return secretKeyGenerateKey;
        }
        g.put(str, secretKeyGenerateKey);
        return secretKeyGenerateKey;
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 23;
    }

    private static SecretKey b(String str) throws NoSuchAlgorithmException, UnrecoverableKeyException, IOException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (g.get(str) == null) {
            a(str);
        }
        return (SecretKey) g.get(str);
    }

    public static String decrypt(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str3 = "alias or encrypt content is null";
        } else {
            try {
                return new String(decrypt(str, HexUtil.hexStr2ByteArray(str2)), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                str3 = "decrypt: UnsupportedEncodingException : " + e.getMessage();
            }
        }
        b.b("GCMKS", str3);
        return "";
    }

    public static byte[] decrypt(String str, byte[] bArr) {
        String str2;
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            str2 = "alias or encrypt content is null";
        } else if (!a()) {
            str2 = "sdk version is too low";
        } else {
            if (bArr.length > 12) {
                return decrypt(b(str), bArr);
            }
            str2 = "Decrypt source data is invalid.";
        }
        b.b("GCMKS", str2);
        return bArr2;
    }

    public static byte[] decrypt(SecretKey secretKey, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        StringBuilder sb;
        String str;
        String str2;
        byte[] bArr2 = new byte[0];
        if (secretKey == null) {
            str2 = "Decrypt secret key is null";
        } else if (bArr == null) {
            str2 = "content is null";
        } else if (!a()) {
            str2 = "sdk version is too low";
        } else {
            if (bArr.length > 12) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, 12);
                try {
                    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                    cipher.init(2, secretKey, new GCMParameterSpec(128, bArrCopyOf));
                    return cipher.doFinal(bArr, 12, bArr.length - 12);
                } catch (InvalidAlgorithmParameterException e) {
                    e = e;
                    sb = new StringBuilder();
                    str = "InvalidAlgorithmParameterException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (InvalidKeyException e2) {
                    e = e2;
                    sb = new StringBuilder();
                    str = "InvalidKeyException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (NoSuchAlgorithmException e3) {
                    e = e3;
                    sb = new StringBuilder();
                    str = "NoSuchAlgorithmException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (BadPaddingException e4) {
                    e = e4;
                    sb = new StringBuilder();
                    str = "BadPaddingException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (IllegalBlockSizeException e5) {
                    e = e5;
                    sb = new StringBuilder();
                    str = "IllegalBlockSizeException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (NoSuchPaddingException e6) {
                    e = e6;
                    sb = new StringBuilder();
                    str = "NoSuchPaddingException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (Exception e7) {
                    e = e7;
                    sb = new StringBuilder();
                    str = "Exception: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                }
            }
            str2 = "Decrypt source data is invalid.";
        }
        b.b("GCMKS", str2);
        return bArr2;
    }

    public static String encrypt(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str3 = "alias or encrypt content is null";
        } else {
            try {
                return HexUtil.byteArray2HexStr(encrypt(str, str2.getBytes("UTF-8")));
            } catch (UnsupportedEncodingException e) {
                str3 = "encrypt: UnsupportedEncodingException : " + e.getMessage();
            }
        }
        b.b("GCMKS", str3);
        return "";
    }

    public static byte[] encrypt(String str, byte[] bArr) {
        String str2;
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            str2 = "alias or encrypt content is null";
        } else {
            if (a()) {
                return encrypt(b(str), bArr);
            }
            str2 = "sdk version is too low";
        }
        b.b("GCMKS", str2);
        return bArr2;
    }

    public static byte[] encrypt(SecretKey secretKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        StringBuilder sb;
        String str;
        String str2;
        byte[] bArr2 = new byte[0];
        if (bArr == null) {
            str2 = "content is null";
        } else if (secretKey == null) {
            str2 = "secret key is null";
        } else {
            if (a()) {
                try {
                    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                    cipher.init(1, secretKey);
                    byte[] bArrDoFinal = cipher.doFinal(bArr);
                    byte[] iv = cipher.getIV();
                    if (iv != null && iv.length == 12) {
                        byte[] bArrCopyOf = Arrays.copyOf(iv, iv.length + bArrDoFinal.length);
                        System.arraycopy(bArrDoFinal, 0, bArrCopyOf, iv.length, bArrDoFinal.length);
                        return bArrCopyOf;
                    }
                    b.b("GCMKS", "IV is invalid.");
                    return bArr2;
                } catch (InvalidKeyException e) {
                    e = e;
                    sb = new StringBuilder();
                    str = "InvalidKeyException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (NoSuchAlgorithmException e2) {
                    e = e2;
                    sb = new StringBuilder();
                    str = "NoSuchAlgorithmException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (BadPaddingException e3) {
                    e = e3;
                    sb = new StringBuilder();
                    str = "BadPaddingException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (IllegalBlockSizeException e4) {
                    e = e4;
                    sb = new StringBuilder();
                    str = "IllegalBlockSizeException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (NoSuchPaddingException e5) {
                    e = e5;
                    sb = new StringBuilder();
                    str = "NoSuchPaddingException : ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                } catch (Exception e6) {
                    e = e6;
                    sb = new StringBuilder();
                    str = "Exception: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("GCMKS", sb.toString());
                    return bArr2;
                }
            }
            str2 = "sdk version is too low";
        }
        b.b("GCMKS", str2);
        return bArr2;
    }
}
