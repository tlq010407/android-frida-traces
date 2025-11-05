package com.huawei.hms.support.api.entity.location.updates;

import com.huawei.hms.support.api.client.Result;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class RequestLocationUpdatesResult extends Result {
    private RequestLocationUpdatesResponse requestLocationUpdatesResponse;

    public RequestLocationUpdatesResponse getRequestLocationUpdatesResponse() {
        return this.requestLocationUpdatesResponse;
    }

    public void setRequestLocationUpdatesResponse(RequestLocationUpdatesResponse requestLocationUpdatesResponse) {
        this.requestLocationUpdatesResponse = requestLocationUpdatesResponse;
    }
}
