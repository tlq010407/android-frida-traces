package org.tukaani.xz.rangecoder;

import java.util.Arrays;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public abstract class RangeCoder {
    public static final void initProbs(short[] sArr) {
        Arrays.fill(sArr, (short) 1024);
    }
}
