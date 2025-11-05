package com.huawei.hms.framework.common;

import android.content.Context;
import android.content.pm.PackageManager;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class PackageUtils {
    private static final String TAG = "PackageUtils";

    public static String getVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.w(TAG, "", e);
            return "";
        }
    }
}
