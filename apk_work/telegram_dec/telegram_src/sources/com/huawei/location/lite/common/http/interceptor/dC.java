package com.huawei.location.lite.common.http.interceptor;

import com.huawei.location.lite.common.http.sign.tss.TssSignHelper;
import com.huawei.location.lite.common.log.LogConsole;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class dC extends Vw {
    private int yn = 0;

    private Response yn(Interceptor.Chain chain, Request request) {
        Response responseProceed = chain.proceed(request);
        if (responseProceed != null && responseProceed.code() == 401) {
            int i = this.yn + 1;
            this.yn = i;
            if (i <= 3) {
                LogConsole.d("BaseAuthInterceptor", "401 error retry request");
                if (this.yn != 3) {
                    return yn(chain, request);
                }
                TssSignHelper.getInstance().clearLocalCertifiedCredential();
                return yn(chain, yn(request));
            }
        }
        return responseProceed;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        LogConsole.d("BaseAuthInterceptor", "CommonRespInterceptor handleResponse start");
        this.yn = 0;
        Response responseYn = yn(chain, chain.request());
        LogConsole.d("BaseAuthInterceptor", "CommonRespInterceptor handleResponse end");
        return responseYn;
    }

    @Override // com.huawei.location.lite.common.http.interceptor.Vw
    public Request yn(Request request, com.huawei.location.lite.common.http.sign.Vw vw) {
        return request.newBuilder().header("authorization", TssSignHelper.getInstance().getSignature(vw)).build();
    }
}
