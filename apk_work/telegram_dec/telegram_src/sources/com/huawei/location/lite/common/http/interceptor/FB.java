package com.huawei.location.lite.common.http.interceptor;

import android.text.TextUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.location.lite.common.agc.AGCManager;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.DeviceInfoUtil;
import com.huawei.location.lite.common.util.LocationUtil;
import com.huawei.location.lite.common.util.ROMUtil;
import com.huawei.location.lite.common.util.RouterComponentType;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FB implements Interceptor {
    private void yn(Headers.Builder builder, String str, String str2) {
        try {
            builder.add(str, str2);
        } catch (IllegalArgumentException | NullPointerException unused) {
            LogConsole.d("CommonHeadsInterceptor", "add head failed : key or value is null or illegal");
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        String appId;
        String str;
        String string;
        Request request = chain.request();
        Headers.Builder builderNewBuilder = request.headers().newBuilder();
        if (RouterComponentType.getComponentType() == 1) {
            yn(builderNewBuilder, "X-HmsCore-V", Long.toString(APKUtil.getAppVersionCode(ContextUtil.getHMSContext())));
            yn(builderNewBuilder, "X-LocationKit-V", Long.toString(APKUtil.getAppVersionCode(ContextUtil.getContext())));
            yn(builderNewBuilder, "X-OS-V", ROMUtil.getEmuiVerName());
            appId = Integer.toString(LocationUtil.getLocatorSDKVersion());
            str = "X-LocatorSdk-V";
        } else {
            appId = AGCManager.getInstance().getAppId();
            str = HiAnalyticsConstant.HaKey.BI_KEY_APPID;
        }
        yn(builderNewBuilder, str, appId);
        yn(builderNewBuilder, "X-Device-Type", Integer.toString(DeviceInfoUtil.getDeviceFeature(ContextUtil.getContext())));
        yn(builderNewBuilder, "X-PhoneModel", DeviceInfoUtil.getDeviceModel());
        builderNewBuilder.removeAll("User-Agent");
        String property = System.getProperty("http.agent");
        if (TextUtils.isEmpty(property)) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            int length = property.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = property.charAt(i);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                } else {
                    sb.append(cCharAt);
                }
            }
            string = sb.toString();
        }
        yn(builderNewBuilder, "User-Agent", string);
        return chain.proceed(request.newBuilder().headers(builderNewBuilder.build()).build());
    }
}
