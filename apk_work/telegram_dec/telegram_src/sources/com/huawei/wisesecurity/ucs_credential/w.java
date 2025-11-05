package com.huawei.wisesecurity.ucs_credential;

import android.text.TextUtils;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class w {
    public String a;
    public String b;
    public String c;

    public static class a {
        public String a;

        public a(String str) {
            this.a = str;
        }

        public String toString() throws JSONException {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("alg", this.a);
                return StringUtil.base64EncodeToString(jSONObject.toString().getBytes(StandardCharsets.UTF_8), 10);
            } catch (UcsException | JSONException e) {
                LogUcs.e("AppAuthticationJws", "generate Header exception: {0}", e.getMessage());
                return "";
            }
        }
    }

    public static class b {
        public String a;
        public String b;
        public String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public String toString() throws JSONException {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pkgName", this.a);
                jSONObject.put("certSig", this.b);
                if (!TextUtils.isEmpty(this.c)) {
                    jSONObject.put("extra", this.c);
                }
                return StringUtil.base64EncodeToString(jSONObject.toString().getBytes(StandardCharsets.UTF_8), 10);
            } catch (UcsException e) {
                e = e;
                LogUcs.e("AppAuthticationJws", "generate PayLoad exception: {0}", e.getMessage());
                return "";
            } catch (JSONException e2) {
                e = e2;
                LogUcs.e("AppAuthticationJws", "generate PayLoad exception: {0}", e.getMessage());
                return "";
            }
        }
    }

    public String a() throws UcsException {
        if (TextUtils.isEmpty(this.a) || TextUtils.isEmpty(this.b) || TextUtils.isEmpty(this.c)) {
            throw new UcsException(2001L, "get  AppAuthtication JWS is empty...");
        }
        return b() + "." + this.c;
    }

    public String b() throws UcsException {
        if (TextUtils.isEmpty(this.a) || TextUtils.isEmpty(this.b)) {
            throw new UcsException(2001L, "Get AppAuthtication signStr error");
        }
        return this.a + "." + this.b;
    }
}
