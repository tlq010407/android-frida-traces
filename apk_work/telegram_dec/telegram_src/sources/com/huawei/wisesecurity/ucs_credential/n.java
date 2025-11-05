package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class n implements m {
    public GrsClient a;

    public n(Context context, String str) {
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        grsBaseInfo.setSerCountry(str);
        this.a = new GrsClient(context, grsBaseInfo);
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
