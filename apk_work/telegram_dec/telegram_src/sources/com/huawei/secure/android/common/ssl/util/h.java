package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class h {
    private static final String a = "h";

    public static String a(String str) {
        String str2;
        StringBuilder sb;
        String str3;
        Context contextA = c.a();
        if (contextA == null) {
            return "";
        }
        try {
            return contextA.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            str2 = a;
            sb = new StringBuilder();
            str3 = "getVersion NameNotFoundException : ";
            sb.append(str3);
            sb.append(e.getMessage());
            g.b(str2, sb.toString());
            return "";
        } catch (Exception e2) {
            e = e2;
            str2 = a;
            sb = new StringBuilder();
            str3 = "getVersion: ";
            sb.append(str3);
            sb.append(e.getMessage());
            g.b(str2, sb.toString());
            return "";
        } catch (Throwable unused) {
            g.b(a, "throwable");
            return "";
        }
    }
}
