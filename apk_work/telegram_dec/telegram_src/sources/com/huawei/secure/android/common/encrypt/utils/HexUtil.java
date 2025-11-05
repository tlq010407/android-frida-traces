package com.huawei.secure.android.common.encrypt.utils;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class HexUtil {
    public static String byteArray2HexStr(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static byte[] hexStr2ByteArray(String str) throws UnsupportedEncodingException {
        StringBuilder sb;
        String str2;
        String upperCase;
        int length;
        byte[] bArr;
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            upperCase = str.toUpperCase(Locale.ENGLISH);
            length = upperCase.length() / 2;
            bArr = new byte[length];
        } catch (Throwable th) {
            e = th;
            sb = new StringBuilder();
            str2 = "hex string toUpperCase exception : ";
        }
        try {
            byte[] bytes = upperCase.getBytes("UTF-8");
            for (int i = 0; i < length; i++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("0x");
                int i2 = i * 2;
                sb2.append(new String(new byte[]{bytes[i2]}, "UTF-8"));
                bArr[i] = (byte) (((byte) (Byte.decode(sb2.toString()).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{bytes[i2 + 1]}, "UTF-8")).byteValue());
            }
            return bArr;
        } catch (UnsupportedEncodingException | NumberFormatException e) {
            e = e;
            sb = new StringBuilder();
            str2 = "hex string 2 byte array exception : ";
            sb.append(str2);
            sb.append(e.getMessage());
            b.b("HexUtil", sb.toString());
            return new byte[0];
        }
    }
}
