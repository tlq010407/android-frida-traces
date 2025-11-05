package com.huawei.wisesecurity.ucs_credential;

import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import java.nio.charset.StandardCharsets;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class h {
    public a a;
    public b b;
    public byte[] c;
    public String d;

    public static class a {
        public String a;
        public String[] b;
    }

    public static class b {
        public int a;
        public String b;
    }

    public h(String str) throws UcsException {
        String[] strArrSplit = str.split("\\.");
        a(strArrSplit);
        b(strArrSplit);
        a(str, strArrSplit);
    }

    public void a(String str, String[] strArr) throws UcsException {
        try {
            this.c = StringUtil.base64Decode(strArr[2], 8);
            this.d = str.substring(0, str.lastIndexOf("."));
        } catch (UcsException unused) {
            throw new UcsException(1012L, "Fail to convert jws string to Content..");
        }
    }

    public void a(String[] strArr) throws UcsException {
        try {
            JSONObject jSONObject = new JSONObject(new String(StringUtil.base64Decode(strArr[0], 8), StandardCharsets.UTF_8));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("x5c");
            String[] strArr2 = {jSONArrayOptJSONArray.optString(0), jSONArrayOptJSONArray.optString(1)};
            a aVar = new a();
            this.a = aVar;
            aVar.a = jSONObject.getString("alg");
            this.a.b = strArr2;
        } catch (RuntimeException | JSONException unused) {
            throw new UcsException(1012L, "Fail to convert jws string to header..");
        }
    }

    public void b(String[] strArr) throws UcsException {
        try {
            JSONObject jSONObject = new JSONObject(new String(StringUtil.base64Decode(strArr[1], 8), StandardCharsets.UTF_8));
            b bVar = new b();
            this.b = bVar;
            bVar.b = jSONObject.getString("component");
            this.b.a = jSONObject.getInt("version");
        } catch (RuntimeException | JSONException unused) {
            throw new UcsException(1012L, "Fail to convert jws string to payload..");
        }
    }
}
