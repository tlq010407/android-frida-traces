package com.huawei.secure.android.common.encrypt.aes;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.encrypt.utils.b;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class AesCbc {
    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.substring(0, 6) + str.substring(12, 16) + str.substring(26, 32) + str.substring(48);
        } catch (Exception e) {
            b.b("CBC", "get encryptword exception : " + e.getMessage());
            return "";
        }
    }

    private static String a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return str2.substring(0, 6) + str.substring(0, 6) + str2.substring(6, 10) + str.substring(6, 16) + str2.substring(10, 16) + str.substring(16) + str2.substring(16);
            } catch (Exception e) {
                b.b("CBC", "mix exception: " + e.getMessage());
            }
        }
        return "";
    }

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
        } else if (bArr2.length < 16) {
            str2 = "encrypt 5 iv lengh is not right";
        } else {
            try {
                return encrypt(str.getBytes("UTF-8"), bArr, bArr2);
            } catch (UnsupportedEncodingException e) {
                str2 = " cbc encrypt data error" + e.getMessage();
            }
        }
        b.b("CBC", str2);
        return new byte[0];
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.substring(6, 12) + str.substring(16, 26) + str.substring(32, 48);
        } catch (Exception e) {
            b.b("CBC", "getIv exception : " + e.getMessage());
            return "";
        }
    }

    public static String decrypt(String str, String str2) throws UnsupportedEncodingException {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "decrypt 1 content is null";
        } else if (TextUtils.isEmpty(str2)) {
            str3 = "decrypt 1 key is null";
        } else {
            byte[] bArrHexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
            if (bArrHexStr2ByteArray.length >= 16) {
                return decrypt(str, bArrHexStr2ByteArray);
            }
            str3 = "decrypt 1 key length is not right";
        }
        b.b("CBC", str3);
        return "";
    }

    public static String decrypt(String str, byte[] bArr) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "decrypt 2 content is null";
        } else if (bArr == null) {
            str2 = "decrypt 2 key is null";
        } else if (bArr.length < 16) {
            str2 = "decrypt 2 key lengh is not right";
        } else {
            String strB = b(str);
            String strA = a(str);
            if (TextUtils.isEmpty(strB)) {
                str2 = "decrypt 2 iv is null";
            } else {
                if (!TextUtils.isEmpty(strA)) {
                    return decrypt(strA, bArr, HexUtil.hexStr2ByteArray(strB));
                }
                str2 = "decrypt 2 encrypt content is null";
            }
        }
        b.b("CBC", str2);
        return "";
    }

    public static String decrypt(String str, byte[] bArr, byte[] bArr2) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "decrypt 4 content is null";
        } else if (bArr == null) {
            str2 = "decrypt 4 key is null";
        } else if (bArr.length < 16) {
            str2 = "decrypt 4 key lengh is not right";
        } else if (bArr2 == null) {
            str2 = "decrypt 4 iv is null";
        } else if (bArr2.length < 16) {
            str2 = "decrypt 4 iv lengh is not right";
        } else {
            try {
                return new String(decrypt(HexUtil.hexStr2ByteArray(str), bArr, bArr2), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                str2 = " cbc decrypt data error" + e.getMessage();
            }
        }
        b.b("CBC", str2);
        return "";
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        StringBuilder sb;
        String str;
        String string;
        String str2;
        if (bArr == null) {
            str2 = "decrypt 6 content is null";
        } else if (bArr.length == 0) {
            str2 = "decrypt 6 content length is 0";
        } else if (bArr2 == null) {
            str2 = "decrypt 6 key is null";
        } else if (bArr2.length < 16) {
            str2 = "decrypt 6 key length is error";
        } else if (bArr3 == null) {
            str2 = "decrypt 6 iv is null";
        } else {
            if (bArr3.length >= 16) {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
                try {
                    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                    cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
                    return cipher.doFinal(bArr);
                } catch (InvalidAlgorithmParameterException e) {
                    e = e;
                    sb = new StringBuilder();
                    str = "InvalidAlgorithmParameterException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    string = sb.toString();
                    b.b("CBC", string);
                    return new byte[0];
                } catch (InvalidKeyException e2) {
                    e = e2;
                    sb = new StringBuilder();
                    str = "InvalidKeyException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    string = sb.toString();
                    b.b("CBC", string);
                    return new byte[0];
                } catch (NoSuchAlgorithmException e3) {
                    e = e3;
                    sb = new StringBuilder();
                    str = "NoSuchAlgorithmException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    string = sb.toString();
                    b.b("CBC", string);
                    return new byte[0];
                } catch (BadPaddingException e4) {
                    b.b("CBC", "BadPaddingException: " + e4.getMessage());
                    string = "key is not right";
                    b.b("CBC", string);
                    return new byte[0];
                } catch (IllegalBlockSizeException e5) {
                    e = e5;
                    sb = new StringBuilder();
                    str = "IllegalBlockSizeException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    string = sb.toString();
                    b.b("CBC", string);
                    return new byte[0];
                } catch (NoSuchPaddingException e6) {
                    e = e6;
                    sb = new StringBuilder();
                    str = "NoSuchPaddingException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    string = sb.toString();
                    b.b("CBC", string);
                    return new byte[0];
                }
            }
            str2 = "decrypt 6 iv length is error";
        }
        b.b("CBC", str2);
        return new byte[0];
    }

    public static String encrypt(String str, String str2) throws UnsupportedEncodingException {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "encrypt 1 content is null";
        } else if (TextUtils.isEmpty(str2)) {
            str3 = "encrypt 1 key is null";
        } else {
            byte[] bArrHexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
            if (bArrHexStr2ByteArray.length >= 16) {
                return encrypt(str, bArrHexStr2ByteArray);
            }
            str3 = "encrypt 1 key length is not right";
        }
        b.b("CBC", str3);
        return "";
    }

    public static String encrypt(String str, byte[] bArr) throws NoSuchAlgorithmException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "encrypt 2 content is null";
        } else if (bArr == null) {
            str2 = "encrypt 2 key is null";
        } else {
            if (bArr.length >= 16) {
                byte[] bArrGenerateSecureRandom = EncryptUtil.generateSecureRandom(16);
                byte[] bArrA = a(str, bArr, bArrGenerateSecureRandom);
                return (bArrA == null || bArrA.length == 0) ? "" : a(HexUtil.byteArray2HexStr(bArrGenerateSecureRandom), HexUtil.byteArray2HexStr(bArrA));
            }
            str2 = "encrypt 2 key lengh is not right";
        }
        b.b("CBC", str2);
        return "";
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException {
        byte[] bArrGenerateSecureRandom = EncryptUtil.generateSecureRandom(16);
        return a(bArrGenerateSecureRandom, encrypt(bArr, bArr2, bArrGenerateSecureRandom));
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        StringBuilder sb;
        String str;
        String str2;
        if (bArr == null) {
            str2 = "encrypt 6 content is null";
        } else if (bArr.length == 0) {
            str2 = "encrypt 6 content length is 0";
        } else if (bArr2 == null) {
            str2 = "encrypt 6 key is null";
        } else if (bArr2.length < 16) {
            str2 = "encrypt 6 key length is error";
        } else if (bArr3 == null) {
            str2 = "encrypt 6 iv is null";
        } else {
            if (bArr3.length >= 16) {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
                try {
                    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                    cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
                    return cipher.doFinal(bArr);
                } catch (InvalidAlgorithmParameterException e) {
                    e = e;
                    sb = new StringBuilder();
                    str = "InvalidAlgorithmParameterException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("CBC", sb.toString());
                    return new byte[0];
                } catch (InvalidKeyException e2) {
                    e = e2;
                    sb = new StringBuilder();
                    str = "InvalidKeyException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("CBC", sb.toString());
                    return new byte[0];
                } catch (NoSuchAlgorithmException e3) {
                    e = e3;
                    sb = new StringBuilder();
                    str = "NoSuchAlgorithmException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("CBC", sb.toString());
                    return new byte[0];
                } catch (BadPaddingException e4) {
                    e = e4;
                    sb = new StringBuilder();
                    str = "BadPaddingException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("CBC", sb.toString());
                    return new byte[0];
                } catch (IllegalBlockSizeException e5) {
                    e = e5;
                    sb = new StringBuilder();
                    str = "IllegalBlockSizeException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("CBC", sb.toString());
                    return new byte[0];
                } catch (NoSuchPaddingException e6) {
                    e = e6;
                    sb = new StringBuilder();
                    str = "NoSuchPaddingException: ";
                    sb.append(str);
                    sb.append(e.getMessage());
                    b.b("CBC", sb.toString());
                    return new byte[0];
                }
            }
            str2 = "encrypt 6 iv length is error";
        }
        b.b("CBC", str2);
        return new byte[0];
    }
}
