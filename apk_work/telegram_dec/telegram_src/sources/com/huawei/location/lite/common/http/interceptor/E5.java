package com.huawei.location.lite.common.http.interceptor;

import com.huawei.location.lite.common.http.sign.tss.TssSignHelper;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class E5 extends Vw {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        return chain.proceed(yn(chain.request()));
    }

    @Override // com.huawei.location.lite.common.http.interceptor.Vw
    public Request yn(Request request, com.huawei.location.lite.common.http.sign.Vw vw) {
        return request.newBuilder().addHeader("authorization", TssSignHelper.getInstance().getSignature(vw)).build();
    }
}
