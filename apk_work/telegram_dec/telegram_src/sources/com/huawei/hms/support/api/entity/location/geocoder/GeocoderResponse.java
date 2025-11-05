package com.huawei.hms.support.api.entity.location.geocoder;

import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.support.api.entity.location.common.LocationBaseResponse;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class GeocoderResponse extends LocationBaseResponse {

    @Packed
    private List<HwLocation> geocoderResult;

    public List<HwLocation> getGeocoderResult() {
        return this.geocoderResult;
    }

    public void setGeocoderResult(List<HwLocation> list) {
        this.geocoderResult = list;
    }
}
