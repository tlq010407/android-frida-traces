package com.huawei.hms.maps.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class maa {
    private final int a;

    public maa(int i) {
        this.a = i;
    }

    private boolean a(HMSPackageManager hMSPackageManager, int i, Context context) {
        int hmsVersionCode = hMSPackageManager.getHmsVersionCode();
        LogM.i("AvailableAdapter", "current versionCode:" + hmsVersionCode + ", minimum version requirements: " + i);
        return a(hMSPackageManager, context) && hmsVersionCode < i;
    }

    private boolean a(HMSPackageManager hMSPackageManager, Context context) {
        Bundle bundle;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            LogM.e("AvailableAdapter", "In isMinApkVersionEffective, Failed to get 'PackageManager' instance.");
            return true;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(hMSPackageManager.getHMSPackageName(), 128).applicationInfo;
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("com.huawei.hms.kit.api_level:hmscore") && hMSPackageManager.getHmsVersionCode() <= 19999999) {
                LogM.i("AvailableAdapter", "MinApkVersion is disabled.");
                return false;
            }
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            LogM.e("AvailableAdapter", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.");
        }
        return true;
    }

    public int a(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        HMSPackageManager hMSPackageManager = HMSPackageManager.getInstance(context);
        PackageManagerHelper.PackageStates hMSPackageStates = hMSPackageManager.getHMSPackageStates();
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(hMSPackageStates)) {
            LogM.i("AvailableAdapter", "HMS is not installed");
            return 1;
        }
        if (PackageManagerHelper.PackageStates.DISABLED.equals(hMSPackageStates)) {
            LogM.i("AvailableAdapter", "HMS is disabled");
            return 3;
        }
        if (!a(hMSPackageManager, this.a, context)) {
            return 0;
        }
        LogM.i("AvailableAdapter", "The current version does not meet the minimum version requirements");
        return 2;
    }
}
