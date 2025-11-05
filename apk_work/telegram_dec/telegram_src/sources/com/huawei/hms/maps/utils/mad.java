package com.huawei.hms.maps.utils;

import android.content.Context;
import android.graphics.Bitmap;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class mad extends maa {
    public static final mad a = new mad(BitmapDescriptorFactory.HUE_RED);
    private final float b;

    public mad(float f) {
        this.b = f > 180.0f ? f - 360.0f : f;
    }

    @Override // com.huawei.hms.maps.utils.maa
    public Bitmap a(Context context) {
        return null;
    }
}
