package androidx.dynamicanimation.animation;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class FloatPropertyCompat {
    final String mPropertyName;

    public FloatPropertyCompat(String str) {
        this.mPropertyName = str;
    }

    public abstract float getValue(Object obj);

    public abstract void setValue(Object obj, float f);
}
