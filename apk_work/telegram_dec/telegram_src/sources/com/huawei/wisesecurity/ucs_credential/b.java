package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkRequest;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkResponse;
import java.io.IOException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class b {
    public NetworkCapability a;
    public Context b;
    public String c;
    public String d;
    public String e;
    public String f;
    public CredentialClient g;

    public b(CredentialClient credentialClient, Context context, NetworkCapability networkCapability) {
        this.g = credentialClient;
        this.b = context;
        this.a = networkCapability;
    }

    public abstract Credential a(String str);

    public Credential a(String str, String str2, String str3, String str4) throws JSONException, UcsException {
        try {
            this.c = str;
            this.d = str2;
            this.e = str3;
            this.f = str4;
            String strA = a();
            Map mapA = a0.a(str2, str3, str4);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("request", strA);
                NetworkResponse networkResponsePost = this.a.post(new NetworkRequest(str, mapA, jSONObject.toString()));
                int code = networkResponsePost.getCode();
                if ((code < 200 || code >= 300) && code != 400 && code != 403 && code != 500) {
                    throw new UcsException(1013L, "tsms req error, return " + networkResponsePost.getCode());
                }
                return a(a(networkResponsePost));
            } catch (JSONException e) {
                throw new UcsException(1002L, "getReqBody error : " + e.getMessage());
            }
        } catch (IOException e2) {
            String str5 = "get credential from TSMS fail : " + e2.getMessage();
            LogUcs.e("ApplyCredentialHandler", str5, new Object[0]);
            throw new UcsException(1006L, str5);
        }
    }

    public abstract String a();

    public abstract String a(NetworkResponse networkResponse);
}
