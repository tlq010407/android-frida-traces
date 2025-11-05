package com.google.gson;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public interface ExclusionStrategy {
    boolean shouldSkipClass(Class cls);

    boolean shouldSkipField(FieldAttributes fieldAttributes);
}
