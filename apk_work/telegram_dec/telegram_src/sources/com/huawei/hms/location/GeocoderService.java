package com.huawei.hms.location;

import android.app.Activity;
import android.content.Context;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.locationSdk.a;
import com.huawei.hms.locationSdk.k;
import com.huawei.hms.locationSdk.v;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class GeocoderService {
    private k locationClient;

    public GeocoderService(Activity activity, Locale locale) {
        this.locationClient = a.a(activity, locale, (v) null);
    }

    public GeocoderService(Context context, Locale locale) {
        this.locationClient = a.a(context, locale, (v) null);
    }

    public Task getFromLocation(GetFromLocationRequest getFromLocationRequest) {
        return this.locationClient.a(getFromLocationRequest);
    }

    public Task getFromLocationName(GetFromLocationNameRequest getFromLocationNameRequest) {
        return this.locationClient.a(getFromLocationNameRequest);
    }
}
