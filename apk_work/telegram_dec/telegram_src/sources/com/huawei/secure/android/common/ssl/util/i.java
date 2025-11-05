package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class i {
    private static SharedPreferences b;

    public static String a(String str, String str2, Context context) {
        return b(context).getString(str, str2);
    }

    public static synchronized SharedPreferences b(Context context) {
        try {
            if (b == null) {
                b = Build.VERSION.SDK_INT >= 24 ? context.createDeviceProtectedStorageContext().getSharedPreferences("aegis", 0) : context.getApplicationContext().getSharedPreferences("aegis", 0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public static void b(String str, String str2, Context context) {
        b(context).edit().putString(str, str2).apply();
    }
}
