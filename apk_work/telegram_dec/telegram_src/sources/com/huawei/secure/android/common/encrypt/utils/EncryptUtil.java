package com.huawei.secure.android.common.encrypt.utils;

import android.os.Build;
import android.util.Base64;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.prng.SP800SecureRandomBuilder;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class EncryptUtil {
    private static boolean c = false;
    private static boolean d = true;

    private static SecureRandom a() {
        b.a("EncryptUtil", "generateSecureRandomNew ");
        try {
        } catch (NoSuchAlgorithmException unused) {
            b.b("EncryptUtil", "getSecureRandomBytes: NoSuchAlgorithmException");
        }
        SecureRandom instanceStrong = Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : null;
        if (instanceStrong == null) {
            try {
                instanceStrong = SecureRandom.getInstance("SHA1PRNG");
            } catch (NoSuchAlgorithmException unused2) {
                b.b("EncryptUtil", "NoSuchAlgorithmException");
                return instanceStrong;
            } catch (Throwable th) {
                if (d) {
                    b.b("EncryptUtil", "exception : " + th.getMessage() + " , you should implementation bcprov-jdk15on library");
                    d = false;
                }
                return instanceStrong;
            }
        }
        AESEngine aESEngine = new AESEngine();
        byte[] bArr = new byte[32];
        instanceStrong.nextBytes(bArr);
        return new SP800SecureRandomBuilder(instanceStrong, true).setEntropyBitsRequired(384).buildCTR(aESEngine, 256, bArr, false);
    }

    private static byte[] a(int i) {
        SecureRandom secureRandomA = a();
        if (secureRandomA == null) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        secureRandomA.nextBytes(bArr);
        return bArr;
    }

    public static byte[] generateSecureRandom(int i) throws NoSuchAlgorithmException {
        String str;
        if (c) {
            return a(i);
        }
        byte[] bArr = new byte[i];
        try {
        } catch (NoSuchAlgorithmException unused) {
            b.b("EncryptUtil", "getSecureRandomBytes: NoSuchAlgorithmException");
        }
        SecureRandom instanceStrong = Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : null;
        if (instanceStrong == null) {
            try {
                instanceStrong = SecureRandom.getInstance("SHA1PRNG");
            } catch (NoSuchAlgorithmException unused2) {
                str = "getSecureRandomBytes getInstance: NoSuchAlgorithmException";
                b.b("EncryptUtil", str);
                return new byte[0];
            } catch (Exception e) {
                str = "getSecureRandomBytes getInstance: exception : " + e.getMessage();
                b.b("EncryptUtil", str);
                return new byte[0];
            }
        }
        instanceStrong.nextBytes(bArr);
        return bArr;
    }

    public static String generateSecureRandomStr(int i) {
        return HexUtil.byteArray2HexStr(generateSecureRandom(i));
    }

    public static RSAPublicKey getPublicKey(String str) {
        StringBuilder sb;
        String str2;
        String string;
        try {
            try {
                return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
            } catch (GeneralSecurityException e) {
                e = e;
                sb = new StringBuilder();
                str2 = "load Key Exception:";
                sb.append(str2);
                sb.append(e.getMessage());
                string = sb.toString();
                b.b("EncryptUtil", string);
                return null;
            }
        } catch (IllegalArgumentException unused) {
            string = "base64 decode IllegalArgumentException";
            b.b("EncryptUtil", string);
            return null;
        } catch (Exception e2) {
            e = e2;
            sb = new StringBuilder();
            str2 = "base64 decode Exception";
        }
    }
}
