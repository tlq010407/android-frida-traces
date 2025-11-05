package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public @interface Descriptor {
    int objectTypeIndication() default -1;

    int[] tags();
}
