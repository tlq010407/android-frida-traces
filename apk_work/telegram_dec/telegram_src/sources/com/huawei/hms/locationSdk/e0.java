package com.huawei.hms.locationSdk;

import com.huawei.hms.location.LocationCallback;
import com.huawei.location.vdr.VdrManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class e0 {
    LocationCallback a;
    VdrManager b;

    public e0(LocationCallback locationCallback, VdrManager vdrManager) {
        this.a = locationCallback;
        this.b = vdrManager;
    }

    public LocationCallback a() {
        return this.a;
    }

    public VdrManager b() {
        return this.b;
    }
}
