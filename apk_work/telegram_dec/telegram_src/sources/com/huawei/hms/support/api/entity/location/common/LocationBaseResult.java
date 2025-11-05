package com.huawei.hms.support.api.entity.location.common;

import com.huawei.hms.support.api.client.Result;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LocationBaseResult extends Result {
    private LocationBaseResponse locationBaseResponse;

    public LocationBaseResponse getLocationBaseResponse() {
        return this.locationBaseResponse;
    }

    public void setLocationBaseResponse(LocationBaseResponse locationBaseResponse) {
        this.locationBaseResponse = locationBaseResponse;
    }
}
