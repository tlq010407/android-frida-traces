package com.huawei.agconnect.config.impl;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.agconnect.AGConnectApp;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class a extends AGConnectApp {
    private static final Map a = new HashMap();
    private static final Object b = new Object();
    private static String c;
    private AGConnectServicesConfig d;

    private a(Context context, String str) {
        this.d = AGConnectServicesConfig.fromContext(context, str);
    }

    public static AGConnectApp a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        String packageName = context.getPackageName();
        c = packageName;
        return a(context, packageName);
    }

    public static AGConnectApp a(Context context, String str) {
        AGConnectApp aGConnectApp;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName can not be empty");
        }
        synchronized (b) {
            try {
                Map map = a;
                aGConnectApp = (AGConnectApp) map.get(str);
                if (aGConnectApp == null) {
                    map.put(str, new a(context, str));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return aGConnectApp;
    }
}
