package com.huawei.hms.locationSdk;

import android.app.Activity;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.api.Api;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.TaskApiCall;
import com.huawei.hms.location.GetFromLocationNameRequest;
import com.huawei.hms.location.GetFromLocationRequest;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.location.common.LocationNaming;
import com.huawei.hms.support.api.entity.location.geocoder.GeocoderRequest;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class m extends HuaweiApi<v> implements k {
    private static final l c = new l();
    private static final Api<v> d = new Api<>("HmsLocation.API");
    private g1 a;
    private Locale b;

    public m(Activity activity, Locale locale, v vVar) {
        super(activity, d, vVar, (AbstractClientBuilder) c);
        this.b = locale;
    }

    public m(Context context, Locale locale, v vVar) {
        super(context, d, vVar, c);
        this.b = locale;
    }

    @Override // com.huawei.hms.locationSdk.k
    public Task a(GetFromLocationNameRequest getFromLocationNameRequest) {
        ApiException apiException;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (getFromLocationNameRequest == null || getFromLocationNameRequest.getLocationName() == null || getFromLocationNameRequest.getLocationName().isEmpty()) {
            apiException = new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
        } else if (getFromLocationNameRequest.getLowerLeftLatitude() < -90.0d || getFromLocationNameRequest.getLowerLeftLatitude() > 90.0d || getFromLocationNameRequest.getLowerLeftLongitude() < -180.0d || getFromLocationNameRequest.getLowerLeftLongitude() > 180.0d || getFromLocationNameRequest.getUpperRightLatitude() < -90.0d || getFromLocationNameRequest.getUpperRightLatitude() > 90.0d || getFromLocationNameRequest.getUpperRightLongitude() < -180.0d || getFromLocationNameRequest.getUpperRightLongitude() > 180.0d || getFromLocationNameRequest.getMaxResults() < 0) {
            apiException = new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
        } else {
            LogConsole.i("LocationGeocoderClientImpl", "getFromLocationName checkParams success");
            GeocoderRequest geocoderRequest = new GeocoderRequest(getContext(), getFromLocationNameRequest.getLocationName(), getFromLocationNameRequest.getMaxResults());
            geocoderRequest.setLowerLeftLatitude(getFromLocationNameRequest.getLowerLeftLatitude());
            geocoderRequest.setLowerLeftLongitude(getFromLocationNameRequest.getLowerLeftLongitude());
            geocoderRequest.setUpperRightLatitude(getFromLocationNameRequest.getUpperRightLatitude());
            geocoderRequest.setUpperRightLongitude(getFromLocationNameRequest.getUpperRightLongitude());
            Locale locale = this.b;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            geocoderRequest.setLanguage(locale.getLanguage());
            Locale locale2 = this.b;
            if (locale2 == null) {
                locale2 = Locale.getDefault();
            }
            geocoderRequest.setCountry(locale2.getCountry());
            String tid = geocoderRequest.getTid();
            try {
                HMSLocationLog.i("LocationGeocoderClientImpl", tid, "getFromLocationName begin. Version Code = 60400300");
                String strCreateJsonString = JsonUtil.createJsonString(geocoderRequest);
                return doWrite(new m0(getContext(), LocationNaming.GET_FROM_LOCATION_NAME, strCreateJsonString, geocoderRequest.getTid(), ""));
            } catch (Exception unused) {
                HMSLocationLog.e("LocationGeocoderClientImpl", tid, "getFromLocationName exception");
                apiException = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            }
        }
        taskCompletionSource.setException(apiException);
        return taskCompletionSource.getTask();
    }

    @Override // com.huawei.hms.locationSdk.k
    public Task a(GetFromLocationRequest getFromLocationRequest) {
        ApiException apiException;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (getFromLocationRequest == null) {
            apiException = new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
        } else if (getFromLocationRequest.getLatitude() < -90.0d || getFromLocationRequest.getLatitude() > 90.0d || getFromLocationRequest.getLongitude() < -180.0d || getFromLocationRequest.getLongitude() > 180.0d || getFromLocationRequest.getMaxResults() < 0) {
            apiException = new ApiException(new Status(10802, LocationStatusCode.getStatusCodeString(10802)));
        } else {
            LogConsole.i("LocationGeocoderClientImpl", "getFromLocation checkParams success");
            GeocoderRequest geocoderRequest = new GeocoderRequest(getContext(), getFromLocationRequest.getLatitude(), getFromLocationRequest.getLongitude(), getFromLocationRequest.getMaxResults());
            Locale locale = this.b;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            geocoderRequest.setLanguage(locale.getLanguage());
            Locale locale2 = this.b;
            if (locale2 == null) {
                locale2 = Locale.getDefault();
            }
            geocoderRequest.setCountry(locale2.getCountry());
            String tid = geocoderRequest.getTid();
            try {
                HMSLocationLog.i("LocationGeocoderClientImpl", tid, "getFromLocation begin. Version Code = 60400300");
                String strCreateJsonString = JsonUtil.createJsonString(geocoderRequest);
                return doWrite(new n0(getContext(), LocationNaming.GET_FROM_LOCATION, strCreateJsonString, geocoderRequest.getTid(), ""));
            } catch (Exception unused) {
                HMSLocationLog.e("LocationGeocoderClientImpl", tid, "getFromLocation exception");
                apiException = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            }
        }
        taskCompletionSource.setException(apiException);
        return taskCompletionSource.getTask();
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
        return (k1.a(getContext()) || (g1Var = this.a) == null) ? super.doWrite(taskApiCall) : g1Var.a(this, taskApiCall, c);
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getApiLevel() {
        return 5;
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getKitSdkVersion() {
        return 60400300;
    }
}
