package com.huawei.secure.android.common.util;

import android.text.TextUtils;
import android.util.Log;
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
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        int length = upperCase.length() / 2;
        byte[] bArr = new byte[length];
        try {
            byte[] bytes = upperCase.getBytes("UTF-8");
            for (int i = 0; i < length; i++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("0x");
                int i2 = i * 2;
                sb2.append(new String(new byte[]{bytes[i2]}, "UTF-8"));
                bArr[i] = (byte) (((byte) (Byte.decode(sb2.toString()).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{bytes[i2 + 1]}, "UTF-8")).byteValue());
            }
        } catch (UnsupportedEncodingException e) {
            e = e;
            sb = new StringBuilder();
            str2 = "hex string 2 byte UnsupportedEncodingException or NumberFormatException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            Log.e("HexUtil", sb.toString());
            return bArr;
        } catch (NumberFormatException e2) {
            e = e2;
            sb = new StringBuilder();
            str2 = "hex string 2 byte UnsupportedEncodingException or NumberFormatException : ";
            sb.append(str2);
            sb.append(e.getMessage());
            Log.e("HexUtil", sb.toString());
            return bArr;
        } catch (Exception e3) {
            e = e3;
            sb = new StringBuilder();
            str2 = "byte array 2 hex string exception : ";
            sb.append(str2);
            sb.append(e.getMessage());
            Log.e("HexUtil", sb.toString());
            return bArr;
        }
        return bArr;
    }
}
