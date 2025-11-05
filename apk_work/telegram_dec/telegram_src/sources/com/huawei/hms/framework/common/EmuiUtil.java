package com.huawei.hms.framework.common;

import com.huawei.android.os.BuildEx;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class EmuiUtil {
    private static final String BUILDEX_NAME = "com.huawei.android.os.BuildEx";
    public static final String BUILDEX_VERSION = "com.huawei.android.os.BuildEx$VERSION";
    private static final int EMUI_3_0 = 7;
    private static final int EMUI_3_1 = 8;
    private static final int EMUI_4_0 = 9;
    private static final int EMUI_4_1 = 10;
    private static final int EMUI_5_0 = 11;
    private static final int EMUI_6_0 = 14;
    private static final int EMUI_8_0_1 = 15;
    private static final int EMUI_9_0 = 17;
    public static final String EMUI_SDK_INT = "EMUI_SDK_INT";
    private static final int EMUI_TYPE_UNKOWN = -1;
    public static final String GET_PRIMARY_COLOR = "getPrimaryColor";
    public static final String GET_SUGGESTION_FOR_GROUND_COLOR_STYLE = "getSuggestionForgroundColorStyle";
    public static final String IMMERSION_STYLE = "com.huawei.android.immersion.ImmersionStyle";
    private static final String TAG = "KPMS_Util_Emui";
    private static final int TYPE_EMUI_30 = 30;
    private static final int TYPE_EMUI_31 = 31;
    private static final int TYPE_EMUI_40 = 40;
    private static final int TYPE_EMUI_41 = 41;
    private static final int TYPE_EMUI_50 = 50;
    private static final int TYPE_EMUI_60 = 60;
    private static final int TYPE_EMUI_801 = 81;
    private static final int TYPE_EMUI_90 = 90;
    private static int emuiType = -1;

    static {
        initEmuiType();
    }

    public static int getEMUIVersionCode() throws NoSuchFieldException {
        int iIntValue;
        Object staticFieldObj = ReflectionUtils.getStaticFieldObj(BUILDEX_VERSION, EMUI_SDK_INT);
        if (staticFieldObj != null) {
            try {
                iIntValue = ((Integer) staticFieldObj).intValue();
            } catch (ClassCastException e) {
                Logger.e(TAG, "getEMUIVersionCode ClassCastException:", e);
            }
        } else {
            iIntValue = 0;
        }
        Logger.d(TAG, "the emui version code is::" + iIntValue);
        return iIntValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void initEmuiType() throws NoSuchFieldException {
        int i;
        int eMUIVersionCode = getEMUIVersionCode();
        Logger.d(TAG, "getEmuiType emuiVersionCode=" + eMUIVersionCode);
        if (eMUIVersionCode >= 17) {
            i = 90;
        } else if (eMUIVersionCode >= 15) {
            i = 81;
        } else if (eMUIVersionCode >= 14) {
            i = 60;
        } else if (eMUIVersionCode >= 11) {
            i = 50;
        } else if (eMUIVersionCode >= 10) {
            i = 41;
        } else if (eMUIVersionCode >= 9) {
            i = 40;
        } else {
            if (eMUIVersionCode < 8) {
                if (eMUIVersionCode >= 7) {
                    i = 30;
                }
                if (emuiType != -1) {
                    Logger.i(TAG, "emuiType is unkown");
                    return;
                }
                return;
            }
            i = 31;
        }
        emuiType = i;
        if (emuiType != -1) {
        }
    }

    public static boolean isEMUI() {
        return -1 != emuiType;
    }

    public static boolean isUpPVersion() {
        if (!ReflectionUtils.checkCompatible(BUILDEX_NAME)) {
            Logger.w(TAG, "com.huawei.android.os.BuildEx : false");
            return false;
        }
        Logger.d(TAG, "com.huawei.android.os.BuildEx.VERSION.EMUI_SDK_INT: " + BuildEx.VERSION.EMUI_SDK_INT);
        return BuildEx.VERSION.EMUI_SDK_INT >= 17;
    }
}
