package com.huawei.location.lite.common.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.huawei.hms.framework.common.ContextCompat;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class NetworkUtil {
    private static NetworkInfo getNetworkInfo(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(context, "connectivity");
        if (connectivityManager != null) {
            try {
                return connectivityManager.getActiveNetworkInfo();
            } catch (RuntimeException unused) {
                LogConsole.i("NetworkUtil", "getActiveNetworkInfo failed, exception");
            }
        }
        return null;
    }

    public static String getNetworkState() {
        int networkType = com.huawei.hms.framework.common.NetworkUtil.getNetworkType(ContextUtil.getContext());
        return networkType != 1 ? networkType != 2 ? networkType != 3 ? networkType != 4 ? networkType != 5 ? "" : "5G" : "4G" : "3G" : "2G" : "wifi";
    }

    public static int getNetworkType() {
        return com.huawei.hms.framework.common.NetworkUtil.getNetworkType(ContextUtil.getContext()) != 1 ? 0 : 1;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo networkInfo;
        return PermissionUtil.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") && (networkInfo = getNetworkInfo(context)) != null && networkInfo.isConnected();
    }
}
