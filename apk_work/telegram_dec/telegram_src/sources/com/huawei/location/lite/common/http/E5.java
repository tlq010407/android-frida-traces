package com.huawei.location.lite.common.http;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.location.base.activity.constant.ActivityErrorCode;
import com.huawei.location.lite.common.http.exception.AuthException;
import com.huawei.location.lite.common.http.exception.ErrorCode;
import com.huawei.location.lite.common.http.exception.OnErrorException;
import com.huawei.location.lite.common.http.exception.OnFailureException;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.response.ResponseInfo;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.NetworkUtil;
import java.io.IOException;
import java.util.Iterator;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.ByteString;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class E5 {
    private Context FB;
    private BaseRequest Vw;
    private final OkHttpClient yn;

    public interface Vw {
        void yn(ResponseInfo responseInfo);
    }

    class yn implements Callback {
        final /* synthetic */ Vw yn;

        yn(Vw vw) {
            this.yn = vw;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            Vw vw;
            ResponseInfo responseInfoYn;
            if (iOException instanceof AuthException) {
                AuthException authException = (AuthException) iOException;
                vw = this.yn;
                responseInfoYn = E5.this.yn(100, authException.getErrorCode().code + "", authException.getErrorCode().msg);
            } else {
                vw = this.yn;
                responseInfoYn = E5.this.yn(101, "10300", ErrorCode.valueOfKey(ActivityErrorCode.ENABLE_CONVERSION_EVENT_FAILED));
            }
            vw.yn(responseInfoYn);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                String strVw = E5.this.Vw(response);
                ResponseInfo responseInfo = new ResponseInfo();
                responseInfo.setResponseString(strVw);
                this.yn.yn(responseInfo);
            } catch (OnFailureException e) {
                this.yn.yn(E5.this.yn(101, e.getErrorCode().code + "", e.getErrorCode().msg));
            } catch (Exception unused) {
                this.yn.yn(E5.this.yn(101, "10300", ErrorCode.valueOfKey(ActivityErrorCode.ENABLE_CONVERSION_EVENT_FAILED)));
            }
        }
    }

    public E5(Context context, OkHttpClient okHttpClient, BaseRequest baseRequest) {
        this.Vw = baseRequest;
        this.yn = okHttpClient;
        this.FB = context;
    }

    private Request LW() throws OnErrorException {
        if (this.Vw == null) {
            throw new OnErrorException(ErrorCode.valueOf(10309));
        }
        Request.Builder builder = new Request.Builder();
        String method = this.Vw.getMethod();
        try {
            builder.url(this.Vw.getUrl()).method(method, TextUtils.equals(BaseRequest.METHOD_POST, method) ? RequestBody.create(MediaType.parse(!TextUtils.isEmpty(this.Vw.getContentType()) ? this.Vw.getContentType() : "application/json; charset=utf-8"), ByteString.of(this.Vw.getBody())) : null);
            Headers headersBuild = this.Vw.getHeads().build();
            for (String str : headersBuild.names()) {
                Iterator it = headersBuild.values(str).iterator();
                while (it.hasNext()) {
                    builder.addHeader(str, (String) it.next());
                }
            }
            return builder.build();
        } catch (IllegalArgumentException unused) {
            throw new OnErrorException(ErrorCode.valueOf(10309));
        }
    }

    private String Vw() throws OnErrorException, OnFailureException {
        try {
            LogConsole.i("RealSubmit", "executeCall()");
            return Vw(this.yn.newCall(LW()).execute());
        } catch (OnErrorException e) {
            throw e;
        } catch (OnFailureException e2) {
            throw e2;
        } catch (IOException e3) {
            if (e3 instanceof AuthException) {
                throw new OnErrorException(((AuthException) e3).getErrorCode());
            }
            throw new OnFailureException(ErrorCode.valueOf(ActivityErrorCode.ENABLE_CONVERSION_EVENT_FAILED));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Vw(Response response) throws OnFailureException {
        if (response == null || response.body() == null) {
            throw new OnFailureException(ErrorCode.valueOf(10307));
        }
        if (!response.isSuccessful()) {
            throw new OnFailureException(ErrorCode.valueOf(response.code()));
        }
        try {
            return new String(response.body().bytes(), "UTF-8");
        } catch (IOException unused) {
            throw new OnFailureException(ErrorCode.valueOf(ActivityErrorCode.ACTIVITY_IDENTIFICATION_NOT_AVAILABLE));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResponseInfo yn(int i, String str, String str2) {
        LogConsole.e("RealSubmit", "error level:" + i + " and errorCode:" + str + " and msg:" + str2);
        ResponseInfo responseInfo = new ResponseInfo();
        if (!TextUtils.isEmpty(str)) {
            responseInfo.setErrorCode(Integer.parseInt(str));
        }
        responseInfo.setMsg(str2);
        responseInfo.setErrorLevel(i);
        return responseInfo;
    }

    private ResponseBody yn(Response response) throws OnFailureException {
        if (response == null || response.body() == null) {
            throw new OnFailureException(ErrorCode.valueOf(10307));
        }
        if (response.isSuccessful()) {
            return response.body();
        }
        throw new OnFailureException(ErrorCode.valueOf(response.code()));
    }

    public ResponseInfo FB() {
        LogConsole.i("RealSubmit", "executeOriginal()");
        if (!NetworkUtil.isNetworkAvailable(this.FB)) {
            return yn(101, String.valueOf(10302), ErrorCode.valueOfKey(10302));
        }
        try {
            byte[] bArrBytes = yn(this.yn.newCall(LW()).execute()).bytes();
            ResponseInfo responseInfo = new ResponseInfo();
            responseInfo.setResponseBytes(bArrBytes);
            return responseInfo;
        } catch (OnErrorException e) {
            return yn(100, e.getApiCode(), e.getApiMsg());
        } catch (OnFailureException e2) {
            return yn(101, e2.getErrorCode().code + "", e2.getErrorCode().msg);
        } catch (IOException e3) {
            if (!(e3 instanceof AuthException)) {
                return yn(101, "10300", ErrorCode.valueOfKey(ActivityErrorCode.ENABLE_CONVERSION_EVENT_FAILED));
            }
            AuthException authException = (AuthException) e3;
            return yn(100, authException.getErrorCode().code + "", authException.getErrorCode().msg);
        }
    }

    public ResponseInfo yn() {
        if (!NetworkUtil.isNetworkAvailable(this.FB)) {
            return yn(101, String.valueOf(10302), ErrorCode.valueOfKey(10302));
        }
        try {
            String strVw = Vw();
            ResponseInfo responseInfo = new ResponseInfo();
            responseInfo.setResponseString(strVw);
            return responseInfo;
        } catch (OnErrorException e) {
            return yn(100, e.getApiCode(), e.getApiMsg());
        } catch (OnFailureException e2) {
            return yn(101, e2.getErrorCode().code + "", e2.getErrorCode().msg);
        }
    }

    public void yn(Vw vw) {
        if (vw == null) {
            LogConsole.e("RealSubmit", "ICallBack is null");
            return;
        }
        if (!NetworkUtil.isNetworkAvailable(this.FB)) {
            vw.yn(yn(101, String.valueOf(10302), ErrorCode.valueOfKey(10302)));
            return;
        }
        try {
            this.yn.newCall(LW()).enqueue(new yn(vw));
        } catch (OnErrorException e) {
            vw.yn(yn(100, e.getApiCode(), e.getApiMsg()));
        }
    }
}
