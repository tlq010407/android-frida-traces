package com.huawei.location.lite.common.util;

import android.content.Context;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class DeviceInfoUtil {
    private static final DeviceType[] DTYPE_LIST;
    private static final String[] FEATURE_ANDROID = {"android.hardware.type.", "android.software."};
    private static final List KNOWED_VENDOR_MANUFACTURERS = Arrays.asList("HUAWEI", "HONOR", "Xiaomi", "vivo", "OPPO", "OnePlus", "Meizu", "ZTE", "nubia", "HTC", "asus", "Google", "samsung", "Sony", "motorola", "HMD Global");
    private static final List KID_CHARACTERS = Arrays.asList("kidpad", "kidwatch");
    private static volatile int deviceType = -1;
    private static volatile String userType = "";
    private static volatile String pub_mfc = "";
    private static volatile String brand = "";
    private static volatile String model = "";
    private static volatile String serial = "";

    private static final class DeviceType {
        private String androidFeature;
        private String androidPropChar;
        private String huaweiFeature;
        private boolean hwHasSubFeatures;
        private int id;

        private DeviceType(int i, String str, boolean z, String str2, String str3) {
            this.id = i;
            this.huaweiFeature = str;
            this.hwHasSubFeatures = z;
            this.androidPropChar = str2;
            this.androidFeature = str3;
        }
    }

    static {
        String str = null;
        boolean z = false;
        boolean z2 = false;
        DTYPE_LIST = new DeviceType[]{new DeviceType(0, "handset", false, "default", null), new DeviceType(1, "pad", false, "tablet", null), new DeviceType(2, "watch", true, "watch", "watch"), new DeviceType(3, "kidwatch", false, "kidwatch", null), new DeviceType(4, "tv", true, "tv", "television"), new DeviceType(4, "tv", true, "tv", "leanback"), new DeviceType(5, "mobiletv", z, "mobiletv", str), new DeviceType(6, "glass", z2, null, null), new DeviceType(7, "earphone", z, null, str), new DeviceType(8, "car", z2, "car", "automotive")};
    }

    private static int detectAndroidFeature(FeatureInfo[] featureInfoArr) {
        LogConsole.d("DeviceInfoUtil", "Checking Android Features...");
        HashSet hashSet = new HashSet();
        for (FeatureInfo featureInfo : featureInfoArr) {
            if (featureInfo != null) {
                String nickNameByAndroidFeature = parseNickNameByAndroidFeature(featureInfo.name);
                if (!TextUtils.isEmpty(nickNameByAndroidFeature)) {
                    hashSet.add(nickNameByAndroidFeature);
                }
            }
        }
        return getTypeFromDTypeList(hashSet);
    }

    private static int detectDeviceType(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            LogConsole.e("DeviceInfoUtil", "packageManager is null.");
            return -1;
        }
        FeatureInfo[] systemAvailableFeatures = packageManager.getSystemAvailableFeatures();
        int iDetectHuaweiFeature = detectHuaweiFeature(systemAvailableFeatures);
        LogConsole.i("DeviceInfoUtil", "1. detectHuaweiFeature: " + iDetectHuaweiFeature);
        if (iDetectHuaweiFeature == -1) {
            iDetectHuaweiFeature = -1;
        } else if (iDetectHuaweiFeature != 0) {
            return iDetectHuaweiFeature;
        }
        int iDetectAndroidFeature = detectAndroidFeature(systemAvailableFeatures);
        LogConsole.i("DeviceInfoUtil", "2. detectAndroidFeature: " + iDetectAndroidFeature);
        if (iDetectAndroidFeature != -1) {
            return iDetectAndroidFeature;
        }
        int iDetectSystemProperty = detectSystemProperty();
        LogConsole.i("DeviceInfoUtil", "3. detectSystemProperty: " + iDetectSystemProperty);
        return iDetectSystemProperty == -1 ? iDetectHuaweiFeature : iDetectSystemProperty;
    }

    private static int detectHuaweiFeature(FeatureInfo[] featureInfoArr) {
        int i;
        LogConsole.d("DeviceInfoUtil", "Checking Huawei Features...");
        int length = featureInfoArr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            if (i2 >= length) {
                break;
            }
            FeatureInfo featureInfo = featureInfoArr[i2];
            if (featureInfo != null) {
                String str = featureInfo.name;
                if (!TextUtils.isEmpty(str)) {
                    if (str.startsWith("com.huawei.software.features.")) {
                        i = 29;
                    } else if (str.startsWith("com.hihonor.software.features.")) {
                        i = 30;
                    } else {
                        continue;
                    }
                    String strSubstring = str.substring(i);
                    for (DeviceType deviceType2 : DTYPE_LIST) {
                        if (strSubstring.equals(deviceType2.huaweiFeature)) {
                            i3 = deviceType2.id;
                            if (!deviceType2.hwHasSubFeatures) {
                                break;
                            }
                        }
                    }
                    if (i3 != -1) {
                        LogConsole.i("DeviceInfoUtil", "Huawei Feature is found: " + featureInfo.name);
                        break;
                    }
                } else {
                    continue;
                }
            }
            i2++;
        }
        return i3;
    }

    private static int detectSystemProperty() {
        LogConsole.d("DeviceInfoUtil", "Checking system properties...");
        String character = SystemPropertiesUtil.getCharacter();
        if (TextUtils.isEmpty(character)) {
            return -1;
        }
        List listAsList = Arrays.asList(character.split(",", 10));
        LogConsole.d("DeviceInfoUtil", "Got Character list: " + listAsList);
        int i = -1;
        for (DeviceType deviceType2 : DTYPE_LIST) {
            if (listAsList.contains(deviceType2.androidPropChar)) {
                i = deviceType2.id;
                if (!deviceType2.hwHasSubFeatures) {
                    break;
                }
            }
        }
        if (i == -1) {
            LogConsole.i("DeviceInfoUtil", "System property not found.");
        }
        return i;
    }

    public static synchronized String getBrand() {
        if (!TextUtils.isEmpty(brand)) {
            return brand;
        }
        brand = Build.BRAND;
        return brand;
    }

    public static int getDeviceFeature(Context context) {
        if (deviceType != -1) {
            LogConsole.i("DeviceInfoUtil", "get deviceType from cache: " + deviceType);
            return deviceType;
        }
        if (context == null) {
            LogConsole.e("DeviceInfoUtil", "context is null.");
            return deviceType;
        }
        int iDetectDeviceType = detectDeviceType(context);
        if (iDetectDeviceType != -1) {
            deviceType = iDetectDeviceType;
        }
        LogConsole.i("DeviceInfoUtil", "Final DeviceType: " + deviceType);
        return iDetectDeviceType;
    }

    public static synchronized String getDeviceModel() {
        if (!TextUtils.isEmpty(model)) {
            return model;
        }
        model = Build.MODEL;
        return model;
    }

    public static synchronized String getManufacturer() {
        if (!TextUtils.isEmpty(pub_mfc)) {
            return pub_mfc;
        }
        pub_mfc = Build.MANUFACTURER;
        return pub_mfc;
    }

    private static int getTypeFromDTypeList(Set set) {
        LogConsole.d("DeviceInfoUtil", "androidFeaturesNickNames :" + set);
        Iterator it = set.iterator();
        int i = -1;
        while (it.hasNext()) {
            String str = (String) it.next();
            for (DeviceType deviceType2 : DTYPE_LIST) {
                if (str.equals(deviceType2.androidFeature)) {
                    i = deviceType2.id;
                    if (!deviceType2.hwHasSubFeatures) {
                        break;
                    }
                }
            }
            if (i != -1) {
                break;
            }
        }
        return i;
    }

    public static boolean isHuaweiWatch() {
        return isWatch() && ROMUtil.isHuaweiPlatformDevice();
    }

    public static boolean isWatch() {
        return getDeviceFeature(ContextUtil.getContext()) == 2;
    }

    private static String parseNickNameByAndroidFeature(String str) {
        String strSubstring = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArr = FEATURE_ANDROID;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            String str2 = strArr[i];
            if (str.startsWith(str2)) {
                strSubstring = str.substring(str2.length());
                break;
            }
            i++;
        }
        LogConsole.d("DeviceInfoUtil", "featureInfoName relative nick name :" + strSubstring);
        return strSubstring;
    }
}
