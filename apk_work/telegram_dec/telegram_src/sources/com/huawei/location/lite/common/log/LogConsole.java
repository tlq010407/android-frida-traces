package com.huawei.location.lite.common.log;

import com.huawei.location.lite.common.log.logwrite.LogWriteApi;
import com.huawei.location.lite.common.util.RouterComponentType;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class LogConsole {
    private static boolean IS_DEBUG = false;
    private static final yn LOG_ADAPTOR = new yn();

    public static void d(String str, String str2) {
        if (IS_DEBUG) {
            LOG_ADAPTOR.yn(3, str, str2);
            if (RouterComponentType.getComponentType() == 0) {
                LogWriteApi.d(str, str2, null);
            }
        }
    }

    public static void e(String str, String str2) {
        LOG_ADAPTOR.yn(6, str, str2);
        if (RouterComponentType.getComponentType() == 0) {
            LogWriteApi.e(str, str2, null);
        }
    }

    public static void e(String str, String str2, boolean z) {
        LOG_ADAPTOR.yn(6, str, str2);
        if (z) {
            Vw.yn(str, Vw.yn(str, str2));
        }
        if (RouterComponentType.getComponentType() == 0) {
            LogWriteApi.e(str, str2, null);
        }
    }

    public static void e(String str, List list, boolean z) {
        LOG_ADAPTOR.yn(6, str, Vw.yn(list));
        if (z) {
            Vw.yn(str, Vw.yn(str, list));
        }
    }

    public static void i(String str, String str2) {
        LOG_ADAPTOR.yn(4, str, str2);
        if (RouterComponentType.getComponentType() == 0) {
            LogWriteApi.i(str, str2, null);
        }
    }

    public static void i(String str, String str2, boolean z) {
        LOG_ADAPTOR.yn(4, str, str2);
        if (z) {
            Vw.yn(str, Vw.yn(str, str2));
        }
        if (RouterComponentType.getComponentType() == 0) {
            LogWriteApi.i(str, str2, null);
        }
    }

    public static void w(String str, String str2) {
        LOG_ADAPTOR.yn(5, str, str2);
        if (RouterComponentType.getComponentType() == 0) {
            LogWriteApi.w(str, str2, null);
        }
    }
}
