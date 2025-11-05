package com.huawei.hms.maps.model;

import com.huawei.hms.feature.dynamic.IObjectWrapper;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class BitmapDescriptor {
    private final IObjectWrapper a;

    public BitmapDescriptor(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            throw new NullPointerException("Object is null");
        }
        this.a = iObjectWrapper;
    }

    public IObjectWrapper getObject() {
        return this.a;
    }
}
