package com.huawei.hms.locationSdk;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.location.NavigationRequest;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.location.enhance.RequestNavigationStateRequest;
import com.huawei.hms.support.api.entity.location.enhance.RequestReportLocationRequest;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.PermissionUtil;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.utils.JsonUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class j extends HuaweiApi<v> implements h {
    private static final i b = new i();
    private static final Api<v> c = new Api<>("HmsLocation.API");
    private g1 a;

    public j(Activity activity, v vVar) {
        super(activity, c, vVar, (AbstractClientBuilder) b);
    }

    public j(Context context, v vVar) {
        super(context, c, vVar, b);
    }

    @Override // com.huawei.hms.locationSdk.h
    public Task a(Location location, String str) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        RequestReportLocationRequest requestReportLocationRequest = new RequestReportLocationRequest(getContext());
        String tid = requestReportLocationRequest.getTid();
        if (location != null && str != null) {
            try {
                if (!str.equals("")) {
                    requestReportLocationRequest.setReportType(str);
                    d1 d1Var = new d1("location.requestReportLocation", JsonUtil.createJsonString(requestReportLocationRequest), tid);
                    d1Var.setParcelable(location);
                    return doWrite(d1Var);
                }
            } catch (ApiException e2) {
                e = e2;
                HMSLocationLog.e("EnhanceClientImpl", tid, "requestReportLocation api exception:" + e.getMessage());
                taskCompletionSource.setException(e);
                return taskCompletionSource.getTask();
            } catch (Exception unused) {
                HMSLocationLog.e("EnhanceClientImpl", tid, "requestReportLocation exception");
                e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
                taskCompletionSource.setException(e);
                return taskCompletionSource.getTask();
            }
        }
        throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
    }

    @Override // com.huawei.hms.locationSdk.h
    public Task a(NavigationRequest navigationRequest) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        RequestNavigationStateRequest requestNavigationStateRequest = new RequestNavigationStateRequest(getContext());
        String tid = requestNavigationStateRequest.getTid();
        try {
            if (navigationRequest == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            if (!PermissionUtil.isLocationPermissionAvailable(getContext())) {
                throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
            }
            requestNavigationStateRequest.setNavigationRequest(navigationRequest);
            return doWrite(new r0("location.getNavigationContextState", JsonUtil.createJsonString(requestNavigationStateRequest), requestNavigationStateRequest.getTid()));
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("EnhanceClientImpl", tid, "getNavigationState api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("EnhanceClientImpl", tid, "getNavigationState exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public <TResult, TClient extends AnyClient> Task doWrite(TaskApiCall<TClient, TResult> taskApiCall) {
        g1 g1Var;
        if (this.a == null) {
            Object objA = j1.a(getContext(), new k1());
            if (objA instanceof g1) {
                this.a = (g1) objA;
            }
        }
        return (k1.a(getContext()) || (g1Var = this.a) == null) ? super.doWrite(taskApiCall) : g1Var.a(this, taskApiCall, b);
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getApiLevel() {
        return 2;
    }
}
