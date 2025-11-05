package com.huawei.wisesecurity.ucs_credential;

import com.huawei.wisesecurity.ucs.credential.outer.GrsCapability;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class o implements m {
    public GrsCapability a;

    public o(GrsCapability grsCapability) {
        this.a = grsCapability;
    }

    @Override // com.huawei.wisesecurity.ucs_credential.m
    public String a() {
        return this.a.synGetGrsUrl("com.huawei.tsms", "ROOT") + "/tsms/v2/credentials";
    }

    @Override // com.huawei.wisesecurity.ucs_credential.m
    public String a(String str, String str2) {
        return this.a.synGetGrsUrl("com.huawei.tsms", "CDN") + "tsms/" + str + "/" + str2;
    }
}
