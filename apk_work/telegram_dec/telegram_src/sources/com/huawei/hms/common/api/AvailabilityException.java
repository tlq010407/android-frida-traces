package com.huawei.hms.common.api;

import com.huawei.hms.api.Api;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class AvailabilityException extends Exception {
    private String TAG = "AvailabilityException";
    private String message = null;

    private ConnectionResult generateConnectionResult(int i) {
        HMSLog.i(this.TAG, "The availability check result is: " + i);
        setMessage(i);
        return new ConnectionResult(i);
    }

    private void setMessage(int i) {
        this.message = i != 21 ? i != 0 ? i != 1 ? i != 2 ? i != 3 ? "INTERNAL_ERROR" : "SERVICE_DISABLED" : "SERVICE_VERSION_UPDATE_REQUIRED" : "SERVICE_MISSING" : "success" : "ANDROID_VERSION_UNSUPPORT";
    }

    public ConnectionResult getConnectionResult(HuaweiApi<? extends Api.ApiOptions> huaweiApi) {
        int iIsHuaweiMobileServicesAvailable;
        if (huaweiApi == null) {
            HMSLog.e(this.TAG, "The huaweiApi is null.");
            iIsHuaweiMobileServicesAvailable = 8;
        } else {
            iIsHuaweiMobileServicesAvailable = HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(huaweiApi.getContext(), 30000000);
        }
        return generateConnectionResult(iIsHuaweiMobileServicesAvailable);
    }

    public ConnectionResult getConnectionResult(HuaweiApiCallable huaweiApiCallable) {
        int iIsHuaweiMobileServicesAvailable;
        if (huaweiApiCallable == null || huaweiApiCallable.getHuaweiApi() == null) {
            HMSLog.e(this.TAG, "The huaweiApi is null.");
            iIsHuaweiMobileServicesAvailable = 8;
        } else {
            iIsHuaweiMobileServicesAvailable = HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(huaweiApiCallable.getHuaweiApi().getContext(), 30000000);
        }
        return generateConnectionResult(iIsHuaweiMobileServicesAvailable);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
