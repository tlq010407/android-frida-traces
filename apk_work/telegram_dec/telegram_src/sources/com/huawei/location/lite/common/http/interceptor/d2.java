package com.huawei.location.lite.common.http.interceptor;

import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.http.exception.AuthException;
import com.huawei.location.lite.common.http.exception.ErrorCode;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.wisesecurity.ucs.common.exception.UcsCryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class d2 extends Vw {
    private int yn = 0;

    private boolean yn(long j) {
        if (j != 1020) {
            return false;
        }
        int i = this.yn + 1;
        this.yn = i;
        if (i > 3) {
            return false;
        }
        com.huawei.location.lite.common.http.sign.ucs.yn.yn().Vw();
        return true;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        return chain.proceed(yn(chain.request()));
    }

    @Override // com.huawei.location.lite.common.http.interceptor.Vw
    public Request yn(Request request, com.huawei.location.lite.common.http.sign.Vw vw) throws AuthException {
        try {
            String strYn = com.huawei.location.lite.common.http.sign.ucs.yn.yn().yn(ContextUtil.getContext(), vw);
            LogConsole.d("UcsAuthInterceptor", "auth:" + strYn);
            return request.newBuilder().addHeader("authorization", strYn).build();
        } catch (UcsCryptoException e) {
            LogConsole.e("UcsAuthInterceptor", "UcsCryptoException:" + e.getMessage());
            if (yn(e.getErrorCode())) {
                return yn(request, vw);
            }
            LogConsole.e("UcsAuthInterceptor", "AuthException:41");
            throw new AuthException(ErrorCode.valueOf(41));
        } catch (UcsException e2) {
            LogConsole.e("UcsAuthInterceptor", "UcsException:errorCode:" + e2.getErrorCode() + ",message:" + e2.getMessage());
            if (yn(e2.getErrorCode())) {
                return yn(request, vw);
            }
            LogConsole.e("UcsAuthInterceptor", "AuthException:41");
            throw new AuthException(ErrorCode.valueOf(41));
        }
    }
}
