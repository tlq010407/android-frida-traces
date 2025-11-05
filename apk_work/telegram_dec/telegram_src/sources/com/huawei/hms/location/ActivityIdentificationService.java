package com.huawei.hms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.locationSdk.a;
import com.huawei.hms.locationSdk.b;
import com.huawei.hms.locationSdk.v;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class ActivityIdentificationService {
    private b locationArClient;

    public ActivityIdentificationService(Activity activity) {
        this.locationArClient = a.a(activity, (v) null);
    }

    public ActivityIdentificationService(Context context) {
        this.locationArClient = a.a(context, (v) null);
    }

    public Task createActivityConversionUpdates(ActivityConversionRequest activityConversionRequest, PendingIntent pendingIntent) {
        return this.locationArClient.a(activityConversionRequest, pendingIntent);
    }

    public Task createActivityIdentificationUpdates(long j, PendingIntent pendingIntent) {
        return this.locationArClient.a(j, pendingIntent);
    }

    public Task deleteActivityConversionUpdates(PendingIntent pendingIntent) {
        return this.locationArClient.b(pendingIntent);
    }

    public Task deleteActivityIdentificationUpdates(PendingIntent pendingIntent) {
        return this.locationArClient.a(pendingIntent);
    }
}
