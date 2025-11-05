package com.huawei.wisesecurity.ucs.credential.entity;

import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.KfsValidator;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsStringNotEmpty;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ErrorBody {

    @KfsStringNotEmpty
    public String errorCode;

    @KfsStringNotEmpty
    public String errorMessage;

    public static ErrorBody fromString(String str) throws UcsException {
        try {
            ErrorBody errorBody = new ErrorBody();
            JSONObject jSONObject = new JSONObject(str);
            errorBody.errorCode = jSONObject.optString("errorCode");
            errorBody.errorMessage = jSONObject.optString("errorMessage");
            KfsValidator.validate(errorBody);
            return errorBody;
        } catch (KfsValidationException e) {
            throw new UcsException(1001L, "ErrorBody param invalid : " + e.getMessage());
        } catch (JSONException e2) {
            throw new UcsException(1001L, "ErrorBody param is not a valid json string : " + e2.getMessage());
        }
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}
