package com.google.android.gms.maps.model;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class Dash extends PatternItem {
    public final float length;

    public Dash(float f) {
        super(0, Float.valueOf(Math.max(f, com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED)));
        this.length = Math.max(f, com.huawei.hms.maps.model.BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.google.android.gms.maps.model.PatternItem
    public String toString() {
        return "[Dash: length=" + this.length + "]";
    }
}
