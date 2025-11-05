package com.huawei.secure.android.common.encrypt.utils;

import android.util.Log;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class b {
    private static String a(String str) {
        return "SecurityComp10105310: " + str;
    }

    public static void a(String str, String str2) {
    }

    public static void b(String str, String str2) {
        Log.e(a(str), str2);
    }

    public static void c(String str, String str2) {
        Log.i(a(str), str2);
    }
}
