package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.hms.network.NetworkKit;
import com.huawei.hms.network.httpclient.HttpClient;
import com.huawei.hms.network.restclient.RestClient;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactory;
import com.huawei.secure.android.common.ssl.SecureX509TrustManager;
import com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkRequest;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkResponse;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class q implements NetworkCapability {
    public Context b;

    public q(Context context) {
        this.b = context;
    }

    @Override // com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability
    public NetworkResponse get(NetworkRequest networkRequest) {
        new NetworkResponse();
        networkRequest.getUrl();
        networkRequest.getHeaders();
        throw null;
    }

    @Override // com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability
    public void initConfig(int i, int i2) throws UcsException {
        Context context = this.b;
        try {
            NetworkKit.init(context, new p(this));
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(new RestClient.Builder().httpClient(new HttpClient.Builder().sslSocketFactory(SecureSSLSocketFactory.getInstance(context), new SecureX509TrustManager(context)).connectTimeout(i).retryTimeOnConnectionFailure(i2).hostnameVerifier(new StrictHostnameVerifier()).build()).build().create(r.class));
        } catch (Exception e) {
            String str = "RemoteRestClient init failed, " + e.getMessage();
            LogUcs.e("RemoteRestClient", str, new Object[0]);
            throw new UcsException(2001L, str);
        }
    }

    @Override // com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability
    public NetworkResponse post(NetworkRequest networkRequest) {
        new NetworkResponse();
        networkRequest.getUrl();
        networkRequest.getHeaders();
        networkRequest.getBody();
        throw null;
    }
}
