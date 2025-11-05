package com.google.firebase.encoders.proto;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public @interface Protobuf {

    public enum IntEncoding {
        DEFAULT,
        SIGNED,
        FIXED
    }

    IntEncoding intEncoding() default IntEncoding.DEFAULT;

    int tag();
}
