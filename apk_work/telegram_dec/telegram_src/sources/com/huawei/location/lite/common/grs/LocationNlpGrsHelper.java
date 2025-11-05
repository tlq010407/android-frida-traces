package com.huawei.location.lite.common.grs;

import android.text.TextUtils;
import com.huawei.hms.commonkit.config.Config;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.country.CountryCodeUtil;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class LocationNlpGrsHelper {
    private static String getGrsHost(String str, String str2, String str3) {
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        if (TextUtils.equals(str2, "com.huawei.hms.site") || TextUtils.equals(str2, "com.huawei.cloud.opensdkhianalytics")) {
            grsBaseInfo.setIssueCountry(str.toUpperCase(Locale.ROOT));
        } else {
            grsBaseInfo.setSerCountry(str.toUpperCase(Locale.ROOT));
        }
        return new GrsClient(ContextUtil.getContext(), grsBaseInfo).synGetGrsUrl(str2, str3);
    }

    public static String getGrsHostAddress(String str) {
        return getGrsHostAddress(CountryCodeUtil.getLocationCountryCode(), str, "ROOT");
    }

    public static String getGrsHostAddress(String str, String str2) {
        return getGrsHostAddress(str, str2, "ROOT");
    }

    public static String getGrsHostAddress(String str, String str2, String str3) {
        String grsHost;
        if (TextUtils.equals(str2, "com.huawei.hms.oobe")) {
            grsHost = Config.getString("GRS", String.format(Locale.ENGLISH, "grs://%s/%s", str2, "hmsprivacy"));
        } else {
            if (str2.equals("com.huawei.cloud.opensdkhianalytics")) {
                str3 = "ROOTV2";
            }
            grsHost = getGrsHost(str, str2, str3);
        }
        LogConsole.d("LocationNlpGrsHelper", "getGrsHostAddress serviceName:" + str2 + ", host:" + grsHost + ", serviceName.value:" + str2 + ", countryCode:" + str);
        return grsHost;
    }
}
