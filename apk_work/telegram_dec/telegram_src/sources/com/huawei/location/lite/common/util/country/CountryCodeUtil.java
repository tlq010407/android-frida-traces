package com.huawei.location.lite.common.util.country;

import android.text.TextUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.TelephonyUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class CountryCodeUtil {
    public static String getLocationCountryCode() {
        boolean zIsAirplaneModeOn = TelephonyUtil.isAirplaneModeOn();
        String str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
        if (zIsAirplaneModeOn) {
            LogConsole.i("CountryCodeUtil", "airplane Mode is on");
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
        String networkCountryCode = TelephonyUtil.getNetworkCountryCode();
        if (TextUtils.isEmpty(networkCountryCode) && !TelephonyUtil.isSimNetworkRoaming()) {
            networkCountryCode = TelephonyUtil.getSimCountryCode();
        }
        if (TextUtils.isEmpty(networkCountryCode)) {
            LogConsole.i("CountryCodeUtil", "get countryCode is UNKNOWN");
        } else {
            str = networkCountryCode;
        }
        LogConsole.d("CountryCodeUtil", "getLocatorCountryCode：" + str);
        return str;
    }
}
