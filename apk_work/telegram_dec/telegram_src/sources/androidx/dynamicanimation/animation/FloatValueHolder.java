package androidx.dynamicanimation.animation;

import com.huawei.hms.maps.model.BitmapDescriptorFactory;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class FloatValueHolder {
    private float mValue = BitmapDescriptorFactory.HUE_RED;

    public FloatValueHolder(float f) {
        setValue(f);
    }

    public float getValue() {
        return this.mValue;
    }

    public void setValue(float f) {
        this.mValue = f;
    }
}
