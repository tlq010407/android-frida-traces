package com.huawei.location.lite.common.util;

import android.os.Build;
import android.text.TextUtils;
import com.huawei.hms.framework.common.EmuiUtil;
import com.huawei.location.lite.common.log.LogConsole;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class ROMUtil {
    private static AtomicInteger EMUI_VERSION_CODE;
    private static AtomicBoolean IS_HUAWEI_DEVICE;
    private static AtomicBoolean ROM_HMS_GMS;
    private static AtomicBoolean ROM_REGION_IS_CN;
    private static AtomicInteger ROM_TYPE;

    public static String getEmuiVerName() {
        String eMUIVersion = SystemPropertiesUtil.getEMUIVersion();
        LogConsole.d("ROMUtil", "Emui version name: " + eMUIVersion);
        return eMUIVersion;
    }

    public static int getEmuiVersionCode() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        AtomicInteger atomicInteger = EMUI_VERSION_CODE;
        if (atomicInteger != null) {
            return atomicInteger.get();
        }
        int versionCodeFromBuild = getVersionCodeFromBuild(0);
        if (versionCodeFromBuild <= 0) {
            try {
                versionCodeFromBuild = Integer.parseInt(SystemPropertiesUtil.get("ro.build.hw_emui_api_level", "0"));
            } catch (NumberFormatException unused) {
                LogConsole.e("ROMUtil", "NumberFormatException: get hw_emui_api_level failed");
            }
        }
        LogConsole.i("ROMUtil", "EMUI_VERSION_CODE: " + versionCodeFromBuild);
        AtomicInteger atomicInteger2 = new AtomicInteger(versionCodeFromBuild);
        EMUI_VERSION_CODE = atomicInteger2;
        return atomicInteger2.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getHuaweiPlatformROMType() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        int i;
        AtomicInteger atomicInteger = ROM_TYPE;
        if (atomicInteger != null) {
            return atomicInteger.get();
        }
        String str = Build.MANUFACTURER;
        int emuiVersionCode = getEmuiVersionCode();
        str.hashCode();
        if (str.equals("HONOR")) {
            if (emuiVersionCode <= 0 || emuiVersionCode > 25) {
                if (emuiVersionCode == 26 || emuiVersionCode >= 29) {
                    i = emuiVersionCode >= 32 ? 6 : 2;
                }
            }
        } else if (!str.equals("HUAWEI")) {
            i = emuiVersionCode < 27 ? -1 : isUseBrandCust() ? 4 : 5;
        } else if (emuiVersionCode >= 27) {
            i = 3;
        } else if (emuiVersionCode > 0) {
            i = 1;
        }
        LogConsole.i("ROMUtil", "Rom type is " + i);
        AtomicInteger atomicInteger2 = new AtomicInteger(i);
        ROM_TYPE = atomicInteger2;
        return atomicInteger2.get();
    }

    private static int getVersionCodeFromBuild(int i) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        String str;
        try {
            Class<?> cls = Class.forName(EmuiUtil.BUILDEX_VERSION);
            Field field = cls.getField(EmuiUtil.EMUI_SDK_INT);
            AccessibleObject.setAccessible(new Field[]{field}, true);
            Object obj = field.get(cls);
            return (obj == null || !(obj instanceof Integer)) ? i : ((Integer) obj).intValue();
        } catch (ClassCastException unused) {
            str = "getVersionCodeFromBuild ClassCastException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (ClassNotFoundException unused2) {
            i = getVersionCodeFromHonorBuild(i);
            str = "getVersionCodeFromBuild ClassNotFoundException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (IllegalAccessException unused3) {
            str = "getVersionCodeFromBuild IllegalAccessException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (NoSuchFieldException unused4) {
            str = "getVersionCodeFromBuild NoSuchFieldException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (Exception unused5) {
            str = "getVersionCodeFromBuild unknown exception";
            LogConsole.e("ROMUtil", str);
            return i;
        }
    }

    private static int getVersionCodeFromHonorBuild(int i) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        String str;
        try {
            Class<?> cls = Class.forName("com.hihonor.android.os.Build$VERSION");
            Field field = cls.getField(EmuiUtil.EMUI_SDK_INT);
            AccessibleObject.setAccessible(new Field[]{field}, true);
            Object obj = field.get(cls);
            return (obj == null || !(obj instanceof Integer)) ? i : ((Integer) obj).intValue();
        } catch (ClassCastException unused) {
            str = "getVersionCodeFromHonorBuild ClassCastException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (ClassNotFoundException unused2) {
            str = "getVersionCodeFromHonorBuild ClassNotFoundException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (IllegalAccessException unused3) {
            str = "getVersionCodeFromHonorBuild IllegalAccessException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (NoSuchFieldException unused4) {
            str = "getVersionCodeFromHonorBuild NoSuchFieldException";
            LogConsole.e("ROMUtil", str);
            return i;
        } catch (Exception unused5) {
            str = "getVersionCodeFromHonorBuild unknown exception";
            LogConsole.e("ROMUtil", str);
            return i;
        }
    }

    public static boolean isChineseRom() {
        AtomicBoolean atomicBoolean = ROM_REGION_IS_CN;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        boolean zEqualsIgnoreCase = "CN".equalsIgnoreCase(SystemPropertiesUtil.getProRegion());
        LogConsole.d("ROMUtil", "isChineseRom is " + zEqualsIgnoreCase);
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(zEqualsIgnoreCase);
        ROM_REGION_IS_CN = atomicBoolean2;
        return atomicBoolean2.get();
    }

    public static boolean isGmsRom() {
        AtomicBoolean atomicBoolean = ROM_HMS_GMS;
        if (atomicBoolean != null) {
            atomicBoolean.get();
        }
        String str = SystemPropertiesUtil.get("ro.com.google.gmsversion", "");
        LogConsole.d("ROMUtil", "isGmsVersion is " + str);
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(TextUtils.isEmpty(str) ^ true);
        ROM_HMS_GMS = atomicBoolean2;
        return atomicBoolean2.get();
    }

    public static boolean isHuaweiPlatformDevice() {
        if (IS_HUAWEI_DEVICE != null) {
            LogConsole.i("ROMUtil", "is huawei device:" + IS_HUAWEI_DEVICE.get());
            return IS_HUAWEI_DEVICE.get();
        }
        boolean z = getHuaweiPlatformROMType() != -1;
        LogConsole.i("ROMUtil", "is huawei device:" + z);
        AtomicBoolean atomicBoolean = new AtomicBoolean(z);
        IS_HUAWEI_DEVICE = atomicBoolean;
        return atomicBoolean.get();
    }

    private static boolean isUseBrandCust() {
        return TextUtils.equals(SystemPropertiesUtil.get("hw_sc.product.useBrandCust", ""), "true");
    }
}
