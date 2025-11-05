package com.huawei.hms.maps.common.util;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.agconnect.AGConnectInstance;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.common.util.AGCUtils;
import com.huawei.hms.maps.MapClientIdentify;
import com.huawei.hms.maps.model.RuntimeRemoteException;
import com.huawei.hms.maps.utils.LogM;
import com.huawei.hms.maps.utils.MapsAdvUtil;
import com.huawei.hms.maps.utils.mag;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class maa {
    public static void a(Context context) {
        if (TextUtils.isEmpty(b(context))) {
            LogM.e("ConfigCheckUtil", "AppId is null. Please check whether the agconnect-services.json file is added to your app project.");
            throw new RuntimeRemoteException("AppId is null. Please check whether the agconnect-services.json file is added to your app project.");
        }
        if (TextUtils.isEmpty(MapsAdvUtil.getAccessToken()) && TextUtils.isEmpty(c(context))) {
            LogM.e("ConfigCheckUtil", "ApiKey and token is null. Please check whether set accessToken or the agconnect-services.json file is added to your app project.");
            throw new RuntimeRemoteException("ApiKey and token is null. Please check whether set accessToken or the agconnect-services.json file is added to your app project.");
        }
    }

    public static String b(Context context) throws IOException {
        AGConnectInstance.initialize(context);
        String appId = "";
        try {
            appId = AGConnectServicesConfig.fromContext(context).getString("client/app_id", "");
        } catch (NullPointerException unused) {
            LogM.e("ConfigCheckUtil", "Get appId with AGConnectServicesConfig failed");
        }
        if (TextUtils.isEmpty(appId)) {
            appId = AGCUtils.getAppId(context);
        }
        return TextUtils.isEmpty(appId) ? mag.a(context) : appId;
    }

    public static String c(Context context) {
        String apiKey = MapClientIdentify.getApiKey();
        return TextUtils.isEmpty(apiKey) ? AGConnectServicesConfig.fromContext(context).getString("client/api_key") : apiKey;
    }
}
