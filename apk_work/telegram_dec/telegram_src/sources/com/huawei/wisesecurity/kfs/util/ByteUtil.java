package com.huawei.wisesecurity.kfs.util;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class ByteUtil {
    public static byte[] clone(byte[] bArr) {
        return bArr == null ? new byte[0] : (byte[]) bArr.clone();
    }
}
