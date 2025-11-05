package com.huawei.hms.locationSdk;

import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.location.FusedLocationProviderClient;
import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.location.LocationSettingsRequest;
import com.huawei.hms.location.LogConfig;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.location.binder.InnerBinder;
import com.huawei.hms.support.api.entity.location.checksettings.CheckLocationSettingsRequest;
import com.huawei.hms.support.api.entity.location.common.LocationBaseRequest;
import com.huawei.hms.support.api.entity.location.common.LocationNaming;
import com.huawei.hms.support.api.entity.location.lastlocation.GetLastLocationRequest;
import com.huawei.hms.support.api.entity.location.mock.SetMockLocationRequest;
import com.huawei.hms.support.api.entity.location.mock.SetMockModeRequest;
import com.huawei.hms.support.api.entity.location.offlinelocation.OfflineLocationRequest;
import com.huawei.hms.support.api.entity.location.updates.RemoveLocationUpdatesRequest;
import com.huawei.hms.support.api.entity.location.updates.RequestLocationUpdatesRequest;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.LocationJsonUtil;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.log.logwrite.LogWriteApi;
import com.huawei.location.lite.common.log.logwrite.LogWriteParam;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.PermissionUtil;
import com.huawei.location.lite.common.util.ReflectionUtils;
import com.huawei.location.req.BackgroundReq;
import com.huawei.location.vdr.control.VDRControl;
import java.io.File;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class g extends HuaweiApi<v> implements e {
    private static final f c = new f();
    private static final Api<v> d = new Api<>("HmsLocation.API");
    private String a;
    private g1 b;

    public g(Activity activity, v vVar) {
        super(activity, d, vVar, (AbstractClientBuilder) c);
        this.a = "";
        f();
        a(activity);
    }

    public g(Context context, v vVar) {
        super(context, d, vVar, c);
        this.a = "";
        f();
        a(context);
    }

    private String a(String str, RequestLocationUpdatesRequest requestLocationUpdatesRequest) {
        LogConsole.i("LocationClientImpl", "vdr getOption: " + str);
        Map<String, String> extras = requestLocationUpdatesRequest.getLocationRequest().getExtras();
        return extras != null ? extras.get(str) : "";
    }

    private void a(Context context) {
        ContextUtil.setContext(context);
    }

    private void a(String str, String str2) throws ApiException {
        String str3;
        if (str.startsWith("/data/user/") || str.startsWith("/data/data/") || str.startsWith("data/data/") || str.startsWith("data/user/")) {
            str3 = "setLogConfig internal storage - read and write permissions not need to be verified";
        } else {
            HMSLocationLog.i("LocationClientImpl", str2, "setLogConfig Non-internal storage - read and write permissions need to be verified");
            ContextUtil.setContext(getContext());
            if (!PermissionUtil.checkSelfPermission(getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
                throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
            }
            if (!PermissionUtil.checkSelfPermission(getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
            }
            str3 = "setLogConfig Permission check pass";
        }
        HMSLocationLog.i("LocationClientImpl", str2, str3);
    }

    private boolean a(RequestLocationUpdatesRequest requestLocationUpdatesRequest) {
        String str;
        if (!ReflectionUtils.isSupportClass("com.huawei.location.vdr.VdrManager")) {
            str = "no vdr module, do not support vdr";
        } else {
            if (Build.VERSION.SDK_INT >= 24) {
                return TextUtils.equals(a(VDRControl.VDR_GNSS_OPTION, requestLocationUpdatesRequest), "1");
            }
            str = "SDK_INT less than N, do not support vdr";
        }
        LogConsole.i("LocationClientImpl", str);
        return false;
    }

    private LogWriteParam b(LogConfig logConfig) {
        LogWriteParam logWriteParam = new LogWriteParam();
        logWriteParam.setFileExpiredTime(logConfig.getFileExpiredTime());
        logWriteParam.setFileNum(logConfig.getFileNum());
        logWriteParam.setFileSize(logConfig.getFileSize());
        logWriteParam.setLogPath(logConfig.getLogPath());
        return logWriteParam;
    }

    private void b(LocationRequest locationRequest) throws ApiException {
        if (locationRequest.getPriority() == 200 || locationRequest.getPriority() == 300) {
            throw new ApiException(new Status(LocationStatusCode.METHOD_INVOKE_ERROR, LocationStatusCode.getStatusCodeString(LocationStatusCode.METHOD_INVOKE_ERROR)));
        }
    }

    private void b(String str, String str2) throws ApiException {
        boolean zMkdirs;
        if (!str.startsWith("data/data/") && !str.startsWith("/data/data/") && !str.startsWith("/data/user/") && !str.startsWith("data/user/") && !str.startsWith("/storage/emulated") && !str.startsWith("storage/emulated") && !str.startsWith("/storage/B3E4-1711") && !str.startsWith("storage/B3E4-1711") && !str.startsWith("/storage/sdcard") && !str.startsWith("storage/sdcard") && !str.startsWith("/mnt/sdcard/") && !str.startsWith("mnt/sdcard/")) {
            throw new ApiException(new Status(10101, LocationStatusCode.getStatusCodeString(10101)));
        }
        if (a(str)) {
            throw new ApiException(new Status(10101, LocationStatusCode.getStatusCodeString(10101)));
        }
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        try {
            zMkdirs = file.mkdirs();
        } catch (SecurityException e) {
            HMSLocationLog.e("LocationClientImpl", str2, "createFolder SecurityException:" + e.getMessage());
            zMkdirs = false;
        }
        if (zMkdirs) {
            HMSLocationLog.i("LocationClientImpl", str2, "createFolder success");
        } else {
            HMSLocationLog.e("LocationClientImpl", str2, "createFolder fail");
            throw new ApiException(new Status(10101, LocationStatusCode.getStatusCodeString(10101)));
        }
    }

    private void e() throws ApiException {
        if (!com.huawei.hms.support.api.location.common.PermissionUtil.isLocationPermissionAvailable(getContext())) {
            throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
        }
    }

    private void f() {
        try {
            this.a = AGConnectServicesConfig.fromContext(getContext()).getString("client/product_id");
        } catch (Exception unused) {
            HMSLog.e("LocationClientImpl", "get agc productId by exception");
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.setException(new ApiException(new Status(LocationStatusCode.NOT_YET_SUPPORTED, LocationStatusCode.getStatusCodeString(LocationStatusCode.NOT_YET_SUPPORTED))));
        return taskCompletionSource.getTask();
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(int i, Notification notification) throws ApiException {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        BackgroundReq backgroundReq = new BackgroundReq(getContext());
        String tid = backgroundReq.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "enableBackgroundLocation");
            if (i == 0 || notification == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            backgroundReq.setNotificationId(i);
            l0 l0Var = new l0("location.enableBackgroundLocation", JsonUtil.createJsonString(backgroundReq), tid);
            l0Var.setParcelable(notification);
            return doWrite(l0Var);
        } catch (ApiException e) {
            HMSLocationLog.e("LocationClientImpl", tid, "enable background location api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(PendingIntent pendingIntent) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        LocationBaseRequest locationBaseRequest = new LocationBaseRequest(getContext());
        String tid = locationBaseRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "removeLocationUpdates with intent begin");
            if (pendingIntent == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            d0 d0Var = (d0) c0.b().b((c0) new d0(null, pendingIntent, null, null, tid, -1));
            if (d0Var == null) {
                HMSLocationLog.e("LocationClientImpl", tid, "remove location updates with intent cannot find intent");
                throw new ApiException(new Status(LocationStatusCode.NO_MATCHED_INTENT, LocationStatusCode.getStatusCodeString(LocationStatusCode.NO_MATCHED_INTENT)));
            }
            String strA = d0Var.a();
            locationBaseRequest.setTid(strA);
            w0 w0Var = new w0("location.removeLocationUpdates", JsonUtil.createJsonString(locationBaseRequest), strA, d0Var, "");
            w0Var.setParcelable(pendingIntent);
            HMSLocationLog.i("LocationClientImpl", strA, "removeLocationUpdates with callback tid =" + locationBaseRequest.getTid() + " Version Code = 60400300");
            return doWrite(w0Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "remove location updates with intent api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "remove location updates with intent exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(Location location) throws ApiException, JSONException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        SetMockLocationRequest setMockLocationRequest = new SetMockLocationRequest(getContext());
        String tid = setMockLocationRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "set mock location begin");
            if (location == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            if (!com.huawei.hms.support.api.location.common.PermissionUtil.isLocationPermissionAvailable(getContext()) || !com.huawei.hms.support.api.location.common.PermissionUtil.canAccessMockLocation(getContext().getPackageName(), getContext())) {
                throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
            }
            setMockLocationRequest.setPackageName(getContext().getPackageName());
            setMockLocationRequest.setMockLocation(location);
            JSONObject jSONObjectCreateLocationJsonObject = LocationJsonUtil.createLocationJsonObject(setMockLocationRequest.getMockLocation());
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FusedLocationProviderClient.KEY_MOCK_LOCATION, jSONObjectCreateLocationJsonObject);
            jSONObject.put("packageName", setMockLocationRequest.getPackageName());
            jSONObject.put("locTransactionId", setMockLocationRequest.getTid());
            return doWrite(new e1("location.setMockLocation", jSONObject.toString(), tid));
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "set mock location api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "set mock location exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(LocationCallback locationCallback) throws ApiException {
        ApiException e;
        c0.b().a(locationCallback);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        RemoveLocationUpdatesRequest removeLocationUpdatesRequest = new RemoveLocationUpdatesRequest(getContext());
        String tid = removeLocationUpdatesRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "removeLocationUpdates begin");
            if (locationCallback == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            d0 d0Var = (d0) c0.b().b((c0) new d0(null, null, locationCallback, null, tid, -1));
            if (d0Var == null) {
                HMSLocationLog.e("LocationClientImpl", tid, "remove location updates with callback cannot find callback");
                c0.b().c(locationCallback);
                throw new ApiException(new Status(LocationStatusCode.NO_MATCHED_CALLBACK, LocationStatusCode.getStatusCodeString(LocationStatusCode.NO_MATCHED_CALLBACK)));
            }
            String strA = d0Var.a();
            removeLocationUpdatesRequest.setTid(strA);
            removeLocationUpdatesRequest.setUuid(d0Var.h());
            String strCreateJsonString = JsonUtil.createJsonString(removeLocationUpdatesRequest);
            HMSLocationLog.i("LocationClientImpl", strA, "removeLocationUpdates with callback uuid:" + removeLocationUpdatesRequest.getUuid() + ",tid =" + removeLocationUpdatesRequest.getTid() + " Version Code = 60400300");
            return doWrite(new w0("location.removeLocationUpdates", strCreateJsonString, strA, d0Var, ""));
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "remove location updates with callback api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "remove location updates with callback exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(LocationRequest locationRequest) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GetLastLocationRequest getLastLocationRequest = new GetLastLocationRequest(getContext(), locationRequest.getNeedAddress(), locationRequest.getLanguage(), locationRequest.getCountryCode());
        String tid = getLastLocationRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "get last location begin. Version Code = 60400300");
            e();
            return doWrite(new o0("location.getLastLocation", JsonUtil.createJsonString(getLastLocationRequest), getLastLocationRequest.getTid(), ""));
        } catch (ApiException e) {
            HMSLocationLog.e("LocationClientImpl", tid, "get last location with address api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "get last location with address exception");
            taskCompletionSource.setException(new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000))));
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(LocationRequest locationRequest, PendingIntent pendingIntent) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (k1.a(getContext())) {
            RequestLocationUpdatesRequest requestLocationUpdatesRequest = new RequestLocationUpdatesRequest(getContext());
            String tid = requestLocationUpdatesRequest.getTid();
            try {
                HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdates with intent begin");
                if (locationRequest == null || pendingIntent == null) {
                    throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
                }
                if (locationRequest.getNumUpdates() <= 0) {
                    throw new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
                }
                e();
                b(locationRequest);
                requestLocationUpdatesRequest.setLocationRequest(locationRequest);
                d0 d0Var = new d0(locationRequest, pendingIntent, null, null, tid, 0);
                c0.b().d(d0Var);
                c1 c1Var = new c1("location.requestLocationUpdates", JsonUtil.createJsonString(requestLocationUpdatesRequest), tid, d0Var, "");
                c1Var.setParcelable(pendingIntent);
                HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdates with intent tid = " + requestLocationUpdatesRequest.getTid() + " Version Code = 60400300");
                return doWrite(c1Var);
            } catch (ApiException e2) {
                e = e2;
                HMSLocationLog.e("LocationClientImpl", tid, "request location updates with intent api exception:" + e.getMessage());
            } catch (Exception unused) {
                HMSLocationLog.e("LocationClientImpl", tid, "request location updates with intent exception");
                e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            }
        } else {
            e = new ApiException(new Status(LocationStatusCode.NOT_YET_SUPPORTED, LocationStatusCode.getStatusCodeString(LocationStatusCode.NOT_YET_SUPPORTED)));
        }
        taskCompletionSource.setException(e);
        return taskCompletionSource.getTask();
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) throws ApiException, InterruptedException {
        ApiException e;
        String strH;
        c0.b().a(locationCallback, 3);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        RequestLocationUpdatesRequest requestLocationUpdatesRequest = new RequestLocationUpdatesRequest(getContext());
        String tid = requestLocationUpdatesRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdatesEx with callback begin");
            if (locationRequest == null || locationCallback == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            if (locationRequest.getNumUpdates() <= 0) {
                throw new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
            }
            if (locationRequest.getPriority() == 200) {
                locationRequest.setNeedAddress(false);
            }
            if (looper == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            e();
            locationRequest.putExtras("productId", this.a);
            d0 d0Var = new d0(locationRequest, null, locationCallback, looper, tid, 1);
            d0 d0Var2 = (d0) c0.b().b((c0) d0Var);
            if (d0Var2 != null) {
                HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdatesInCache uuid=" + d0Var2.h() + " tid = " + d0Var2.a());
                strH = d0Var2.h();
                d0Var.b(strH);
            } else {
                strH = tid;
            }
            c0.b().d(d0Var);
            requestLocationUpdatesRequest.setUuid(strH);
            requestLocationUpdatesRequest.setLocationRequest(locationRequest);
            String strCreateJsonString = JsonUtil.createJsonString(requestLocationUpdatesRequest);
            HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdatesEx uuid=" + requestLocationUpdatesRequest.getUuid() + " tid = " + requestLocationUpdatesRequest.getTid() + " Version Code = 60400300");
            TaskApiCall a1Var = a(requestLocationUpdatesRequest) ? new a1("location.requestLocationUpdatesEx", strCreateJsonString, tid, d0Var, looper, "", requestLocationUpdatesRequest.getPackageName()) : new z0("location.requestLocationUpdatesEx", strCreateJsonString, tid, d0Var, looper, "");
            HMSLocationLog.i("LocationClientImpl", tid, "GET BINDER TO MONITOR");
            a1Var.setParcelable(InnerBinder.getInnerBinder());
            return doWrite(a1Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "requestEx location updates with callback api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "requestEx location updates with callback exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(LocationSettingsRequest locationSettingsRequest) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        CheckLocationSettingsRequest checkLocationSettingsRequest = new CheckLocationSettingsRequest(getContext());
        String tid = checkLocationSettingsRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "checkLocationSettings");
            if (locationSettingsRequest == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            checkLocationSettingsRequest.setLocationSettingsRequest(locationSettingsRequest);
            return doWrite(new j0("location.checkLocationSettings", JsonUtil.createJsonString(checkLocationSettingsRequest), tid));
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "check location settings api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "check location settings exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(LogConfig logConfig) throws ApiException {
        ApiException e;
        String string = UUID.randomUUID().toString();
        HMSLocationLog.i("LocationClientImpl", string, "setLogConfig start");
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        try {
            if (logConfig == null) {
                throw new ApiException(new Status(LocationStatusCode.ARGUMENTS_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.ARGUMENTS_EMPTY)));
            }
            HMSLocationLog.i("LocationClientImpl", string, "setLogConfig logConfig check");
            if (TextUtils.isEmpty(logConfig.getLogPath())) {
                throw new ApiException(new Status(LocationStatusCode.ARGUMENTS_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.ARGUMENTS_EMPTY)));
            }
            String logPath = logConfig.getLogPath();
            a(logPath, string);
            b(logPath, string);
            LogWriteApi.init(b(logConfig));
            if (g0.b()) {
                LogWriteApi.i("LocationClientImpl", g0.a(getContext()), null);
            }
            return taskCompletionSource.getTask();
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", string, "setLogConfig apiException");
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", string, "setLogConfig exception");
            e = new ApiException(new Status(LocationStatusCode.METHOD_INVOKE_ERROR, LocationStatusCode.getStatusCodeString(LocationStatusCode.METHOD_INVOKE_ERROR)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(OfflineLocationRequest offlineLocationRequest) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (offlineLocationRequest != null) {
            try {
                if (offlineLocationRequest.getRequestDataList() != null && !offlineLocationRequest.getRequestDataList().isEmpty()) {
                    String tid = offlineLocationRequest.getTid();
                    HMSLocationLog.i("LocationClientImpl", tid, "getOfflineLocation begin. Version Code = 60400300");
                    e();
                    return doWrite(new s0(LocationNaming.GET_OFFLINE_LOCATION_NAME, GsonUtil.getInstance().toJson(offlineLocationRequest), tid));
                }
            } catch (ApiException e2) {
                e = e2;
                HMSLocationLog.e("LocationClientImpl", null, "getOfflineLocation api exception:" + e.getMessage());
                taskCompletionSource.setException(e);
                return taskCompletionSource.getTask();
            } catch (Exception unused) {
                HMSLocationLog.e("LocationClientImpl", null, "getOfflineLocation exception");
                e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
                taskCompletionSource.setException(e);
                return taskCompletionSource.getTask();
            }
        }
        throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task a(boolean z) throws ApiException {
        ApiException e;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        String tid = new LocationBaseRequest(getContext()).getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "set mock mode begin");
            if (!com.huawei.hms.support.api.location.common.PermissionUtil.isLocationPermissionAvailable(getContext()) || !com.huawei.hms.support.api.location.common.PermissionUtil.canAccessMockLocation(getContext().getPackageName(), getContext())) {
                HMSLocationLog.e("LocationClientImpl", tid, "setMockEnabled,Permission is false ");
                throw new ApiException(new Status(10803, LocationStatusCode.getStatusCodeString(10803)));
            }
            SetMockModeRequest setMockModeRequest = new SetMockModeRequest(getContext());
            setMockModeRequest.setMockMode(z);
            return doWrite(new f1("location.setMockMode", JsonUtil.createJsonString(setMockModeRequest), tid));
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "set mock mode api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "set mock mode exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    public boolean a(String str) throws PatternSyntaxException {
        return !Pattern.compile("^[-a-zA-Z0-9_/.]+$").matcher(str).find();
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task b() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        LocationBaseRequest locationBaseRequest = new LocationBaseRequest(getContext());
        String tid = locationBaseRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "get location availability begin");
            e();
            return doWrite(new q0("location.getLocationAvailability", JsonUtil.createJsonString(locationBaseRequest), tid));
        } catch (ApiException e) {
            HMSLocationLog.e("LocationClientImpl", tid, "getLocationAvailability ApiException:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "getLocationAvailability exception");
            taskCompletionSource.setException(new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000))));
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task b(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) throws ApiException, InterruptedException {
        ApiException e;
        String strH;
        c0.b().a(locationCallback, 3);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        RequestLocationUpdatesRequest requestLocationUpdatesRequest = new RequestLocationUpdatesRequest(getContext());
        String tid = requestLocationUpdatesRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdates with callback begin");
            if (locationRequest == null || locationCallback == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            if (locationRequest.getNumUpdates() <= 0) {
                throw new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
            }
            if (looper == null) {
                throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
            }
            e();
            b(locationRequest);
            d0 d0Var = new d0(locationRequest, null, locationCallback, looper, tid, 0);
            d0 d0Var2 = (d0) c0.b().b((c0) d0Var);
            if (d0Var2 != null) {
                HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdatesInCache tid=" + d0Var2.a());
                strH = d0Var2.h();
                d0Var.b(strH);
            } else {
                strH = tid;
            }
            c0.b().d(d0Var);
            requestLocationUpdatesRequest.setUuid(strH);
            requestLocationUpdatesRequest.setLocationRequest(locationRequest);
            String strCreateJsonString = JsonUtil.createJsonString(requestLocationUpdatesRequest);
            HMSLocationLog.i("LocationClientImpl", tid, "requestLocationUpdates with callback uuid=" + strH + ", tid=" + requestLocationUpdatesRequest.getTid() + ", Version Code = 60400300");
            b1 b1Var = new b1("location.requestLocationUpdates", strCreateJsonString, tid, d0Var, looper, "");
            HMSLocationLog.i("LocationClientImpl", tid, "GET BINDER TO MONITOR");
            b1Var.setParcelable(InnerBinder.getInnerBinder());
            return doWrite(b1Var);
        } catch (ApiException e2) {
            e = e2;
            HMSLocationLog.e("LocationClientImpl", tid, "request location updates with callback api exception");
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "request location updates with callback exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task c() {
        String tid = new BackgroundReq(getContext()).getTid();
        HMSLocationLog.i("LocationClientImpl", tid, "disableBackgroundLocation");
        return doWrite(new k0("location.disableBackgroundLocation", "", tid));
    }

    @Override // com.huawei.hms.locationSdk.e
    public Task d() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        LocationBaseRequest locationBaseRequest = new LocationBaseRequest(getContext());
        String tid = locationBaseRequest.getTid();
        try {
            HMSLocationLog.i("LocationClientImpl", tid, "get last location begin. Version Code = 60400300");
            e();
            return doWrite(new p0("location.getLastLocation", JsonUtil.createJsonString(locationBaseRequest), locationBaseRequest.getTid(), ""));
        } catch (ApiException e) {
            HMSLocationLog.e("LocationClientImpl", tid, "get last location api exception:" + e.getMessage());
            taskCompletionSource.setException(e);
            return taskCompletionSource.getTask();
        } catch (Exception unused) {
            HMSLocationLog.e("LocationClientImpl", tid, "get last location exception");
            taskCompletionSource.setException(new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000))));
            return taskCompletionSource.getTask();
        }
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public <TResult, TClient extends AnyClient> Task doWrite(TaskApiCall<TClient, TResult> taskApiCall) {
        g1 g1Var;
        if (this.b == null) {
            Object objA = j1.a(getContext(), new k1());
            if (objA instanceof g1) {
                this.b = (g1) objA;
            }
        }
        return (k1.a(getContext()) || (g1Var = this.b) == null) ? super.doWrite(taskApiCall) : g1Var.a(this, taskApiCall, c);
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getKitSdkVersion() {
        return 60400300;
    }
}
