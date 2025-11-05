package com.huawei.location.lite.common.util;

import android.text.TextUtils;
import com.huawei.location.lite.common.log.LogConsole;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class ReflectionUtils {
    private static final String TAG = "ReflectionUtils";

    public static Class getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            LogConsole.e(TAG, "className not found:" + str);
            return null;
        }
    }

    public static Method getMethod(Class cls, String str, Class... clsArr) {
        if (cls != null && !TextUtils.isEmpty(str)) {
            try {
                return cls.getMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
                LogConsole.e(TAG, "getMethod NoSuchMethodException");
            }
        }
        return null;
    }

    public static Object invoke(Object obj, Method method, Object... objArr) {
        if (method == null) {
            throw new UnsupportedOperationException();
        }
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            LogConsole.e(TAG, "invoke Exception");
            throw new UnsupportedOperationException();
        }
    }

    public static boolean isSupportClass(String str) {
        return getClass(str) != null;
    }
}
