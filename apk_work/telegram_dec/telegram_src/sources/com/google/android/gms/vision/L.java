package com.google.android.gms.vision;

import android.util.Log;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class L {
    public static int d(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 3)) {
            return Log.d("Vision", String.format(str, objArr));
        }
        return 0;
    }

    public static int e(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 6)) {
            return Log.e("Vision", String.format(str, objArr));
        }
        return 0;
    }

    public static int e(Throwable th, String str, Object... objArr) {
        if (!Log.isLoggable("Vision", 6)) {
            return 0;
        }
        boolean zIsLoggable = Log.isLoggable("Vision", 3);
        String str2 = String.format(str, objArr);
        if (zIsLoggable) {
            return Log.e("Vision", str2, th);
        }
        String strValueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(str2.length() + 2 + strValueOf.length());
        sb.append(str2);
        sb.append(": ");
        sb.append(strValueOf);
        return Log.e("Vision", sb.toString());
    }

    public static int i(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 4)) {
            return Log.i("Vision", String.format(str, objArr));
        }
        return 0;
    }

    public static int v(String str, Object... objArr) {
        if (Log.isLoggable("Vision", 2)) {
            return Log.v("Vision", String.format(str, objArr));
        }
        return 0;
    }
}
