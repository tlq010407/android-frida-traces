package com.huawei.hms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.locationSdk.a;
import com.huawei.hms.locationSdk.n;
import com.huawei.hms.locationSdk.v;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class GeofenceService {
    private n locationClient;

    public GeofenceService(Activity activity) {
        this.locationClient = a.d(activity, (v) null);
    }

    public GeofenceService(Context context) {
        this.locationClient = a.d(context, (v) null);
    }

    public Task createGeofenceList(GeofenceRequest geofenceRequest, PendingIntent pendingIntent) {
        return this.locationClient.a(geofenceRequest, pendingIntent);
    }

    public Task deleteGeofenceList(PendingIntent pendingIntent) {
        return this.locationClient.a(pendingIntent);
    }

    public Task deleteGeofenceList(List<String> list) {
        return this.locationClient.a(list);
    }
}
