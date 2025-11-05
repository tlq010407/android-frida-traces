package com.huawei.location.vdr.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Vw {
    private static final Map yn;

    static {
        HashMap map = new HashMap();
        map.put(29, "Android10");
        map.put(30, "Android11");
        map.put(28, "Android9");
        map.put(26, "Android8");
        map.put(27, "Android8");
        map.put(24, "Android7");
        map.put(25, "Android7");
        yn = Collections.unmodifiableMap(map);
    }

    public static String yn(int i) {
        return (String) yn.get(Integer.valueOf(i));
    }
}
