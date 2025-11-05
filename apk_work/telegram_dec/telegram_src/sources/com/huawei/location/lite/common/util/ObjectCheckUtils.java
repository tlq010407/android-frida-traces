package com.huawei.location.lite.common.util;

import android.text.TextUtils;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class ObjectCheckUtils {
    public static void checkEmptyString(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            LogConsole.e(str, "checkString, string is empty");
            throw new LocationServiceException(LocationStatusCode.ARGUMENTS_EMPTY, com.huawei.location.lite.common.exception.LocationStatusCode.getStatusCodeString(LocationStatusCode.ARGUMENTS_EMPTY) + ":for String");
        }
    }

    public static void checkNullObject(String str, Object obj, int i, String str2) {
        if (obj != null) {
            return;
        }
        LogConsole.e(str, "checkNullObject, " + str2);
        throw new LocationServiceException(i, str2);
    }

    public static void checkNullObject(String str, Object obj, Class cls) {
        if (obj != null) {
            return;
        }
        LogConsole.e(str, "checkNullObject, Object is null:for object name is " + cls);
        throw new LocationServiceException(LocationStatusCode.ARGUMENTS_EMPTY, com.huawei.location.lite.common.exception.LocationStatusCode.getStatusCodeString(LocationStatusCode.ARGUMENTS_EMPTY) + ":for object name is " + cls);
    }
}
