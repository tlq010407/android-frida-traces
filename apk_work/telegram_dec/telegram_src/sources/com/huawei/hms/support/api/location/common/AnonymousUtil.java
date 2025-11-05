package com.huawei.hms.support.api.location.common;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AnonymousUtil {
    private static final String ANONYMOUS_STRING = "****";

    public static String anonymous(String str) {
        if (StringUtil.isNull(str)) {
            return str;
        }
        int length = str.length();
        if (length < 4) {
            return ANONYMOUS_STRING;
        }
        if (length < 8) {
            return str.substring(0, 2) + ANONYMOUS_STRING;
        }
        if (length < 16) {
            return str.substring(0, 4) + ANONYMOUS_STRING;
        }
        if (length < 24) {
            return str.substring(0, 8) + ANONYMOUS_STRING;
        }
        return str.substring(0, length - 18) + ANONYMOUS_STRING + str.substring(length - 7, length);
    }
}
