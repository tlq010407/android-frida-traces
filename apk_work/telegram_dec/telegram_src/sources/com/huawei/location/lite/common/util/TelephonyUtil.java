package com.huawei.location.lite.common.util;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class TelephonyUtil {
    public static boolean checkWLANScan(Context context) {
        try {
            Object systemService = context.getApplicationContext().getSystemService("wifi");
            if (systemService instanceof WifiManager) {
                return ((WifiManager) systemService).isScanAlwaysAvailable();
            }
            return false;
        } catch (Exception unused) {
            LogConsole.e("TelephonyUtil", "isWLANScan error, system exception");
            return false;
        }
    }

    public static boolean checkWifiIsEnable(Context context) {
        try {
            Object systemService = context.getApplicationContext().getSystemService("wifi");
            if (systemService instanceof WifiManager) {
                return ((WifiManager) systemService).isWifiEnabled();
            }
            return false;
        } catch (Exception unused) {
            LogConsole.e("TelephonyUtil", "checkWifiIsEnable exception");
            return false;
        }
    }

    private static String checkedCountryCode(String str) {
        return (TextUtils.isEmpty(str) || str.length() != 2) ? "" : str;
    }

    public static String getMccCode() {
        String networkCountryIso;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) ContextUtil.getContext().getSystemService("phone");
            if (telephonyManager != null && (networkCountryIso = telephonyManager.getNetworkCountryIso()) != null) {
                if (!networkCountryIso.equals("")) {
                    return networkCountryIso;
                }
            }
            return "unknow";
        } catch (Exception unused) {
            LogConsole.e("TelephonyUtil", "Exception");
        }
        return "unknow";
    }

    public static String getNetworkCountryCode() {
        Object systemService;
        try {
            if (hasNoSimCard() || (systemService = ContextUtil.getHMSContext().getApplicationContext().getSystemService("phone")) == null || !(systemService instanceof TelephonyManager)) {
                return "";
            }
            TelephonyManager telephonyManager = (TelephonyManager) systemService;
            return telephonyManager.getPhoneType() != 2 ? checkedCountryCode(telephonyManager.getNetworkCountryIso()) : "";
        } catch (Exception unused) {
            LogConsole.e("TelephonyUtil", "getNetworkCountryCode exception", true);
            return "";
        }
    }

    public static String getSimCountryCode() {
        try {
            Object systemService = ContextUtil.getHMSContext().getApplicationContext().getSystemService("phone");
            if (!(systemService instanceof TelephonyManager)) {
                return "";
            }
            TelephonyManager telephonyManager = (TelephonyManager) systemService;
            return checkedCountryCode(telephonyManager.getSimState() == 5 ? telephonyManager.getSimCountryIso() : null);
        } catch (Exception unused) {
            LogConsole.e("TelephonyUtil", "getSimCountryCode exception", true);
            return "";
        }
    }

    public static boolean hasNoSimCard() {
        Object systemService = ContextUtil.getHMSContext().getApplicationContext().getSystemService("phone");
        if (systemService instanceof TelephonyManager) {
            int simState = ((TelephonyManager) systemService).getSimState();
            z = simState == 0 || simState == 1 || simState == 2 || simState == 3 || simState == 6 || simState == 7 || simState == 8;
            LogConsole.d("TelephonyUtil", "simState:" + simState);
        }
        return z;
    }

    public static boolean isAirplaneModeOn() {
        return Settings.Global.getInt(ContextUtil.getContext().getApplicationContext().getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static boolean isSimNetworkRoaming() {
        try {
            Object systemService = ContextUtil.getHMSContext().getApplicationContext().getSystemService("phone");
            if (systemService instanceof TelephonyManager) {
                return ((TelephonyManager) systemService).isNetworkRoaming();
            }
            return false;
        } catch (Exception unused) {
            LogConsole.e("TelephonyUtil", "isSimRoaming exception", true);
            return false;
        }
    }
}
