package com.huawei.location.base.activity.permission;

import android.os.Build;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.PermissionUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ARLocationPermissionManager {
    private static final String ACTIVITY_RECOGNITION_ANDROID_Q = "android.permission.ACTIVITY_RECOGNITION";
    private static final String PERMISSION_DENIED = "PERMISSION_DENIED";
    private static final String TAG = "ARLocationPermissionManager";

    public static boolean checkCPActivityRecognitionPermission(String str, int i, int i2) {
        boolean zHasPermission;
        if (Build.VERSION.SDK_INT <= 28) {
            LogConsole.i(str, " Activity recognition permission is true");
            zHasPermission = true;
        } else {
            zHasPermission = PermissionUtil.hasPermission(ContextUtil.getHMSContext(), ACTIVITY_RECOGNITION_ANDROID_Q, i, i2);
            LogConsole.i(str, "Activity recognition permission on android Q   is " + zHasPermission);
        }
        if (!zHasPermission) {
            LogConsole.e(str, "pid: " + i + ",uid: " + i2 + " has no activity recognition permission ", true);
        }
        return zHasPermission;
    }

    public static boolean checkCPActivityRecognitionPermissionByException(String str, String str2, int i, int i2) {
        boolean zCheckCPActivityRecognitionPermission = checkCPActivityRecognitionPermission(str, i, i2);
        if (zCheckCPActivityRecognitionPermission) {
            return zCheckCPActivityRecognitionPermission;
        }
        LogConsole.e(str, str2 + " has no activity recognition permission");
        throw new LocationServiceException(10803, "PERMISSION_DENIED " + str2 + " has no Activity Recognition permission");
    }
}
