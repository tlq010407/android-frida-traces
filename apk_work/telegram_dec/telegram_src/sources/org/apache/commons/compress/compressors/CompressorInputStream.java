package org.apache.commons.compress.compressors;

import java.io.InputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class CompressorInputStream extends InputStream {
    private long bytesRead;

    protected void count(int i) {
        count(i);
    }

    protected void count(long j) {
        if (j != -1) {
            this.bytesRead += j;
        }
    }
}
