package com.huawei.location.lite.common.http;

import android.text.TextUtils;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.http.FB;
import com.huawei.location.lite.common.http.exception.ErrorCode;
import com.huawei.location.lite.common.http.exception.OnErrorException;
import com.huawei.location.lite.common.http.exception.OnFailureException;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.response.BaseResponse;
import com.huawei.location.lite.common.http.response.ResponseInfo;
import com.huawei.location.lite.common.report.ReportBuilder;
import okhttp3.OkHttpClient;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SubmitEx {
    private BaseRequest baseRequest;
    private yn commonDataHandler;
    private HttpConfigInfo httpConfigInfo;
    private OkHttpClient httpLocClient;

    private class TempResponse extends BaseResponse {
        private TempResponse() {
        }

        @Override // com.huawei.location.lite.common.http.response.BaseResponse
        public String getApiCode() {
            return this.code;
        }

        @Override // com.huawei.location.lite.common.http.response.BaseResponse
        public boolean isSuccess() {
            return TextUtils.isEmpty(this.code) || "0".equals(this.code);
        }
    }

    public SubmitEx(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
        this(null, baseRequest, httpConfigInfo, null);
    }

    public SubmitEx(OkHttpClient okHttpClient, BaseRequest baseRequest) {
        this(okHttpClient, baseRequest, null, null);
    }

    public SubmitEx(OkHttpClient okHttpClient, BaseRequest baseRequest, HttpConfigInfo httpConfigInfo, ReportBuilder reportBuilder) {
        this.baseRequest = baseRequest;
        this.httpConfigInfo = httpConfigInfo;
        this.commonDataHandler = new yn(reportBuilder);
        if (okHttpClient != null) {
            this.httpLocClient = okHttpClient;
        }
    }

    private ResponseInfo proxyGetExecuteResponse(boolean z) {
        if (this.httpLocClient == null) {
            return z ? FB.Vw.yn.Vw(this.httpConfigInfo, this.baseRequest) : FB.Vw.yn.yn(this.httpConfigInfo, this.baseRequest);
        }
        E5 e5 = new E5(ContextUtil.getContext(), this.httpLocClient, this.baseRequest);
        return z ? e5.FB() : e5.yn();
    }

    private Object throwErrorLevelException(ResponseInfo responseInfo) throws OnErrorException, OnFailureException {
        if (responseInfo.getErrorLevel() == 100) {
            this.commonDataHandler.yn(this.baseRequest, String.valueOf(responseInfo.getErrorCode()), responseInfo.getMsg());
            throw new OnErrorException(String.valueOf(responseInfo.getErrorCode()), responseInfo.getMsg());
        }
        this.commonDataHandler.yn(this.baseRequest, String.valueOf(responseInfo.getErrorCode()), responseInfo.getMsg());
        throw new OnFailureException(new ErrorCode(responseInfo.getErrorCode(), responseInfo.getMsg()));
    }

    public synchronized BaseResponse execute(Class cls) {
        ResponseInfo responseInfoProxyGetExecuteResponse = proxyGetExecuteResponse(false);
        String responseString = responseInfoProxyGetExecuteResponse.getResponseString();
        if (TextUtils.isEmpty(responseString)) {
            return (BaseResponse) throwErrorLevelException(responseInfoProxyGetExecuteResponse);
        }
        BaseResponse baseResponse = (BaseResponse) this.commonDataHandler.yn(responseString, cls);
        if (baseResponse.isSuccess()) {
            this.commonDataHandler.yn(this.baseRequest, String.valueOf(200), ErrorCode.valueOfKey(200));
            return baseResponse;
        }
        this.commonDataHandler.yn(this.baseRequest, baseResponse.getApiCode(), baseResponse.getMsg());
        throw new OnErrorException(baseResponse.getApiCode(), baseResponse.getMsg());
    }

    public synchronized byte[] executeOriginal() {
        ResponseInfo responseInfoProxyGetExecuteResponse = proxyGetExecuteResponse(true);
        byte[] responseBytes = responseInfoProxyGetExecuteResponse.getResponseBytes();
        if (responseBytes.length > 0) {
            return responseBytes;
        }
        return (byte[]) throwErrorLevelException(responseInfoProxyGetExecuteResponse);
    }
}
