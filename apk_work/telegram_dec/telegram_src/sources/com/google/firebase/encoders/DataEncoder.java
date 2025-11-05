package com.google.firebase.encoders;

import java.io.Writer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface DataEncoder {
    String encode(Object obj);

    void encode(Object obj, Writer writer);
}
