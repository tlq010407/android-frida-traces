package com.huawei.hms.support.api.location.common;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class PermissionUtil {
    private static final String TAG = "PermissionUtil";

    public static boolean canAccessMockLocation(String str, Context context) {
        String str2;
        try {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 23) {
                Object systemService = context.getSystemService("appops");
                if (systemService instanceof AppOpsManager) {
                    return ((AppOpsManager) systemService).noteOp("android:mock_location", Process.myUid(), str) == 0;
                }
                HMSLog.i(TAG, "canCallerAccessMockLocation ,no AppOpsManager ");
                return false;
            }
            if (Settings.Secure.getInt(context.getContentResolver(), "mock_location", 0) == 0) {
                z = false;
            }
            HMSLog.i(TAG, "canCallerAccessMockLocation ,Build.VERSION.SDK_INT <23 ,mock is " + z);
            return z;
        } catch (SecurityException unused) {
            str2 = "canCallerAccessMockLocation ,SecurityException ";
            HMSLog.i(TAG, str2);
            return false;
        } catch (Exception unused2) {
            str2 = "canCallerAccessMockLocation ,Exception ";
            HMSLog.i(TAG, str2);
            return false;
        }
    }

    private static boolean checkSelfPermission(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
        }
        HMSLog.i(TAG, "permission is null");
        return false;
    }

    public static boolean isAppIsInBackground(Context context) {
        String str;
        if (context == null) {
            str = "context is null";
        } else {
            Object systemService = context.getSystemService("activity");
            if (systemService instanceof ActivityManager) {
                ActivityManager activityManager = (ActivityManager) systemService;
                if (Build.VERSION.SDK_INT >= 21) {
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
                                    if (strArr[i].equals(context.getPackageName())) {
                                        z = false;
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                        return z;
                    }
                    str = "runningProcesses is null";
                } else {
                    str = "android version is lower than 21";
                }
            } else {
                str = "managerResult is not a instance of ActivityManager";
            }
        }
        HMSLog.e(TAG, str);
        return false;
    }

    public static boolean isGeofencePermissionAvailable(Context context) {
        if (!checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION")) {
            return false;
        }
        if (Build.VERSION.SDK_INT <= 28) {
            return true;
        }
        return checkSelfPermission(context, LocationConstant.BACKGROUND_PERMISSION);
    }

    private static boolean isImportanceForeground(int i) {
        return Build.VERSION.SDK_INT > 23 ? i <= 125 : i <= 100;
    }

    public static boolean isLocationPermissionAvailable(Context context) {
        String str;
        if (!checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") && !checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION")) {
            str = "checkSelfPermission is false";
        } else {
            if (Build.VERSION.SDK_INT <= 28 || !isAppIsInBackground(context) || checkSelfPermission(context, LocationConstant.BACKGROUND_PERMISSION)) {
                return true;
            }
            str = "App is in background , but BackgroundPermission is false";
        }
        HMSLog.i(TAG, str);
        return false;
    }

    public static boolean isPermissionAvailable(Context context, String str) {
        return checkSelfPermission(context, str);
    }
}
