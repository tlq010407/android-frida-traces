package com.huawei.hms.locationSdk;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.utils.Checker;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class a {
    public static b a(Activity activity, v vVar) {
        Checker.assertNonNull(activity);
        return new d(activity, vVar);
    }

    public static b a(Context context, v vVar) {
        Checker.assertNonNull(context);
        return new d(context, vVar);
    }

    public static k a(Activity activity, Locale locale, v vVar) {
        Checker.assertNonNull(activity);
        return new m(activity, locale, vVar);
    }

    public static k a(Context context, Locale locale, v vVar) {
        Checker.assertNonNull(context);
        return new m(context, locale, vVar);
    }

    public static e b(Activity activity, v vVar) {
        Checker.assertNonNull(activity);
        return new g(activity, vVar);
    }

    public static e b(Context context, v vVar) {
        Checker.assertNonNull(context);
        return new g(context, vVar);
    }

    public static h c(Activity activity, v vVar) {
        Checker.assertNonNull(activity);
        return new j(activity, vVar);
    }

    public static h c(Context context, v vVar) {
        Checker.assertNonNull(context);
        return new j(context, vVar);
    }

    public static n d(Activity activity, v vVar) {
        Checker.assertNonNull(activity);
        return new p(activity, vVar);
    }

    public static n d(Context context, v vVar) {
        Checker.assertNonNull(context);
        return new p(context, vVar);
    }
}
