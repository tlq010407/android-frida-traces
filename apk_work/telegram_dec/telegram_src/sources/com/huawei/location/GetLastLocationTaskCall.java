package com.huawei.location;

import android.location.Location;
import com.huawei.hms.support.api.entity.location.lastlocation.GetLastLocationRequest;
import com.huawei.hms.support.api.entity.location.lastlocation.GetLastLocationResponse;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.exception.LocationServiceException;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;
import com.huawei.location.utils.yn;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class GetLastLocationTaskCall extends BaseApiRequest {
    private static final String TAG = "GetLastLocationApi";

    private String buildRpt(GetLastLocationRequest getLastLocationRequest) throws JSONException {
        LogConsole.i(TAG, "buildRpt:" + GsonUtil.getInstance().toJson(getLastLocationRequest));
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("needAddress", getLastLocationRequest.getNeedAddress());
            return jSONObject.toString();
        } catch (JSONException unused) {
            LogConsole.e(TAG, "buildRpt failed by exception");
            return "";
        }
    }

    @Override // com.huawei.location.router.interfaces.IRouterRequest
    public void onRequest(String str) {
        LogConsole.i(TAG, "onRequest GetLastLocationTaskCall");
        GetLastLocationRequest getLastLocationRequest = new GetLastLocationRequest(ContextUtil.getContext());
        this.apiName = "Location_getLocation";
        try {
            checkApproximatelyPermission();
            Location locationVw = com.huawei.location.logic.LW.yn().Vw();
            StatusInfo statusInfo = new StatusInfo(0, 0, "");
            GetLastLocationResponse getLastLocationResponse = new GetLastLocationResponse();
            yn.yn(str, getLastLocationRequest);
            getLastLocationResponse.setLocation(locationVw);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject = FB.yn(getLastLocationResponse.getLocation());
            } catch (JSONException unused) {
                LogConsole.e("LocationInnerUtil", "buildEntityFromResponse get jsonException .");
            }
            doExecute(new RouterResponse(jSONObject.toString(), statusInfo));
            this.reportBuilder.Vw(buildRpt(getLastLocationRequest));
        } catch (LocationServiceException e) {
            this.errorCode = String.valueOf(e.getExceptionCode());
            onRequestFail(e.getExceptionCode(), e.getMessage());
        } catch (Exception unused2) {
            this.errorCode = String.valueOf(10000);
            onRequestFail(10000, LocationStatusCode.getStatusCodeString(10000));
        }
        report(getLastLocationRequest);
    }
}
