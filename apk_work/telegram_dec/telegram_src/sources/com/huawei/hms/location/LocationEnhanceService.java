package com.huawei.hms.location;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.locationSdk.a;
import com.huawei.hms.locationSdk.h;
import com.huawei.hms.locationSdk.v;
import com.huawei.hms.support.api.location.common.LocationClientStateManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LocationEnhanceService {
    private static final String TAG = "LocationEnhanceService";
    private h locationEnhanceClient;

    public LocationEnhanceService(Activity activity) {
        this.locationEnhanceClient = a.c(activity, (v) null);
    }

    public LocationEnhanceService(Context context) {
        this.locationEnhanceClient = a.c(context, (v) null);
    }

    private Task reportLocation(Location location, String str) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationEnhanceClient.a(location, str);
    }

    public Task getNavigationState(NavigationRequest navigationRequest) {
        LocationClientStateManager.getInstance().resetCache();
        return this.locationEnhanceClient.a(navigationRequest);
    }
}
