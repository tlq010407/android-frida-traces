package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class SerializationDelegatingTypeAdapter<T> extends TypeAdapter {
    public abstract TypeAdapter getSerializationDelegate();
}
