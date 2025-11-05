package com.huawei.hms.maps.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.huawei.hms.adapter.AvailableAdapter;
import com.huawei.hms.feature.dynamic.DynamicModule;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.utils.HMSPackageManager;
import java.lang.reflect.Field;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HmsUtil {
    private static boolean a = false;
    private static boolean b = true;
    private static boolean c = false;
    private static int d = 12;
    private static boolean e = false;

    private static void a(Context context) {
        Activity activityFindActivity = findActivity(context);
        if (activityFindActivity == null) {
            LogM.e("HmsUtil", "Hms is not available26");
            return;
        }
        try {
            LogM.i("HmsUtil", "4.0 framework HMSCore upgrade process");
            String hMSPackageName = HMSPackageManager.getInstance(activityFindActivity.getApplicationContext()).getHMSPackageName();
            ComponentName componentName = new ComponentName(hMSPackageName, "com.huawei.hms.fwksdk.stub.UpdateStubActivity");
            Intent intent = new Intent();
            intent.putExtra(KpmsConstant.CALLER_PACKAGE_NAME, activityFindActivity.getApplicationContext().getPackageName());
            intent.putExtra(KpmsConstant.UPDATE_PACKAGE_NAME, hMSPackageName);
            intent.setComponent(componentName);
            activityFindActivity.startActivityForResult(intent, 25);
        } catch (ActivityNotFoundException unused) {
            LogM.e("HmsUtil", "not found activity :com.huawei.hms.fwksdk.stub.UpdateStubActivity");
        }
    }

    private static void a(AvailableAdapter availableAdapter, Context context) {
        LogM.d("HmsUtil", "Hms is resolution :");
        Activity activityFindActivity = findActivity(context);
        if (activityFindActivity == null) {
            LogM.e("HmsUtil", "Hms is not available26");
        } else {
            availableAdapter.startResolution(activityFindActivity, new AvailableAdapter.AvailableCallBack() { // from class: com.huawei.hms.maps.internal.HmsUtil.1
                @Override // com.huawei.hms.adapter.AvailableAdapter.AvailableCallBack
                public void onComplete(int i) {
                    if (i == 0) {
                        int unused = HmsUtil.d = i;
                        LogM.i("HmsUtil", "Hms is available");
                        return;
                    }
                    LogM.e("HmsUtil", "Hms update version failed: " + i);
                    boolean unused2 = HmsUtil.a = false;
                    boolean unused3 = HmsUtil.b = false;
                }
            });
        }
    }

    public static Activity findActivity(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return findActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static int getFallbackVersion() {
        try {
            Class<?> cls = Class.forName("com.huawei.hms.feature.dynamic.descriptors.huawei_module_maps.AssetModuleDescriptor");
            Field[] declaredFields = cls.getDeclaredFields();
            for (int i = 0; i < declaredFields.length; i++) {
                if (declaredFields[i].getName().equals("MODULE_VERSION")) {
                    return declaredFields[i].getInt(cls);
                }
            }
            return 0;
        } catch (Throwable unused) {
            LogM.d("HmsUtil", "get fallback version failed ");
            return 0;
        }
    }

    public static boolean isFallbackPresent(Context context) {
        int remoteVersion;
        try {
            remoteVersion = DynamicModule.getRemoteVersion(context, "huawei_module_maps");
        } catch (DynamicModule.LoadingException e2) {
            LogM.d("HmsUtil", "get  hmsapk version failed " + e2.getMessage());
            remoteVersion = 0;
        }
        int iMax = Math.max(remoteVersion, 0);
        int fallbackVersion = getFallbackVersion();
        LogM.i("HmsUtil", "get hms apk version  : " + iMax + " fallbackVersion : " + fallbackVersion);
        return iMax < fallbackVersion;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int isHmsAvailable(Context context) throws NumberFormatException {
        String string;
        int i;
        if (d == 0 || isFallbackPresent(context)) {
            return 0;
        }
        LogM.d("HmsUtil", "isInitialized is: " + a + ", repeatFlag is: " + b);
        if (a || !b) {
            return 1;
        }
        try {
            string = context.getPackageManager().getApplicationInfo(context.getApplicationContext().getPackageName(), 128).metaData.getString("com.huawei.hms.map.version");
        } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            LogM.e("HmsUtil", "NameNotFoundException ");
            string = null;
        }
        if (string == null || "".equals(string)) {
            i = 60200300;
        } else {
            String[] strArrSplit = string.split("\\.");
            if (strArrSplit.length == 4) {
                StringBuilder sb = new StringBuilder();
                sb.append(strArrSplit[0]);
                sb.append("0");
                sb.append(strArrSplit[1]);
                sb.append("0");
                sb.append(strArrSplit[2]);
                sb.append(strArrSplit[3]);
                LogM.i("HmsUtil", "hmsVersionStr " + string);
                i = Integer.parseInt(sb.toString());
            }
        }
        LogM.i("HmsUtil", "baseVersion " + i);
        int iA = new maa(i).a(context);
        LogM.i("HmsUtil", "Hms is :" + iA);
        a = true;
        if (iA == 0) {
            LogM.i("HmsUtil", "Hms is avaiable");
        } else {
            AvailableAdapter availableAdapter = new AvailableAdapter(i);
            if (!availableAdapter.isUserResolvableError(iA)) {
                LogM.e("HmsUtil", "Hms is not avaiable 26");
            } else if (!c) {
                if (2 == iA && e) {
                    LogM.i("HmsUtil", "Hms is resolution, isHmApk: " + e);
                    a(context);
                }
                a(availableAdapter, context);
                c = true;
            }
        }
        d = iA;
        return iA;
    }

    public static void setHmApk(boolean z) {
        LogM.i("HmsUtil", "setHmApk: " + z);
        e = z;
    }

    public static void setRepeatFlag(boolean z) {
        b = z;
        mac.a(z);
    }
}
