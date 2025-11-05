package com.huawei.hms.locationSdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.location.LocationAvailability;
import com.huawei.hms.location.LocationResult;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.LocationJsonUtil;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.support.api.location.common.exception.ServiceErrorCodeAdaptor;
import com.huawei.location.lite.common.log.logwrite.LogWriteApi;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class b1 extends i0<r, Void> {
    private d0 b;
    private Handler c;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b1.this.a(message);
        }
    }

    public b1(String str, String str2, String str3, d0 d0Var, Looper looper, String str4) throws ApiException {
        super(str, str2, str3, str4);
        this.b = d0Var;
        if (looper == null) {
            throw new ApiException(new Status(LocationStatusCode.PARAM_ERROR_EMPTY, LocationStatusCode.getStatusCodeString(LocationStatusCode.PARAM_ERROR_EMPTY)));
        }
        this.c = new a(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "handleOnResultMessage code:" + message.what);
        try {
            int i = message.what;
            if (i == 1) {
                Object obj = message.obj;
                if (obj instanceof LocationResult) {
                    this.b.c().onLocationResult((LocationResult) obj);
                }
            } else {
                if (i != 2) {
                    return;
                }
                Object obj2 = message.obj;
                if (obj2 instanceof LocationAvailability) {
                    LocationAvailability locationAvailability = (LocationAvailability) obj2;
                    HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "getLocationStatus:" + locationAvailability.getLocationStatus());
                    this.b.c().onLocationAvailability(locationAvailability);
                }
            }
        } catch (Exception unused) {
            HMSLocationLog.e("RequestLocationUpdatesTaskApiCall", this.a, "handleOnResultMessage exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void doExecute(r rVar, ResponseErrorCode responseErrorCode, String str, TaskCompletionSource taskCompletionSource) throws ApiException {
        ApiException e;
        HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "doExecute");
        try {
            if (responseErrorCode == null) {
                c0.b().c((c0) this.b);
                throw new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            }
            if (responseErrorCode.getErrorCode() == 0) {
                JSONObject jSONObject = new JSONObject(str);
                d0 d0Var = (d0) c0.b().b((c0) this.b);
                this.b = d0Var;
                if (d0Var != null && d0Var.d() != null && this.b.c() != null) {
                    if (jSONObject.has("locationResult")) {
                        HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "doExecute onLocationResult");
                        LocationResult locationResultFromJsonObject = LocationJsonUtil.parseLocationResultFromJsonObject(jSONObject);
                        int iG = this.b.g();
                        int size = locationResultFromJsonObject.getLocations().size();
                        HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "modify numUpdates with callback, numUpdates:" + iG + " , locationSize:" + size);
                        if (iG > 0 && iG >= size) {
                            if (iG == size) {
                                com.huawei.hms.locationSdk.a.b(rVar.getContext(), (v) null).a(this.b.c());
                            } else {
                                HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "numUpdates greater than locationSize");
                            }
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1;
                            messageObtain.obj = locationResultFromJsonObject;
                            this.c.sendMessage(messageObtain);
                            LogWriteApi.printLocationInfo(g0.a(this.a, locationResultFromJsonObject), g0.b());
                            c0.b().a(this.b, iG - size);
                            return;
                        }
                        com.huawei.hms.locationSdk.a.b(rVar.getContext(), (v) null).a(this.b.c());
                        return;
                    }
                    if (jSONObject.has("locationAvailability")) {
                        LocationAvailability locationAvailabilityFromString = LocationJsonUtil.parseLocationAvailabilityFromString(str);
                        HMSLocationLog.i("RequestLocationUpdatesTaskApiCall", this.a, "doExecute onLocationAvailability");
                        Message messageObtain2 = Message.obtain();
                        messageObtain2.what = 2;
                        messageObtain2.obj = locationAvailabilityFromString;
                        this.c.sendMessage(messageObtain2);
                        return;
                    }
                }
                HMSLocationLog.e("RequestLocationUpdatesTaskApiCall", this.a, "INTERNAL_ERROR : doExecute requestLocationUpdatesCache is null");
                return;
            }
            c0.b().c((c0) this.b);
            ServiceErrorCodeAdaptor.getInstance().setTaskByServiceErrorCode(taskCompletionSource, responseErrorCode, null);
        } catch (ApiException e2) {
            e = e2;
            c0.b().c((c0) this.b);
            HMSLocationLog.e("RequestLocationUpdatesTaskApiCall", this.a, "request location doExecute exception:" + e.getMessage());
            taskCompletionSource.setException(e);
        } catch (Exception unused) {
            c0.b().c((c0) this.b);
            HMSLocationLog.e("RequestLocationUpdatesTaskApiCall", this.a, "request location doExecute exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getMinApkVersion() {
        return 40000000;
    }
}
