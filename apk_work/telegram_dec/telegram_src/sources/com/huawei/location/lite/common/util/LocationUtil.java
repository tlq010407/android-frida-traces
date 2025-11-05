package com.huawei.location.lite.common.util;

import android.content.Context;
import android.content.IntentFilter;
import android.provider.Settings;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.android.receiver.ScreenStatusBroadcastReceiver;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class LocationUtil {
    private static AtomicBoolean isRegister = new AtomicBoolean(false);
    private static volatile int locatorSDKVersion = 0;

    public static int getLocatorSDKVersion() {
        return locatorSDKVersion;
    }

    public static boolean isBlePresent(Context context) {
        if (context == null) {
            LogConsole.e("LocationUtil", "isBlePresent Context is null");
            return false;
        }
        boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le");
        LogConsole.i("LocationUtil", "isBlePresent isBlePresent is " + zHasSystemFeature);
        return zHasSystemFeature;
    }

    public static boolean isBlueBoothEnabled(Context context) {
        if (context == null) {
            LogConsole.e("LocationUtil", "isBlueBoothEnabled Context is null");
            return false;
        }
        int i = Settings.Global.getInt(context.getContentResolver(), "bluetooth_on", -1);
        boolean z = i == 1;
        LogConsole.i("LocationUtil", "isBlueBoothEnabled locationMode is " + i);
        return z;
    }

    public static boolean isLocationEnabled(Context context) throws Settings.SettingNotFoundException {
        String str;
        if (context == null) {
            str = "isLocationEnabled Context is null";
        } else {
            try {
                int i = Settings.Secure.getInt(context.getContentResolver(), "location_mode");
                LogConsole.i("LocationUtil", "isLocationEnabled locationMode is " + i);
                return i == 3;
            } catch (Settings.SettingNotFoundException unused) {
                str = "isLocationEnabled SettingNotFoundException";
            }
        }
        LogConsole.e("LocationUtil", str);
        return false;
    }

    public static boolean isScanBleEnabled(Context context) throws Settings.SettingNotFoundException {
        if (context == null) {
            LogConsole.e("LocationUtil", "isScanBleEnabled Context is null");
            return false;
        }
        try {
            int i = Settings.Global.getInt(context.getContentResolver(), "ble_scan_always_enabled");
            z = i == 1;
            LogConsole.i("LocationUtil", "isScanBleEnabled locationMode is " + i);
        } catch (Settings.SettingNotFoundException unused) {
            LogConsole.e("LocationUtil", "isScanBleEnabled SettingNotFoundException");
        }
        return z;
    }

    public static synchronized void registerScreenStatusBroadcast() {
        LogConsole.i("LocationUtil", "registerScreenStatusBroadcast start");
        if (isRegister.get()) {
            LogConsole.i("LocationUtil", "registerScreenStatusBroadcast is Register");
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        ContextUtil.getContext().registerReceiver(new ScreenStatusBroadcastReceiver(), intentFilter);
        LogConsole.i("LocationUtil", "registerScreenStatusBroadcast end");
        isRegister.set(true);
    }
}
