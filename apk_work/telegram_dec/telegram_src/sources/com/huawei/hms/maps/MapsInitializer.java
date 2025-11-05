package com.huawei.hms.maps;

import android.content.Context;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import com.huawei.hms.maps.utils.MapsAdvUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class MapsInitializer {
    private static boolean a = false;

    protected static boolean a() {
        return a;
    }

    public static synchronized void initialize(Context context) {
        BitmapDescriptorFactory.setContext(context);
        if (context != null) {
            a = true;
        }
    }

    public static void setAccessToken(String str) {
        MapsAdvUtil.setAccessToken(str);
    }

    public static void setApiKey(String str) {
        MapClientIdentify.setApiKey(str);
    }
}
