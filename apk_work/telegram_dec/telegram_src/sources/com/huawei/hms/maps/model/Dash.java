package com.huawei.hms.maps.model;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public final class Dash extends PatternItem {
    public static final float MIN_LENGTH = 0.0f;

    public Dash(float f) {
        super(0, Math.max(f, BitmapDescriptorFactory.HUE_RED));
    }

    @Override // com.huawei.hms.maps.model.PatternItem
    public String toString() {
        return "Type is Dash and the paramLength is" + String.valueOf(this.length);
    }
}
