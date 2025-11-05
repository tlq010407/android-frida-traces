package com.huawei.location.lite.common.http.interceptor;

import android.net.Uri;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.APKUtil;
import com.huawei.location.lite.common.util.CanonicalQueryString;
import com.huawei.location.lite.common.util.RouterComponentType;
import java.net.MalformedURLException;
import java.net.URL;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LW implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        String strValueOf;
        String str;
        Request request = chain.request();
        Uri.Builder builderBuildUpon = Uri.parse(request.url().toString()).buildUpon();
        if (builderBuildUpon == null) {
            LogConsole.e("CommonRequestParamInterceptor", "injectParamsIntoUrl url parse return null");
        } else {
            if (RouterComponentType.getComponentType() == 0) {
                LogConsole.i("CommonRequestParamInterceptor", "clientLiteSDKVersion:20400300");
                strValueOf = String.valueOf(20400300);
                str = "clientLiteSDKVersion";
            } else {
                long thirdAppVersionCode = APKUtil.getThirdAppVersionCode(ContextUtil.getContext().getPackageName());
                LogConsole.i("CommonRequestParamInterceptor", "clientVersion:" + thirdAppVersionCode);
                strValueOf = String.valueOf(thirdAppVersionCode);
                str = "clientVersion";
            }
            String string = builderBuildUpon.appendQueryParameter(str, strValueOf).build().toString();
            try {
                if (string.contains("?")) {
                    URL url = new URL(string);
                    string = string.split("\\?")[0] + "?" + new CanonicalQueryString(url.getQuery()).toString();
                }
            } catch (MalformedURLException unused) {
                LogConsole.e("CommonRequestParamInterceptor", "url parse exception");
            }
            request = request.newBuilder().url(string).build();
        }
        return chain.proceed(request);
    }
}
