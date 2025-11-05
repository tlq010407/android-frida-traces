package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class z {
    public Context a;
    public NetworkCapability b;
    public String c;
    public m d;
    public j e;
    public CredentialClient f;
    public String g;

    public z(CredentialClient credentialClient, Context context, NetworkCapability networkCapability, m mVar, String str) {
        this.f = credentialClient;
        this.a = context;
        this.b = networkCapability;
        this.c = str;
        this.d = mVar;
        this.e = new j(context, mVar, networkCapability);
    }

    public Credential a(String str, String str2) {
        try {
            this.g = "AndroidKS";
            return new c(this.f, this.a, this.b).a(this.d.a(), this.c, str, str2);
        } catch (Throwable th) {
            this.g = "Kid";
            LogUcs.e("z", "applyCredential use KeyStoreHandler get exception: " + th.getMessage(), new Object[0]);
            return new d(this.f, this.a, this.b, this.e).a(this.d.a(), this.c, str, str2);
        }
    }
}
