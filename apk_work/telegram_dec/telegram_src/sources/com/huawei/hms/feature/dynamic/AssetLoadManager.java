package com.huawei.hms.feature.dynamic;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.common.util.ExtractNativeUtils;
import com.huawei.hms.common.util.Logger;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AssetLoadManager {
    public static final String a = "AssetLoadManager";
    public static final String b = "dynamic_modules";
    public static final String c = ".apk";
    public static final String d = "com.huawei.hms.feature.dynamic.descriptors.";
    public static final String e = ".AssetModuleDescriptor";

    public static int a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            Logger.e(a, "Invalid context or moduleName.");
            return 0;
        }
        try {
            return context.getClassLoader().loadClass(d + str + e).getDeclaredField("MODULE_VERSION").getInt(null);
        } catch (ClassNotFoundException unused) {
            Logger.w(a, "Cannot get the class of module descriptor for " + str);
            return 0;
        } catch (Exception e2) {
            Logger.w(a, "Get local asset module info failed.", e2);
            return 0;
        }
    }

    public static Bundle a(Context context, File file, String str) throws NumberFormatException {
        String[] list = file.list();
        if (list == null || list.length == 0) {
            Logger.w(a, "No version in module path.");
            return new Bundle();
        }
        int i = 0;
        for (String str2 : list) {
            if (Integer.parseInt(str2) > i) {
                i = Integer.parseInt(str2);
            }
        }
        if (i == 0) {
            Logger.w(a, "Cannot get module version path.");
            return new Bundle();
        }
        ModuleCopy.clearLowVersionModule(i, file.getAbsolutePath(), list, a);
        if (a(context, str) > i) {
            Logger.i(a, "There is a higher loader version in assets.");
            return new Bundle();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(file.getAbsolutePath());
        String str3 = File.separator;
        sb.append(str3);
        sb.append(i);
        sb.append(str3);
        sb.append(str);
        sb.append(".apk");
        File file2 = new File(sb.toString());
        if (!file2.exists()) {
            Logger.w(a, "Cannot find module apk in asset decompressed path.");
            return new Bundle();
        }
        Bundle bundle = new Bundle();
        bundle.putString(b.j, str);
        bundle.putString(b.n, file2.getAbsolutePath());
        bundle.putInt(b.m, i);
        Logger.i(a, "Get module info from decompressed asset path success: ModuleName:" + str + ", ModuleVersion:" + i + ", ModulePath:" + file2.getAbsolutePath());
        return bundle;
    }

    public static String a(Context context, String str, int i, String str2) throws Throwable {
        InputStream inputStreamOpen;
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream;
        String str3;
        String str4;
        FileOutputStream fileOutputStream2 = null;
        try {
            AssetManager assets = context.getAssets();
            StringBuilder sb = new StringBuilder();
            sb.append("dynamic_modules");
            str3 = File.separator;
            sb.append(str3);
            sb.append(str);
            sb.append(str3);
            sb.append(str2);
            inputStreamOpen = assets.open(sb.toString());
            try {
                bufferedInputStream = new BufferedInputStream(inputStreamOpen);
                try {
                    str4 = ModuleCopy.getProtectedPath(context) + str3 + "dynamic_modules" + str3 + str + str3 + i;
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = null;
                } catch (Throwable th) {
                    th = th;
                    ModuleCopy.closeQuietly(bufferedInputStream);
                    ModuleCopy.closeQuietly(fileOutputStream2);
                    ModuleCopy.closeQuietly(inputStreamOpen);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
                bufferedInputStream = null;
                Logger.w(a, "Cannot find module:" + str + " in assets.", e);
                ModuleCopy.closeQuietly(bufferedInputStream);
                ModuleCopy.closeQuietly(fileOutputStream);
                ModuleCopy.closeQuietly(inputStreamOpen);
                return null;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
                ModuleCopy.closeQuietly(bufferedInputStream);
                ModuleCopy.closeQuietly(fileOutputStream2);
                ModuleCopy.closeQuietly(inputStreamOpen);
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            inputStreamOpen = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpen = null;
        }
        if (!new File(str4).exists() && !new File(str4).mkdirs()) {
            Logger.w(a, "mkdirs local loaderPath failed.");
            ModuleCopy.closeQuietly(bufferedInputStream);
            ModuleCopy.closeQuietly(null);
            ModuleCopy.closeQuietly(inputStreamOpen);
            return null;
        }
        String str5 = str4 + str3 + str + ".apk";
        fileOutputStream = new FileOutputStream(new File(str5));
        try {
            try {
                byte[] bArr = new byte[LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM];
                while (true) {
                    int i2 = bufferedInputStream.read(bArr, 0, LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM);
                    if (i2 == -1) {
                        Logger.i(a, "Decompress module:" + str + " from assets success.");
                        ModuleCopy.closeQuietly(bufferedInputStream);
                        ModuleCopy.closeQuietly(fileOutputStream);
                        ModuleCopy.closeQuietly(inputStreamOpen);
                        return str5;
                    }
                    fileOutputStream.write(bArr, 0, i2);
                }
            } catch (Exception e5) {
                e = e5;
                Logger.w(a, "Cannot find module:" + str + " in assets.", e);
                ModuleCopy.closeQuietly(bufferedInputStream);
                ModuleCopy.closeQuietly(fileOutputStream);
                ModuleCopy.closeQuietly(inputStreamOpen);
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = fileOutputStream;
            ModuleCopy.closeQuietly(bufferedInputStream);
            ModuleCopy.closeQuietly(fileOutputStream2);
            ModuleCopy.closeQuietly(inputStreamOpen);
            throw th;
        }
    }

    public static Bundle b(Context context, String str) throws Throwable {
        try {
            String[] list = context.getAssets().list("dynamic_modules" + File.separator + str);
            if (list != null && list.length != 0) {
                String str2 = list[0];
                int iA = a(context, str);
                String strA = a(context, str, iA, str2);
                if (!TextUtils.isEmpty(strA) && new File(strA).exists()) {
                    if (ExtractNativeUtils.a(context, strA) && ExtractNativeUtils.a(new File(strA), ModuleCopy.trimLastSection(strA)) != 0) {
                        Logger.w(a, "Extract native to current dir failed.");
                        return new Bundle();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString(b.j, str);
                    bundle.putString(b.n, strA);
                    bundle.putInt(b.m, iA);
                    Logger.i(a, "Get dynamic module info from asset success: ModuleName:" + str + ", ModuleVersion:" + iA + ", ModulePath:" + strA);
                    return bundle;
                }
                Logger.w(a, "Decompress module from assets failed.");
                return new Bundle();
            }
            Logger.w(a, "No module apk in asset path.");
            return new Bundle();
        } catch (Exception e2) {
            Logger.i(a, "getModuleFromAsset failed.", e2);
            return new Bundle();
        }
    }

    public static Bundle getAssetModuleInfo(Context context, String str) throws Throwable {
        if (context == null || TextUtils.isEmpty(str)) {
            Logger.w(a, "The context or moduleName is null.");
            return new Bundle();
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(ModuleCopy.getProtectedPath(context));
            String str2 = File.separator;
            sb.append(str2);
            sb.append("dynamic_modules");
            sb.append(str2);
            sb.append(str);
            File file = new File(sb.toString());
            if (file.exists()) {
                Bundle bundleA = a(context, file, str);
                if (bundleA.getInt(b.m) > 0) {
                    Logger.i(a, "Successfully get module info from decompressed asset path.");
                    return bundleA;
                }
            }
            Bundle bundleB = b(context, str);
            if (bundleB.getInt(b.m) > 0) {
                Logger.i(a, "Successfully get module info from asset.");
                return bundleB;
            }
        } catch (Exception e2) {
            Logger.i(a, "getDataModuleInfo failed.", e2);
        }
        return new Bundle();
    }
}
