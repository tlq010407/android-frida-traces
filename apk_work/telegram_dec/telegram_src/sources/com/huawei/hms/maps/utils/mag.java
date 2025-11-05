package com.huawei.hms.maps.utils;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mag {
    public static String a(Context context) {
        try {
            Object obj = context.getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128).metaData.get("com.huawei.hms.client.appid");
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                return strValueOf.startsWith("appid=") ? strValueOf.substring(6) : strValueOf;
            }
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
        }
        return "";
    }
}
