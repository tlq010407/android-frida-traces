package io.reactivex.rxjava3.core;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Flowable {
    static final int BUFFER_SIZE = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    public static int bufferSize() {
        return BUFFER_SIZE;
    }
}
