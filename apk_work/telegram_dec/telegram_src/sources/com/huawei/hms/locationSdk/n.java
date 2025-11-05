package com.huawei.hms.locationSdk;

import android.app.PendingIntent;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.location.GeofenceRequest;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface n {
    Task a(PendingIntent pendingIntent);

    Task a(GeofenceRequest geofenceRequest, PendingIntent pendingIntent);

    Task a(List<String> list);
}
