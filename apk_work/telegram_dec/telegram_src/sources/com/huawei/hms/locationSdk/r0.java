package com.huawei.hms.locationSdk;

import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.location.NavigationResult;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.support.api.location.common.exception.ServiceErrorCodeAdaptor;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class r0 extends i0<s, NavigationResult> {
    public r0(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void doExecute(s sVar, ResponseErrorCode responseErrorCode, String str, TaskCompletionSource taskCompletionSource) throws ApiException {
        try {
            HMSLocationLog.i("GetNavigationContextStateTaskApiCall", this.a, "doExecute");
            if (responseErrorCode == null) {
                throw new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            }
            int errorCode = responseErrorCode.getErrorCode();
            HMSLocationLog.d("GetNavigationContextStateTaskApiCall", this.a, "getNavigationContextState message start");
            NavigationResult navigationResult = new NavigationResult();
            if (errorCode == 0) {
                JSONObject jSONObject = new JSONObject(str);
                navigationResult.setState(jSONObject.getInt("environment"));
                navigationResult.setPossibility(jSONObject.getInt("confidence"));
            }
            ServiceErrorCodeAdaptor.getInstance().setTaskByServiceErrorCode(taskCompletionSource, responseErrorCode, navigationResult);
            HMSLocationLog.d("GetNavigationContextStateTaskApiCall", this.a, "getNavigationContextState message success");
        } catch (ApiException e) {
            HMSLocationLog.e("GetNavigationContextStateTaskApiCall", this.a, "get navi doExecute exception:" + e.getMessage());
            taskCompletionSource.setException(e);
        } catch (Exception unused) {
            HMSLocationLog.e("GetNavigationContextStateTaskApiCall", this.a, "get navi doExecute exception");
            taskCompletionSource.setException(new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000))));
        }
    }
}
