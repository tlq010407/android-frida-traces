package com.huawei.secure.android.common.encrypt.hash;

import android.text.TextUtils;
import com.googlecode.mp4parser.authoring.tracks.CleanInputStream;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.huawei.secure.android.common.encrypt.utils.a;
import com.huawei.secure.android.common.encrypt.utils.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class FileSHA256 {
    private static final String c = "FileSHA256";
    private static final String[] e = {"SHA-256", "SHA-384", "SHA-512"};

    private static boolean a(File file) {
        return file != null && file.exists() && file.length() > 0;
    }

    private static boolean a(String str) {
        for (String str2 : e) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static String fileSHA256Encrypt(File file) {
        return fileSHAEncrypt(file, "SHA-256");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String fileSHAEncrypt(File file, String str) throws Throwable {
        String str2;
        String str3;
        FileInputStream fileInputStream;
        String str4;
        String str5;
        MessageDigest messageDigest;
        if (TextUtils.isEmpty(str) || !a(str)) {
            str2 = c;
            str3 = "algorithm is empty or not safe";
        } else {
            if (a(file)) {
                CleanInputStream cleanInputStream = 0;
                strByteArray2HexStr = null;
                String strByteArray2HexStr = null;
                try {
                    try {
                        messageDigest = MessageDigest.getInstance(str);
                        fileInputStream = new FileInputStream(file);
                    } catch (Throwable th) {
                        th = th;
                        cleanInputStream = "";
                        a.a((InputStream) cleanInputStream);
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileInputStream = null;
                } catch (NoSuchAlgorithmException e3) {
                    e = e3;
                    fileInputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    a.a((InputStream) cleanInputStream);
                    throw th;
                }
                try {
                    byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM];
                    boolean z = false;
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                        z = true;
                    }
                    if (z) {
                        strByteArray2HexStr = HexUtil.byteArray2HexStr(messageDigest.digest());
                    }
                } catch (IOException e4) {
                    e = e4;
                    str4 = c;
                    str5 = "IOException" + e.getMessage();
                    b.b(str4, str5);
                    a.a((InputStream) fileInputStream);
                    return strByteArray2HexStr;
                } catch (NoSuchAlgorithmException e5) {
                    e = e5;
                    str4 = c;
                    str5 = "NoSuchAlgorithmException" + e.getMessage();
                    b.b(str4, str5);
                    a.a((InputStream) fileInputStream);
                    return strByteArray2HexStr;
                }
                a.a((InputStream) fileInputStream);
                return strByteArray2HexStr;
            }
            str2 = c;
            str3 = "file is not valid";
        }
        b.b(str2, str3);
        return "";
    }

    public static boolean validateFileSHA256(File file, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equalsIgnoreCase(fileSHA256Encrypt(file));
    }
}
