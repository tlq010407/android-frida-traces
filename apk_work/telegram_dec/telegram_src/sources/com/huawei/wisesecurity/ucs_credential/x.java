package com.huawei.wisesecurity.ucs_credential;

import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import com.huawei.wisesecurity.ucs.credential.entity.AccessKey;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class x {
    public int a;
    public int b;
    public String c;
    public String d;
    public int e;
    public String f;
    public String g;

    public x(int i, int i2, String str, String str2, int i3, String str3, String str4) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = i3;
        this.f = str3;
        this.g = str4;
    }

    public String toString() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("alg", this.a);
            jSONObject.put("kekAlg", this.b);
            jSONObject.put("packageName", this.c);
            jSONObject.put("appId", this.d);
            jSONObject.put(AccessKey.AKSK_VERSION, this.e);
            jSONObject.put(AccessKey.APP_PKG_NAME, this.f);
            jSONObject.put(AccessKey.APP_CERT_FP, this.g);
            return StringUtil.base64EncodeToString(jSONObject.toString().getBytes(StandardCharsets.UTF_8), 10);
        } catch (UcsException | JSONException e) {
            LogUcs.e("CredentialJws", "generate payload exception: {0}", e.getMessage());
            return "";
        }
    }
}
