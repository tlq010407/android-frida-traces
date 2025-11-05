package com.huawei.hms.location;

import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.locationSdk.a;
import com.huawei.hms.locationSdk.e;
import com.huawei.hms.locationSdk.v;
import com.huawei.hms.support.api.entity.location.offlinelocation.OfflineLocationRequest;
import com.huawei.hms.support.api.location.common.LocationClientStateManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FusedLocationProviderClient {
    public static final String KEY_MOCK_LOCATION = "mockLocation";
    public static final String KEY_VERTICAL_ACCURACY = "verticalAccuracy";
    private static final String TAG = "FusedLocationProviderClient";
    private e locationClient;
    private final Context mContext;

    public FusedLocationProviderClient(Activity activity) {
        this.mContext = activity.getApplicationContext();
        this.locationClient = a.b(activity, (v) null);
    }

    public FusedLocationProviderClient(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.locationClient = a.b(applicationContext, (v) null);
    }

    public Task disableBackgroundLocation() {
        return this.locationClient.c();
    }

    public Task enableBackgroundLocation(int i, Notification notification) {
        return this.locationClient.a(i, notification);
    }

    public Task flushLocations() {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a();
    }

    public Task getLastLocation() {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.d();
    }

    public Task getLastLocationWithAddress(LocationRequest locationRequest) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(locationRequest);
    }

    public Task getLocationAvailability() {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.b();
    }

    public Task getOfflineLocation(OfflineLocationRequest offlineLocationRequest) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(offlineLocationRequest);
    }

    public Task removeLocationUpdates(PendingIntent pendingIntent) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(pendingIntent);
    }

    public Task removeLocationUpdates(LocationCallback locationCallback) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(locationCallback);
    }

    public Task requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(locationRequest, pendingIntent);
    }

    public Task requestLocationUpdates(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.b(locationRequest, locationCallback, looper);
    }

    public Task requestLocationUpdatesEx(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(locationRequest, locationCallback, looper);
    }

    public Task setMockLocation(Location location) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(location);
    }

    public Task setMockMode(boolean z) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationClient.a(z);
    }
}
