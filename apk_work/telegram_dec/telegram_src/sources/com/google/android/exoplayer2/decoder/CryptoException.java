package com.google.android.exoplayer2.decoder;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class CryptoException extends Exception {
    public final int errorCode;

    public CryptoException(int i, String str) {
        super(str);
        this.errorCode = i;
    }
}
