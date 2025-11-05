package com.huawei.location.lite.common.http;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.location.lite.common.http.E5;
import com.huawei.location.lite.common.http.LW;
import com.huawei.location.lite.common.http.Vw;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.response.ResponseInfo;
import com.huawei.location.lite.common.log.LogConsole;
import okhttp3.OkHttpClient;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HttpService extends Service {
    private static final String TAG = "HttpService";
    private static final int TIME_OUT = 30000;
    private OkHttpClient httpClient;
    private final IBinder mBinder = new yn();

    public class yn extends LW.yn {
        public yn() {
        }

        @Override // com.huawei.location.lite.common.http.LW
        public ResponseInfo Vw(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
            LogConsole.i(HttpService.TAG, "enter remote execute get String");
            HttpService httpService = HttpService.this;
            httpService.httpClient = httpService.initHttpClient(httpConfigInfo);
            return HttpService.this.realExecute(baseRequest);
        }

        @Override // com.huawei.location.lite.common.http.LW
        public ResponseInfo yn(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest) {
            LogConsole.i(HttpService.TAG, "enter remote executeOriginal");
            HttpService httpService = HttpService.this;
            httpService.httpClient = httpService.initHttpClient(httpConfigInfo);
            HttpService httpService2 = HttpService.this;
            ResponseInfo responseInfoFB = new E5(httpService2, httpService2.httpClient, baseRequest).FB();
            HttpService.this.closeSocket();
            return responseInfoFB;
        }

        public void yn(HttpConfigInfo httpConfigInfo, BaseRequest baseRequest, dC dCVar) {
            LogConsole.i(HttpService.TAG, "enter remote enqueue");
            HttpService httpService = HttpService.this;
            httpService.httpClient = httpService.initHttpClient(httpConfigInfo);
            HttpService.this.realEnquene(baseRequest, dCVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeSocket() {
        OkHttpClient okHttpClient = this.httpClient;
        if (okHttpClient != null) {
            okHttpClient.connectionPool().evictAll();
            this.httpClient = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OkHttpClient initHttpClient(HttpConfigInfo httpConfigInfo) {
        Vw vw = new Vw();
        Vw.yn ynVar = new Vw.yn();
        ynVar.FB = 30000;
        ynVar.LW = 30000;
        return vw.yn(this, ynVar, httpConfigInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$realEnquene$0(dC dCVar, ResponseInfo responseInfo) {
        try {
            closeSocket();
            dCVar.yn(responseInfo);
        } catch (RemoteException unused) {
            LogConsole.e(TAG, "RemoteExceptio");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void realEnquene(BaseRequest baseRequest, final dC dCVar) {
        new E5(this, this.httpClient, baseRequest).yn(new E5.Vw() { // from class: com.huawei.location.lite.common.http.HttpService$$ExternalSyntheticLambda0
            @Override // com.huawei.location.lite.common.http.E5.Vw
            public final void yn(ResponseInfo responseInfo) {
                this.f$0.lambda$realEnquene$0(dCVar, responseInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResponseInfo realExecute(BaseRequest baseRequest) {
        ResponseInfo responseInfoYn = new E5(this, this.httpClient, baseRequest).yn();
        closeSocket();
        return responseInfoYn;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        LogConsole.i(TAG, "onDestroy");
        super.onDestroy();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        LogConsole.i(TAG, "onUnbind");
        return super.onUnbind(intent);
    }
}
