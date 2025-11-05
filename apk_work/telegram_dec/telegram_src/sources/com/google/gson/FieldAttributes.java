package com.google.gson;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Objects;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class FieldAttributes {
    private final Field field;

    public FieldAttributes(Field field) {
        Objects.requireNonNull(field);
        this.field = field;
    }

    public Type getDeclaredType() {
        return this.field.getGenericType();
    }

    public String getName() {
        return this.field.getName();
    }

    public String toString() {
        return this.field.toString();
    }
}
