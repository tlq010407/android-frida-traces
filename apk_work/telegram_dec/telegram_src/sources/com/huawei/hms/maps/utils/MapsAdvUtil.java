package com.huawei.hms.maps.utils;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MapsAdvUtil {
    private static String a = "";

    private static boolean a(String str) {
        try {
            new MapsAdvUtil();
            return Class.forName(str, false, MapsAdvUtil.class.getClassLoader()) != null;
        } catch (ClassNotFoundException unused) {
            LogM.w("MapsAdvUtil", "The class:" + str + " not found.");
            return false;
        }
    }

    public static boolean containsMapsAdvance() {
        return a("com.huawei.hms.maps.HuaweiMapEx");
    }

    public static boolean containsMapsBasic() {
        return a("com.huawei.hms.maps.provider.inhuawei.MapViewDelegate");
    }

    public static String getAccessToken() {
        return a;
    }

    public static void setAccessToken(String str) {
        a = str;
    }
}
