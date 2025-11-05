package com.huawei.hms.locationSdk;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.api.CommonStatusCodes;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.location.GeofenceRequest;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.location.common.LocationBaseRequest;
import com.huawei.hms.support.api.entity.location.fence.AddGeofencesRequest;
import com.huawei.hms.support.api.entity.location.fence.RemoveGeofencesRequest;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.PermissionUtil;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.utils.JsonUtil;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class p extends HuaweiApi<v> implements n {
    private static final o b = new o();
    private static final Api<v> c = new Api<>("HmsLocation.API");
    private g1 a;

    public p(Activity activity, v vVar) {
        super(activity, c, vVar, (AbstractClientBuilder) b);
    }

    public p(Context context, v vVar) {
        super(context, c, vVar, b);
    }

    @Override // com.huawei.hms.locationSdk.n
    public Task a(PendingIntent pendingIntent) throws ApiException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        LocationBaseRequest locationBaseRequest = new LocationBaseRequest(getContext());
        String tid = locationBaseRequest.getTid();
        try {
            if (pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            v0 v0Var = new v0("location.removeGeofences", JsonUtil.createJsonString(locationBaseRequest), tid);
            v0Var.setParcelable(pendingIntent);
            Task taskDoWrite = doWrite(v0Var);
            HMSLocationLog.i("LocationGeofenceClientImpl", tid, "removeGeofences sdk useTime:" + (System.currentTimeMillis() - jCurrentTimeMillis));
            return taskDoWrite;
        } catch (ApiException e) {
            HMSLocationLog.e("LocationGeofenceClientImpl", tid, "removeGeofences api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            HMSLocationLog.i("LocationGeofenceClientImpl", tid, "removeGeofences sdk useTime:" + (System.currentTimeMillis() - jCurrentTimeMillis));
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.n
    public Task a(GeofenceRequest geofenceRequest, PendingIntent pendingIntent) throws ApiException {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        AddGeofencesRequest addGeofencesRequest = new AddGeofencesRequest(getContext());
        String tid = addGeofencesRequest.getTid();
        try {
            if (geofenceRequest == null || pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            if (!PermissionUtil.isGeofencePermissionAvailable(getContext())) {
                throw new ApiException(new Status(10204, CommonStatusCodes.getStatusCodeString(10204)));
            }
            addGeofencesRequest.setGeofencingRequest(geofenceRequest);
            h0 h0Var = new h0("location.addGeofences", JsonUtil.createJsonString(addGeofencesRequest), tid);
            h0Var.setParcelable(pendingIntent);
            return doWrite(h0Var);
        } catch (ApiException e) {
            HMSLocationLog.e("LocationGeofenceClientImpl", tid, "addGeofences api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.n
    public Task a(List<String> list) throws ApiException {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        RemoveGeofencesRequest removeGeofencesRequest = new RemoveGeofencesRequest(getContext());
        String tid = removeGeofencesRequest.getTid();
        if (list != null) {
            try {
                if (list.size() != 0) {
                    removeGeofencesRequest.setGeofenceRequestIds(list);
                    return doWrite(new v0("location.removeGeofences", JsonUtil.createJsonString(removeGeofencesRequest), tid));
                }
            } catch (ApiException e) {
                HMSLocationLog.e("LocationGeofenceClientImpl", tid, "removeGeofences api exception:" + e.getMessage());
                taskCompletionSource.setException(e);
                return taskCompletionSource.getTask();
            }
        }
        throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
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
    public int getKitSdkVersion() {
        return 60400300;
    }
}
