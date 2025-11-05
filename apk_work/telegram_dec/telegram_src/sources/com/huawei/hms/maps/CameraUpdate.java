package com.huawei.hms.maps;

import com.huawei.hms.maps.model.CameraUpdateParam;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class CameraUpdate {
    private CameraUpdateParam a;

    public CameraUpdate(CameraUpdateParam cameraUpdateParam) {
        if (cameraUpdateParam == null) {
            throw new NullPointerException("Object is null");
        }
        this.a = cameraUpdateParam;
    }

    @Deprecated
    public CameraUpdateParam getCameraUpdate() {
        return this.a;
    }

    public CameraUpdateParam getCameraUpdateParam() {
        return this.a;
    }
}
