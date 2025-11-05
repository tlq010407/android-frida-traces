package com.google.common.primitives;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class UnsignedBytes {
    public static int toInt(byte b) {
        return b & 255;
    }
}
