package com.huawei.secure.android.common.ssl.util;

import android.content.Context;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class c {
    private static Context a;

    public static Context a() {
        return a;
    }

    public static void a(Context context) {
        if (context == null || a != null) {
            return;
        }
        a = context.getApplicationContext();
    }
}
