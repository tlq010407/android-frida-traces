package com.huawei.hms.locationSdk;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.location.ActivityConversionInfo;
import com.huawei.hms.location.ActivityConversionRequest;
import com.huawei.hms.location.ActivityIdentificationData;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.location.activityrecognition.RequestActivityConversionRequest;
import com.huawei.hms.support.api.entity.location.common.LocationBaseRequest;
import com.huawei.hms.support.api.location.common.CollectionsUtil;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.PermissionUtil;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.location.lite.common.util.GsonUtil;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class d extends HuaweiApi<v> implements b {
    private static final c b = new c();
    private static final Api<v> c = new Api<>("HmsLocation.API");
    private g1 a;

    public d(Activity activity, v vVar) {
        super(activity, c, vVar, (AbstractClientBuilder) b);
    }

    public d(Context context, v vVar) {
        super(context, c, vVar, b);
    }

    private void a(String str) throws ApiException {
        if (Build.VERSION.SDK_INT > 28) {
            if (PermissionUtil.isPermissionAvailable(getContext(), "android.permission.ACTIVITY_RECOGNITION")) {
                return;
            }
            HMSLocationLog.e("LocationArClientImpl", str, "android Q requestActivityUpdates isPermissionAvailable is false ");
            throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
        }
        if (!k1.a(getContext()) || PermissionUtil.isPermissionAvailable(getContext(), "com.huawei.hms.permission.ACTIVITY_RECOGNITION")) {
            return;
        }
        HMSLocationLog.e("LocationArClientImpl", str, "requestActivityUpdates isPermissionAvailable is false ");
        throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
    }

    @Override // com.huawei.hms.locationSdk.b
    public Task a(long j, PendingIntent pendingIntent) throws ApiException, JSONException {
        ApiException e;
        String string = UUID.randomUUID().toString();
        HMSLocationLog.i("LocationArClientImpl", string, "createActivityIdentificationUpdates begin");
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            if (pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            a(string);
            if (j < 0) {
                throw new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
            }
            y yVar = new y();
            yVar.a(pendingIntent);
            yVar.a(string);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("detectionIntervalMillis", j);
            jSONObject.put("locTransactionId", string);
            jSONObject.put("packageName", getContext().getPackageName());
            y0 y0Var = new y0("location.requestActivityIdentificationUpdates", jSONObject.toString(), yVar);
            y0Var.setParcelable(pendingIntent);
            return doWrite(y0Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationArClientImpl", string, "createActivityIdentificationUpdates api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationArClientImpl", string, "createActivityIdentificationUpdates exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.b
    public Task a(PendingIntent pendingIntent) throws ApiException {
        ApiException e;
        LocationBaseRequest locationBaseRequest = new LocationBaseRequest(getContext());
        String tid = locationBaseRequest.getTid();
        HMSLocationLog.i("LocationArClientImpl", tid, "deleteActivityIdentificationUpdates begin");
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            if (pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            y yVar = new y();
            yVar.a(pendingIntent);
            y yVar2 = (y) z.b().b(yVar);
            if (yVar2 != null) {
                HMSLocationLog.e("LocationArClientImpl", tid, "deleteActivityIdentificationUpdates cannot find cache");
                tid = yVar2.a();
            }
            locationBaseRequest.setTid(tid);
            yVar.a(tid);
            u0 u0Var = new u0("location.removeActivityIdentificationUpdates", JsonUtil.createJsonString(locationBaseRequest), yVar);
            u0Var.setParcelable(pendingIntent);
            return doWrite(u0Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationArClientImpl", tid, "deleteActivityIdentificationUpdates api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationArClientImpl", tid, "deleteActivityIdentificationUpdates exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.b
    public Task a(ActivityConversionRequest activityConversionRequest, PendingIntent pendingIntent) throws ApiException {
        ApiException e;
        RequestActivityConversionRequest requestActivityConversionRequest = new RequestActivityConversionRequest(getContext());
        String tid = requestActivityConversionRequest.getTid();
        HMSLocationLog.i("LocationArClientImpl", tid, "createActivityConversionUpdates begin");
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            if (activityConversionRequest == null || pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            a(tid);
            List<ActivityConversionInfo> activityConversions = activityConversionRequest.getActivityConversions();
            if (!CollectionsUtil.isEmpty(activityConversions)) {
                for (ActivityConversionInfo activityConversionInfo : activityConversions) {
                    int conversionType = activityConversionInfo.getConversionType();
                    int activityType = activityConversionInfo.getActivityType();
                    if (conversionType != 0 && conversionType != 1) {
                        throw new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
                    }
                    if (!ActivityIdentificationData.isValidType(activityType)) {
                        throw new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
                    }
                }
            }
            w wVar = new w();
            wVar.a(pendingIntent);
            wVar.a(tid);
            requestActivityConversionRequest.setActivityConversions(activityConversionRequest.getActivityConversions());
            x0 x0Var = new x0("location.requestActivityConversionUpdates", k1.a(getContext()) ? JsonUtil.createJsonString(requestActivityConversionRequest) : GsonUtil.getInstance().toJson(requestActivityConversionRequest), wVar);
            x0Var.setParcelable(pendingIntent);
            return doWrite(x0Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationArClientImpl", tid, "createActivityConversionUpdates api exception");
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationArClientImpl", tid, "createActivityConversionUpdates exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.b
    public Task b(PendingIntent pendingIntent) throws ApiException {
        ApiException e;
        LocationBaseRequest locationBaseRequest = new LocationBaseRequest(getContext());
        String tid = locationBaseRequest.getTid();
        HMSLocationLog.i("LocationArClientImpl", tid, "deleteActivityConversionUpdates begin");
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            if (pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            w wVar = new w();
            wVar.a(pendingIntent);
            w wVar2 = (w) x.b().b(wVar);
            if (wVar2 != null) {
                HMSLocationLog.e("LocationArClientImpl", tid, "deleteActivityConversionUpdates cannot find cache");
                tid = wVar2.a();
            }
            locationBaseRequest.setTid(tid);
            wVar.a(tid);
            t0 t0Var = new t0("location.removeActivityConversionUpdates", JsonUtil.createJsonString(locationBaseRequest), wVar);
            t0Var.setParcelable(pendingIntent);
            return doWrite(t0Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationArClientImpl", tid, "deleteActivityConversionUpdates api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationArClientImpl", tid, "deleteActivityConversionUpdates exception");
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
    public int getKitSdkVersion() {
        return 60400300;
    }
}
