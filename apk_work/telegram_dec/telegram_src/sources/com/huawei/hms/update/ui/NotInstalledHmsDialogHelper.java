package com.huawei.hms.update.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.AndroidException;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.ResourceLoaderUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class NotInstalledHmsDialogHelper {
    public static int a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    public static String a(Context context, String str) {
        String str2;
        if (context == null) {
            str2 = "In getAppName, context is null.";
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                str2 = "In getAppName, Failed to get 'PackageManager' instance.";
            } else {
                try {
                    if (TextUtils.isEmpty(str)) {
                        str = context.getPackageName();
                    }
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 128));
                    return applicationLabel == null ? "" : applicationLabel.toString();
                } catch (AndroidException | RuntimeException unused) {
                    str2 = "In getAppName, Failed to get app name.";
                }
            }
        }
        HMSLog.e("NotInstalledHmsDialogHelper", str2);
        return "";
    }

    public static void b(Context context) {
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(context.getApplicationContext());
        }
    }

    public static String getAppName(Activity activity) {
        return a(activity, activity.getPackageName());
    }

    public static int getConfirmResId(Activity activity) {
        Checker.checkNonNull(activity, "activity must not be null");
        b(activity);
        return ResourceLoaderUtil.getStringId("hms_confirm");
    }

    public static AlertDialog.Builder getDialogBuilder(Activity activity) {
        Checker.checkNonNull(activity, "activity must not be null");
        b(activity);
        return new AlertDialog.Builder(activity, getDialogThemeId(activity)).setMessage(activity.getString(ResourceLoaderUtil.getStringId("hms_apk_not_installed_hints"), a(activity, activity.getPackageName())));
    }

    public static int getDialogThemeId(Activity activity) {
        if (a(activity) != 0) {
            return 0;
        }
        return (activity != null && (activity.getResources().getConfiguration().uiMode & 48) == 32) ? 2 : 3;
    }
}
