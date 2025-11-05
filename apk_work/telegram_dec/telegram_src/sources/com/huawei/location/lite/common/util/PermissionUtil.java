package com.huawei.location.lite.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import androidx.core.content.PermissionChecker;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.exception.LocationStatusCode;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class PermissionUtil {
    private static int errorCode;

    static {
        errorCode = RouterComponentType.getComponentType() == 1 ? ActivityErrorCode.PERMISSION_DENIED : 10803;
    }

    public static int checkPermission(Context context, String str, int i, int i2, String str2) {
        if (str2 == null) {
            try {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
                if (packagesForUid != null && packagesForUid.length > 0) {
                    str2 = packagesForUid[0];
                }
                LogConsole.i("PermissionUtil", "checkPermission get packageName fail ");
                return -1;
            } catch (Exception unused) {
                LogConsole.e("PermissionUtil", "checkPermission LocationServiceException");
                throw new LocationServiceException(10000, LocationStatusCode.getStatusCodeString(10000));
            }
        }
        return APKUtil.getTargetSdkVersion(str2) >= 23 ? context.checkPermission(str, i, i2) : PermissionChecker.checkPermission(context, str, i, i2, str2);
    }

    public static boolean checkSelfPermission(Context context, String str) {
        String str2;
        if (context == null) {
            str2 = "hasSelfPermission Context is null";
        } else {
            if (PermissionChecker.checkSelfPermission(context, str) == 0) {
                return true;
            }
            str2 = "do not hasSelfPermission " + str;
        }
        LogConsole.e("PermissionUtil", str2);
        return false;
    }

    public static boolean hasPermission(Context context, String str, int i, int i2) {
        String str2;
        if (context == null) {
            str2 = "hasPermission Context is null";
        } else {
            int iCheckPermission = checkPermission(context, str, i, i2, null);
            if (iCheckPermission == 0) {
                return true;
            }
            if (-1 != iCheckPermission) {
                LogConsole.e("PermissionUtil", "hasPermission, result is " + iCheckPermission);
                int i3 = errorCode;
                throw new LocationServiceException(i3, LocationStatusCode.getStatusCodeString(i3));
            }
            str2 = "hasPermission, result is " + iCheckPermission;
        }
        LogConsole.e("PermissionUtil", str2);
        return false;
    }

    public static boolean isAppIsInBackground(String str) {
        String str2;
        Object systemService = ContextUtil.getHMSContext().getSystemService("activity");
        if (systemService instanceof ActivityManager) {
            ActivityManager activityManager = (ActivityManager) systemService;
            if (Build.VERSION.SDK_INT < 21) {
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses != null) {
                boolean z = true;
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (isImportanceForeground(runningAppProcessInfo.importance)) {
                        String[] strArr = runningAppProcessInfo.pkgList;
                        int length = strArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                break;
                            }
                            if (strArr[i].equals(str)) {
                                z = false;
                                break;
                            }
                            i++;
                        }
                    }
                }
                return z;
            }
            str2 = "runningProcesses is null";
        } else {
            str2 = "managerResult is not a instance of ActivityManager";
        }
        LogConsole.e("PermissionUtil", str2);
        return false;
    }

    private static boolean isImportanceForeground(int i) {
        return Build.VERSION.SDK_INT > 23 ? i <= 125 : i <= 100;
    }
}
