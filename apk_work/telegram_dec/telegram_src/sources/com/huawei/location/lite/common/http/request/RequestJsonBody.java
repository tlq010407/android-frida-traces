package com.huawei.location.lite.common.http.request;

import android.text.TextUtils;
import com.huawei.location.lite.common.log.LogConsole;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RequestJsonBody extends RequestBody {
    private String body;

    public static final class Builder {
        private JSONObject body = new JSONObject();

        public Builder add(String str, String str2) throws JSONException {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                try {
                    this.body.put(str, str2);
                } catch (JSONException unused) {
                    LogConsole.e("RequestJsonBody", "add: failed");
                }
            }
            return this;
        }

        public RequestJsonBody build() {
            return new RequestJsonBody(this);
        }

        public RequestJsonBody build(JSONObject jSONObject) {
            this.body = jSONObject;
            return new RequestJsonBody(this);
        }
    }

    public RequestJsonBody(Builder builder) {
        this.body = builder.body.toString();
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return MediaType.parse("application/json; charset=utf-8");
    }

    public String getBody() {
        return this.body;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) {
        bufferedSink.write(this.body.getBytes(StandardCharsets.UTF_8));
    }
}
