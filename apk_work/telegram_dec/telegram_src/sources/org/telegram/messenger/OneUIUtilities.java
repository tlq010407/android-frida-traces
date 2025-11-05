package org.telegram.messenger;

import android.os.Build;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class OneUIUtilities {
    public static final int ONE_UI_4_0 = 40000;
    private static Boolean isOneUI;
    private static int oneUIEncodedVersion;
    private static int oneUIMajorVersion;
    private static float oneUIMinorVersion;

    public static int getOneUIEncodedVersion() {
        if (isOneUI()) {
            return oneUIEncodedVersion;
        }
        return 0;
    }

    public static int getOneUIMajorVersion() {
        if (isOneUI()) {
            return oneUIMajorVersion;
        }
        return 0;
    }

    public static float getOneUIMinorVersion() {
        return !isOneUI() ? BitmapDescriptorFactory.HUE_RED : oneUIMinorVersion;
    }

    public static boolean hasBuiltInClipboardToasts() {
        return isOneUI() && getOneUIEncodedVersion() == 40000;
    }

    public static boolean isOneUI() throws NoSuchFieldException, SecurityException {
        int iIntValue;
        Boolean bool = isOneUI;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Field declaredField = Build.VERSION.class.getDeclaredField("SEM_PLATFORM_INT");
            declaredField.setAccessible(true);
            iIntValue = ((Integer) declaredField.get(null)).intValue();
        } catch (Exception unused) {
            isOneUI = Boolean.FALSE;
        }
        if (iIntValue < 100000) {
            return false;
        }
        int i = iIntValue - 90000;
        oneUIEncodedVersion = i;
        oneUIMajorVersion = i / 10000;
        oneUIMinorVersion = (i % 10000) / 100.0f;
        isOneUI = Boolean.TRUE;
        return isOneUI.booleanValue();
    }
}
