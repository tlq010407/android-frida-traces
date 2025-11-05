package com.huawei.wisesecurity.kfs.validation.core;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TypeHelper {
    public static Type extractValidatorType(Class cls) {
        return ((ParameterizedType) cls.getGenericInterfaces()[0]).getActualTypeArguments()[1];
    }
}
