package com.huawei.location.lite.common.util;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import java.io.File;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class LoadSoUtil {
    private static boolean isLoadSuccess = false;

    public static String getCurrentCpuAbi(Context context) {
        int i = Build.VERSION.SDK_INT;
        return (i < 23 ? i < 21 || TextUtils.isEmpty(context.getApplicationInfo().nativeLibraryDir) || !context.getApplicationInfo().nativeLibraryDir.contains("arm64") : !Process.is64Bit()) ? "armeabi-v7a" : "arm64-v8a";
    }

    public static String getFilePath(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            context = context.createDeviceProtectedStorageContext();
        }
        return context.getFilesDir().getPath();
    }

    public static synchronized boolean loadLocalSo(String str) {
        if (!isLoadSuccess) {
            LogConsole.e("LoadSoUtil", "init load so fail");
            return false;
        }
        if (!TextUtils.isEmpty(str) && str.contains(".so")) {
            String currentCpuAbi = getCurrentCpuAbi(ContextUtil.getContext());
            StringBuilder sb = new StringBuilder();
            sb.append(getFilePath(RouterComponentType.getComponentType() == 1 ? ContextUtil.getHMSContext() : ContextUtil.getContext()));
            String str2 = File.separator;
            sb.append(str2);
            sb.append("kits");
            sb.append(str2);
            sb.append(ContextUtil.getContext().getPackageName());
            sb.append(str2);
            sb.append(APKUtil.getAppVersionCode(ContextUtil.getContext()));
            sb.append(str2);
            sb.append("lib");
            sb.append(str2);
            sb.append(currentCpuAbi);
            sb.append(str2);
            sb.append(str);
            String string = sb.toString();
            if (new File(string).exists()) {
                System.load(string);
                return true;
            }
            LogConsole.e("LoadSoUtil", "load Local so error because of so file not exist");
            return false;
        }
        LogConsole.e("LoadSoUtil", "so name not valid");
        return false;
    }

    public static boolean loadSo(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            File file = new File(str2 + File.separator + str);
            if (file.exists() && file.length() > 0) {
                System.load(file.getCanonicalPath());
                return true;
            }
            return false;
        } catch (IOException unused) {
            LogConsole.d("LoadSoUtil", "loadSo exception:Invalid file path");
            return false;
        }
    }
}
