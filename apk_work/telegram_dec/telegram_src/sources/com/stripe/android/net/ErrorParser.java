package com.stripe.android.net;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.stripe.android.util.StripeJsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
abstract class ErrorParser {

    static class StripeError {
        public String charge;
        public String code;
        public String decline_code;
        public String message;
        public String param;
        public String type;

        StripeError() {
        }
    }

    static StripeError parseError(String str) throws JSONException {
        StripeError stripeError = new StripeError();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("error");
            stripeError.charge = StripeJsonUtils.optString(jSONObject, "charge");
            stripeError.code = StripeJsonUtils.optString(jSONObject, "code");
            stripeError.decline_code = StripeJsonUtils.optString(jSONObject, "decline_code");
            stripeError.message = StripeJsonUtils.optString(jSONObject, CrashHianalyticsData.MESSAGE);
            stripeError.param = StripeJsonUtils.optString(jSONObject, RemoteMessageConst.MessageBody.PARAM);
            stripeError.type = StripeJsonUtils.optString(jSONObject, "type");
        } catch (JSONException unused) {
            stripeError.message = "An improperly formatted error response was found.";
        }
        return stripeError;
    }
}
