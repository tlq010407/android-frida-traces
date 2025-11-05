package com.google.gson.annotations;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public @interface Expose {
    boolean deserialize() default true;

    boolean serialize() default true;
}
