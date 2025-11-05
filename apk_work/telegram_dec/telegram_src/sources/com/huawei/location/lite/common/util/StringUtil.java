package com.huawei.location.lite.common.util;

import java.util.regex.Pattern;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class StringUtil {
    private static final Pattern INT_PATTERN = Pattern.compile("\\d+");
    private static final Pattern VALID_PATTERN = Pattern.compile("^[.0-9a-zA-Z_-]{1,}$");

    public static boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }
}
