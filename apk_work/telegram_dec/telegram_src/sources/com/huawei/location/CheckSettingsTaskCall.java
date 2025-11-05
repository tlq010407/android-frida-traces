package com.huawei.location;

import android.provider.Settings;
import android.text.TextUtils;
import com.huawei.hms.location.LocationSettingsStates;
import com.huawei.hms.support.api.client.Status;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.LocationUtil;
import com.huawei.location.req.CheckLocationSettingsReq;
import com.huawei.location.resp.CheckLocationSettingsResp;
import com.huawei.location.resp.StatusCheck;
import com.huawei.location.router.RouterResponse;
import com.huawei.location.router.entity.StatusInfo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CheckSettingsTaskCall extends BaseApiRequest {
    private static final String LOCATION_SETTING_REQUEST = "locationSettingsRequest";
    private static final String TAG = "CheckLocationSettingsApi";

    private CheckLocationSettingsResp changeResponse(com.huawei.location.resp.FB fb) {
        CheckLocationSettingsResp checkLocationSettingsResp = new CheckLocationSettingsResp();
        StatusCheck statusCheck = new StatusCheck();
        statusCheck.setStatusCode(fb.Vw().getStatusCode());
        statusCheck.setStatusMessage(fb.Vw().getStatusMessage());
        checkLocationSettingsResp.setStatusCheck(statusCheck);
        checkLocationSettingsResp.setLocationSettingsStates(fb.yn());
        return checkLocationSettingsResp;
    }

    private void parseCheckSettingJson(CheckLocationSettingsReq checkLocationSettingsReq, String str) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            checkLocationSettingsReq.setTid(jSONObject.getString("locTransactionId"));
            checkLocationSettingsReq.setPackageName(jSONObject.getString("packageName"));
            String string = jSONObject.getString(LOCATION_SETTING_REQUEST);
            if (TextUtils.isEmpty(string)) {
                LogConsole.e(TAG, "parseCheckSettingString locationSettingsRequest is null");
            }
            JSONObject jSONObject2 = new JSONObject(string);
            checkLocationSettingsReq.setAlwaysShow(jSONObject2.getBoolean("alwaysShow"));
            checkLocationSettingsReq.setNeedBle(jSONObject2.getBoolean("needBle"));
        } catch (JSONException unused) {
            LogConsole.i(TAG, "parseCheckSettingString JSONException");
        }
    }

    @Override // com.huawei.location.router.interfaces.IRouterRequest
    public void onRequest(String str) throws JSONException, Settings.SettingNotFoundException {
        LogConsole.i(TAG, "onRequest json begin");
        CheckLocationSettingsReq checkLocationSettingsReq = new CheckLocationSettingsReq();
        parseCheckSettingJson(checkLocationSettingsReq, str);
        com.huawei.location.logic.LW.yn().getClass();
        LocationSettingsStates locationSettingsStates = new LocationSettingsStates();
        boolean zYn = FB.yn("gps");
        boolean zYn2 = FB.yn("network");
        locationSettingsStates.setGnssUsable(zYn);
        locationSettingsStates.setGnssPresent(zYn);
        locationSettingsStates.setGpsUsable(zYn);
        locationSettingsStates.setGpsPresent(zYn);
        locationSettingsStates.setHmsLocationUsable(false);
        locationSettingsStates.setHMSLocationPresent(false);
        locationSettingsStates.setNetworkLocationUsable(zYn2);
        locationSettingsStates.setNetworkLocationPresent(zYn2);
        boolean zIsLocationEnabled = LocationUtil.isLocationEnabled(ContextUtil.getContext());
        locationSettingsStates.setLocationUsable(zIsLocationEnabled);
        locationSettingsStates.setLocationPresent(zIsLocationEnabled);
        if (checkLocationSettingsReq.isNeedBle()) {
            locationSettingsStates.setBlePresent(LocationUtil.isBlePresent(ContextUtil.getContext()));
            locationSettingsStates.setBleUsable(LocationUtil.isScanBleEnabled(ContextUtil.getContext()) || LocationUtil.isBlueBoothEnabled(ContextUtil.getContext()));
        } else {
            locationSettingsStates.setBleUsable(false);
            locationSettingsStates.setBlePresent(false);
        }
        com.huawei.location.resp.FB fb = new com.huawei.location.resp.FB();
        fb.yn(Status.SUCCESS);
        fb.yn(locationSettingsStates);
        onComplete(new RouterResponse(GsonUtil.getInstance().toJson(changeResponse(fb)), new StatusInfo(0, 0, "SUCCESS")));
        this.reportBuilder.yn("Location_checkSettings");
        this.reportBuilder.yn(checkLocationSettingsReq);
        this.reportBuilder.yn().yn("0");
    }
}
