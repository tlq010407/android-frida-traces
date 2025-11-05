package com.huawei.location.tiles.utils;

import com.huawei.location.lite.common.log.LogConsole;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class LW {
    private static final char[] Vw = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final String yn = "LW";

    /* JADX WARN: Removed duplicated region for block: B:41:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String yn(String str, String str2) throws IOException {
        String str3;
        String str4;
        BufferedInputStream bufferedInputStream;
        MessageDigest messageDigest;
        int i;
        byte[] bArrDigest;
        File file = new File(yn.yn(str));
        byte[] bytes = str2.getBytes(Charset.forName("UTF-8"));
        if (file.exists()) {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    messageDigest = MessageDigest.getInstance("SHA-256");
                    byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM];
                    i = 0;
                    for (int i2 = bufferedInputStream.read(bArr); i2 != -1; i2 = bufferedInputStream.read(bArr)) {
                        messageDigest.update(bArr, 0, i2);
                        i += i2;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (FileNotFoundException unused) {
                str3 = yn;
                str4 = "FileNotFoundException.";
            } catch (IOException unused2) {
                str3 = yn;
                str4 = "IOException.";
            } catch (NoSuchAlgorithmException unused3) {
                str3 = yn;
                str4 = "NoSuchAlgorithmException.";
            }
            if (i <= 0) {
                bufferedInputStream.close();
                bArrDigest = null;
                if (bArrDigest != null) {
                }
                return null;
            }
            if (bytes != null && bytes.length > 0) {
                int i3 = 0;
                while (i3 < bytes.length) {
                    int i4 = i3 + LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM;
                    if (i4 <= bytes.length) {
                        messageDigest.update(bytes, i3, LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM);
                    } else {
                        messageDigest.update(bytes, i3, bytes.length - i3);
                    }
                    i3 = i4;
                }
            }
            bArrDigest = messageDigest.digest();
            bufferedInputStream.close();
            if (bArrDigest != null || bArrDigest.length <= 0) {
                return null;
            }
            char[] cArr = new char[bArrDigest.length << 1];
            int i5 = 0;
            for (byte b : bArrDigest) {
                int i6 = i5 + 1;
                char[] cArr2 = Vw;
                cArr[i5] = cArr2[(b & 240) >>> 4];
                i5 += 2;
                cArr[i6] = cArr2[b & 15];
            }
            return new String(cArr);
        }
        str3 = yn;
        str4 = "file not exist";
        LogConsole.e(str3, str4);
        bArrDigest = null;
        if (bArrDigest != null) {
        }
        return null;
    }
}
