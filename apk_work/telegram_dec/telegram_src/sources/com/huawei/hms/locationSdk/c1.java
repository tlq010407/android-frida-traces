package com.huawei.hms.locationSdk;

import com.huawei.hmf.tasks.TaskCompletionSource;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.LocationJsonUtil;
import com.huawei.hms.support.api.location.common.exception.LocationStatusCode;
import com.huawei.hms.support.api.location.common.exception.ServiceErrorCodeAdaptor;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class c1 extends i0<r, Void> {
    private d0 b;

    public c1(String str, String str2, String str3, d0 d0Var, String str4) {
        super(str, str2, str3, str4);
        this.b = d0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.huawei.hms.common.internal.TaskApiCall
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void doExecute(r rVar, ResponseErrorCode responseErrorCode, String str, TaskCompletionSource taskCompletionSource) throws ApiException {
        ApiException e;
        HMSLocationLog.i("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "doExecute");
        try {
            if (responseErrorCode == null) {
                c0.b().c((c0) this.b);
                throw new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            }
            if (responseErrorCode.getErrorCode() == 0) {
                JSONObject jSONObject = new JSONObject(str);
                d0 d0Var = (d0) c0.b().b((c0) this.b);
                this.b = d0Var;
                if (d0Var != null && d0Var.d() != null) {
                    if (jSONObject.has("locationResult")) {
                        int size = LocationJsonUtil.parseLocationResultFromJsonObject(jSONObject).getLocations().size();
                        int iG = this.b.g();
                        HMSLocationLog.i("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "modify numUpdates with callback, numUpdates:" + iG + " , locationSize:" + size);
                        if (iG > 0 && iG >= size) {
                            if (iG == size) {
                                HMSLocationLog.i("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "modify numUpdates last need remove request");
                                a.b(rVar.getContext(), (v) null).a(this.b.b());
                            } else {
                                HMSLocationLog.i("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "numUpdates greater than locationSize");
                            }
                            c0.b().a(this.b, iG - size);
                            return;
                        }
                        HMSLocationLog.i("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "modify numUpdates exception need remove request");
                        a.b(rVar.getContext(), (v) null).a(this.b.b());
                        return;
                    }
                }
                HMSLocationLog.e("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "INTERNAL_ERROR : doExecute requestLocationUpdatesCache is null");
                return;
            }
            c0.b().c((c0) this.b);
            ServiceErrorCodeAdaptor.getInstance().setTaskByServiceErrorCode(taskCompletionSource, responseErrorCode, null);
        } catch (ApiException e2) {
            e = e2;
            c0.b().c((c0) this.b);
            HMSLocationLog.e("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "doExecute exception:" + e.getMessage());
            taskCompletionSource.setException(e);
        } catch (Exception unused) {
            c0.b().c((c0) this.b);
            HMSLocationLog.e("RequestLocationUpdatesWithIntentTaskApiCall", this.a, "doExecute exception");
            e = new ApiException(new Status(10000, LocationStatusCode.getStatusCodeString(10000)));
            taskCompletionSource.setException(e);
        }
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getApiLevel() {
        return 4;
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public int getMinApkVersion() {
        return 40000000;
    }
}
