package com.googlecode.mp4parser;

import java.io.Closeable;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface DataSource extends Closeable {
    long position();

    void position(long j);
}
