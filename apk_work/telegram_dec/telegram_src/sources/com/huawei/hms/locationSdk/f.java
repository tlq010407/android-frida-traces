package com.huawei.hms.locationSdk;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.common.internal.AbstractClientBuilder;
import com.huawei.hms.common.internal.BaseHmsClient;
import com.huawei.hms.common.internal.ClientSettings;
import com.huawei.hms.location.FusedLocationProviderClient;
import com.huawei.hms.location.LocationAvailability;
import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.location.LocationServices;
import com.huawei.hms.support.api.location.common.CollectionsUtil;
import com.huawei.hms.support.api.location.common.HMSLocationLog;
import com.huawei.hms.support.api.location.common.LocationClientStateManager;
import com.huawei.hms.support.log.HMSLog;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class f extends AbstractClientBuilder<r, v> {

    public static class a implements BaseHmsClient.ConnectionCallbacks {
        private static final byte[] c = new byte[0];
        private Context a;
        private Handler b;

        /* renamed from: com.huawei.hms.locationSdk.f$a$a, reason: collision with other inner class name */
        class C0009a implements Handler.Callback {
            C0009a() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i != 1001) {
                    if (i != 1002) {
                        return false;
                    }
                    a.this.b();
                    return false;
                }
                a.this.b.removeMessages(CommonCode.BusInterceptor.PRIVACY_CANCEL);
                a.this.b.sendEmptyMessageDelayed(CommonCode.BusInterceptor.PRIVACY_CANCEL, 12000L);
                a.this.d();
                return false;
            }
        }

        class b implements OnFailureListener {
            final /* synthetic */ LocationCallback a;
            final /* synthetic */ PendingIntent b;

            b(LocationCallback locationCallback, PendingIntent pendingIntent) {
                this.a = locationCallback;
                this.b = pendingIntent;
            }

            @Override // com.huawei.hmf.tasks.OnFailureListener
            public void onFailure(Exception exc) throws PendingIntent.CanceledException {
                HMSLog.e("LocationClientBuilder", "task request onFailure");
                a.this.b.removeMessages(CommonCode.BusInterceptor.PRIVACY_CANCEL);
                a.this.a(exc, this.a, this.b);
                LocationClientStateManager.getInstance().setResendState(2);
            }
        }

        class c implements OnSuccessListener {
            c() {
            }

            @Override // com.huawei.hmf.tasks.OnSuccessListener
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onSuccess(Void r2) {
                HMSLog.i("LocationClientBuilder", "task request onSuccess");
                a.this.b.removeMessages(CommonCode.BusInterceptor.PRIVACY_CANCEL);
                LocationClientStateManager.getInstance().setResendState(0);
            }
        }

        public a(Context context, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
            this.a = context;
        }

        private void a() {
            boolean zCheckCanResendRequest = LocationClientStateManager.getInstance().checkCanResendRequest();
            if (zCheckCanResendRequest) {
                e();
            }
            HMSLog.i("LocationClientBuilder", "checkCanResend:" + zCheckCanResendRequest + ",reStartHmsLocation restartState：" + LocationClientStateManager.getInstance().getResendState());
        }

        private void a(Task task, LocationCallback locationCallback, PendingIntent pendingIntent) {
            task.addOnSuccessListener(new c()).addOnFailureListener(new b(locationCallback, pendingIntent));
        }

        private void a(FusedLocationProviderClient fusedLocationProviderClient, d0 d0Var) {
            Task taskRequestLocationUpdates;
            LocationCallback locationCallbackC = d0Var.c();
            LocationRequest locationRequestD = d0Var.d();
            PendingIntent pendingIntentB = d0Var.b();
            if (locationRequestD == null) {
                LocationClientStateManager.getInstance().setResendState(0);
                HMSLocationLog.w("LocationClientBuilder", d0Var.a(), "onConnected, requests cache list param is error");
                return;
            }
            locationRequestD.putExtras("isReRequest", "1");
            if (locationCallbackC == null) {
                if (pendingIntentB != null) {
                    a(fusedLocationProviderClient.requestLocationUpdates(locationRequestD, pendingIntentB), (LocationCallback) null, pendingIntentB);
                    return;
                } else {
                    LocationClientStateManager.getInstance().setResendState(0);
                    HMSLocationLog.w("LocationClientBuilder", d0Var.a(), "onConnected, requests cache list param is error");
                    return;
                }
            }
            if (d0Var.f() == 1) {
                HMSLocationLog.i("LocationClientBuilder", d0Var.a(), "send ex location request");
                taskRequestLocationUpdates = fusedLocationProviderClient.requestLocationUpdatesEx(locationRequestD, locationCallbackC, d0Var.e());
            } else {
                HMSLocationLog.i("LocationClientBuilder", d0Var.a(), "send location request");
                taskRequestLocationUpdates = fusedLocationProviderClient.requestLocationUpdates(locationRequestD, locationCallbackC, d0Var.e());
            }
            a(taskRequestLocationUpdates, locationCallbackC, (PendingIntent) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Exception exc, LocationCallback locationCallback, PendingIntent pendingIntent) throws PendingIntent.CanceledException {
            String str;
            try {
                if (exc instanceof ApiException) {
                    ApiException apiException = (ApiException) exc;
                    int statusCode = apiException.getStatusCode();
                    if (statusCode != 10000 && statusCode != 10102 && statusCode != 10803) {
                        if (statusCode != 907135004) {
                            return;
                        }
                        HMSLog.e("LocationClientBuilder", "task request onFailure from HMS and checkRestart");
                        a();
                        return;
                    }
                    if (locationCallback != null) {
                        LocationAvailability locationAvailability = new LocationAvailability();
                        locationAvailability.setLocationStatus(1001);
                        locationCallback.onLocationAvailability(locationAvailability);
                        HMSLog.e("LocationClientBuilder", "task request onFailure from Location and callback to cp ,errorCode " + apiException.getStatusCode());
                    }
                    if (pendingIntent == null) {
                        return;
                    }
                    Intent intent = new Intent();
                    LocationAvailability locationAvailability2 = new LocationAvailability();
                    locationAvailability2.setLocationStatus(1001);
                    intent.putExtra("com.huawei.hms.location.EXTRA_LOCATION_AVAILABILITY", locationAvailability2);
                    pendingIntent.send(this.a, 0, intent);
                    str = "task request onFailure from Location and pendingIntent to cp ,errorCode " + apiException.getStatusCode();
                } else {
                    str = "handlerOnFailureMsg failed by instanceof failed";
                }
                HMSLog.e("LocationClientBuilder", str);
            } catch (Exception unused) {
                HMSLog.e("LocationClientBuilder", "handlerOnFailureMsg failed by exception");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (LocationClientStateManager.getInstance().getResendState() == 1) {
                LocationClientStateManager.getInstance().setResendState(2);
                HMSLog.e("LocationClientBuilder", "reSend request time out ,reset state to RE_START_STATE_FAILED");
            }
        }

        private void c() {
            if (this.b == null) {
                HandlerThread handlerThread = new HandlerThread("LocationClientBuilder");
                handlerThread.start();
                this.b = new Handler(handlerThread.getLooper(), new C0009a());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            try {
                List<d0> listA = c0.b().a();
                if (CollectionsUtil.isEmpty(listA)) {
                    HMSLog.i("LocationClientBuilder", "onConnected, requests cache list is empty remove delay check msg");
                    this.b.removeMessages(CommonCode.BusInterceptor.PRIVACY_CANCEL);
                    LocationClientStateManager.getInstance().setResendState(2);
                    return;
                }
                HMSLog.i("LocationClientBuilder", "request cache list size:" + listA.size());
                FusedLocationProviderClient fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(this.a);
                for (d0 d0Var : listA) {
                    HMSLocationLog.i("LocationClientBuilder", d0Var.a(), "onConnected, request in cache list prepare to send");
                    a(fusedLocationProviderClient, d0Var);
                }
            } catch (Exception unused) {
                LocationClientStateManager.getInstance().setResendState(2);
                HMSLog.e("LocationClientBuilder", "onConnected exception");
            }
        }

        private void e() {
            synchronized (c) {
                HMSLog.i("LocationClientBuilder", "reStartHmsLocation restartState：" + LocationClientStateManager.getInstance().getResendState());
                LocationClientStateManager.getInstance().setResendState(1);
                c();
                this.b.sendEmptyMessageDelayed(1001, 300L);
            }
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.ConnectionCallbacks
        public void onConnected() {
            HMSLog.i("LocationClientBuilder", "onConnected, send suspended requests,reStartState:" + LocationClientStateManager.getInstance().getResendState());
            if (LocationClientStateManager.getInstance().getResendState() == 2) {
                e();
            }
        }

        @Override // com.huawei.hms.common.internal.BaseHmsClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            HMSLog.i("LocationClientBuilder", "onConnectionSuspended reason:" + i);
            a();
        }
    }

    @Override // com.huawei.hms.common.internal.AbstractClientBuilder
    public r buildClient(Context context, ClientSettings clientSettings, BaseHmsClient.OnConnectionFailedListener onConnectionFailedListener, BaseHmsClient.ConnectionCallbacks connectionCallbacks) {
        return new r(context, clientSettings, onConnectionFailedListener, new a(context, connectionCallbacks));
    }
}
