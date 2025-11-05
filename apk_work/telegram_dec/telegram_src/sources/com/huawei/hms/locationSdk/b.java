package com.huawei.hms.locationSdk;

import android.app.PendingIntent;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.location.ActivityConversionRequest;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public interface b {
    Task a(long j, PendingIntent pendingIntent);

    Task a(PendingIntent pendingIntent);

    Task a(ActivityConversionRequest activityConversionRequest, PendingIntent pendingIntent);

    Task b(PendingIntent pendingIntent);
}
