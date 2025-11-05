package com.huawei.hms.locationSdk;

import android.app.Notification;
import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.location.LocationCallback;
import com.huawei.hms.location.LocationRequest;
import com.huawei.hms.location.LocationSettingsRequest;
import com.huawei.hms.location.LogConfig;
import com.huawei.hms.support.api.entity.location.offlinelocation.OfflineLocationRequest;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface e {
    Task a();

    Task a(int i, Notification notification);

    Task a(PendingIntent pendingIntent);

    Task a(Location location);

    Task a(LocationCallback locationCallback);

    Task a(LocationRequest locationRequest);

    Task a(LocationRequest locationRequest, PendingIntent pendingIntent);

    Task a(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper);

    Task a(LocationSettingsRequest locationSettingsRequest);

    Task a(LogConfig logConfig);

    Task a(OfflineLocationRequest offlineLocationRequest);

    Task a(boolean z);

    Task b();

    Task b(LocationRequest locationRequest, LocationCallback locationCallback, Looper looper);

    Task c();

    Task d();
}
