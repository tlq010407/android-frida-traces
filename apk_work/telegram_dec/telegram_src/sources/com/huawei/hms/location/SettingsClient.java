package com.huawei.hms.location;

import android.app.Activity;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.locationSdk.a;
import com.huawei.hms.locationSdk.e;
import com.huawei.hms.locationSdk.v;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SettingsClient {
    private e locationClient;
    private Activity mActivity;
    private Context mContext;

    public SettingsClient(Activity activity) {
        this.mActivity = activity;
        this.locationClient = a.b(activity, (v) null);
    }

    public SettingsClient(Context context) {
        this.mContext = context;
        this.locationClient = a.b(context, (v) null);
    }

    public Task checkLocationSettings(LocationSettingsRequest locationSettingsRequest) {
        return this.locationClient.a(locationSettingsRequest);
    }

    public Task setLogConfig(LogConfig logConfig) {
        return this.locationClient.a(logConfig);
    }
}
