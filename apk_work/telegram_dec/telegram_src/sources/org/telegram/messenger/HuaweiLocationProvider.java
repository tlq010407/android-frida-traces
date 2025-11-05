package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import androidx.core.util.Consumer;
import com.huawei.hmf.tasks.OnCompleteListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.location.FusedLocationProviderClient;
import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.location.LocationResult;
import com.huawei.hms.location.LocationServices;
import com.huawei.hms.location.LocationSettingsRequest;
import com.huawei.hms.location.SettingsClient;
import org.telegram.messenger.ILocationServiceProvider;

@SuppressLint({"MissingPermission"})
/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class HuaweiLocationProvider implements ILocationServiceProvider {
    private FusedLocationProviderClient locationProviderClient;
    private SettingsClient settingsClient;

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiApiClientImpl implements ILocationServiceProvider.IMapApiClient {
        private HuaweiApiClient apiClient;

        private HuaweiApiClientImpl(HuaweiApiClient huaweiApiClient) {
            this.apiClient = huaweiApiClient;
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.IMapApiClient
        public void connect() {
            this.apiClient.connect((Activity) null);
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.IMapApiClient
        public void disconnect() {
            this.apiClient.disconnect();
        }
    }

    /* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
    public static final class HuaweiLocationRequest implements ILocationServiceProvider.ILocationRequest {
        private LocationRequest request;

        private HuaweiLocationRequest(LocationRequest locationRequest) {
            this.request = locationRequest;
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.ILocationRequest
        public void setFastestInterval(long j) throws IllegalArgumentException {
            this.request.setFastestInterval(j);
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.ILocationRequest
        public void setInterval(long j) throws IllegalArgumentException {
            this.request.setInterval(j);
        }

        @Override // org.telegram.messenger.ILocationServiceProvider.ILocationRequest
        public void setPriority(int i) {
            this.request.setPriority(i != 1 ? i != 2 ? i != 3 ? 100 : 105 : 104 : 102);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkLocationSettings$1(Consumer consumer, Task task) {
        int i;
        try {
            task.getResultThrowException(ApiException.class);
            consumer.accept(0);
        } catch (ApiException e) {
            int statusCode = e.getStatusCode();
            if (statusCode == 6) {
                i = 1;
            } else if (statusCode != 8502) {
                return;
            } else {
                i = 2;
            }
            consumer.accept(Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getLastLocation$0(Consumer consumer, Task task) {
        if (task.getException() != null) {
            return;
        }
        consumer.accept((Location) task.getResult());
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public void checkLocationSettings(ILocationServiceProvider.ILocationRequest iLocationRequest, final Consumer consumer) {
        this.settingsClient.checkLocationSettings(new LocationSettingsRequest.Builder().addLocationRequest(((HuaweiLocationRequest) iLocationRequest).request).build()).addOnCompleteListener(new OnCompleteListener() { // from class: org.telegram.messenger.HuaweiLocationProvider$$ExternalSyntheticLambda1
            @Override // com.huawei.hmf.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                HuaweiLocationProvider.lambda$checkLocationSettings$1(consumer, task);
            }
        });
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public boolean checkServices() {
        return HuaweiPushListenerProvider.INSTANCE.hasServices();
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public void getLastLocation(final Consumer consumer) {
        this.locationProviderClient.getLastLocation().addOnCompleteListener(new OnCompleteListener() { // from class: org.telegram.messenger.HuaweiLocationProvider$$ExternalSyntheticLambda2
            @Override // com.huawei.hmf.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                HuaweiLocationProvider.lambda$getLastLocation$0(consumer, task);
            }
        });
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public void init(Context context) {
        this.locationProviderClient = LocationServices.getFusedLocationProviderClient(context);
        this.settingsClient = new SettingsClient(context);
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public ILocationServiceProvider.ILocationRequest onCreateLocationRequest() {
        return new HuaweiLocationRequest(LocationRequest.create());
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public ILocationServiceProvider.IMapApiClient onCreateLocationServicesAPI(Context context, final ILocationServiceProvider.IAPIConnectionCallbacks iAPIConnectionCallbacks, final ILocationServiceProvider.IAPIOnConnectionFailedListener iAPIOnConnectionFailedListener) {
        return new HuaweiApiClientImpl(new HuaweiApiClient.Builder(ApplicationLoader.applicationContext).addConnectionCallbacks(new HuaweiApiClient.ConnectionCallbacks() { // from class: org.telegram.messenger.HuaweiLocationProvider.3
            @Override // com.huawei.hms.api.HuaweiApiClient.ConnectionCallbacks
            public void onConnected() {
                iAPIConnectionCallbacks.onConnected(null);
            }

            @Override // com.huawei.hms.api.HuaweiApiClient.ConnectionCallbacks
            public void onConnectionSuspended(int i) {
                iAPIConnectionCallbacks.onConnectionSuspended(i);
            }
        }).addOnConnectionFailedListener(new HuaweiApiClient.OnConnectionFailedListener() { // from class: org.telegram.messenger.HuaweiLocationProvider$$ExternalSyntheticLambda0
            @Override // com.huawei.hms.api.HuaweiApiClient.OnConnectionFailedListener
            public final void onConnectionFailed(ConnectionResult connectionResult) {
                iAPIOnConnectionFailedListener.onConnectionFailed();
            }
        }).build());
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public void removeLocationUpdates(final ILocationServiceProvider.ILocationListener iLocationListener) {
        this.locationProviderClient.removeLocationUpdates(new LocationCallback() { // from class: org.telegram.messenger.HuaweiLocationProvider.2
            @Override // com.huawei.hms.location.LocationCallback
            public void onLocationResult(LocationResult locationResult) {
                iLocationListener.onLocationChanged(locationResult.getLastLocation());
            }
        });
    }

    @Override // org.telegram.messenger.ILocationServiceProvider
    public void requestLocationUpdates(ILocationServiceProvider.ILocationRequest iLocationRequest, final ILocationServiceProvider.ILocationListener iLocationListener) {
        this.locationProviderClient.requestLocationUpdates(((HuaweiLocationRequest) iLocationRequest).request, new LocationCallback() { // from class: org.telegram.messenger.HuaweiLocationProvider.1
            @Override // com.huawei.hms.location.LocationCallback
            public void onLocationResult(LocationResult locationResult) {
                iLocationListener.onLocationChanged(locationResult.getLastLocation());
            }
        }, Looper.getMainLooper());
    }
}
