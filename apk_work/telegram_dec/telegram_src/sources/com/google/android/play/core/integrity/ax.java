package com.google.android.play.core.integrity;

import android.content.Context;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class ax {
    private static aw a;

    static synchronized aw a(Context context) {
        try {
            if (a == null) {
                u uVar = new u(null);
                uVar.a(com.google.android.play.integrity.internal.ag.a(context));
                a = uVar.b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }
}
