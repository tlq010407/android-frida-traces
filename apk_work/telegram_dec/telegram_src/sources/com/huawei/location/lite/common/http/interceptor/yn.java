package com.huawei.location.lite.common.http.interceptor;

import com.huawei.location.lite.common.agc.AGCManager;
import com.huawei.wisesecurity.ucs.credential.Credential;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Request request = chain.request();
        com.huawei.location.lite.common.agc.yn agcInfo = AGCManager.getInstance().getAgcInfo();
        if (agcInfo != null) {
            request = request.newBuilder().header(Credential.EXPIRE_TIME, String.valueOf(agcInfo.yn())).header("token", agcInfo.Vw()).build();
        }
        return chain.proceed(request);
    }
}
