package com.huawei.location.activity.util;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class JniUtils {
    public static native int analysisData(float[] fArr, float[][] fArr2);

    public static native void freeBuffer();

    public static native int loadModelByAssets(Object obj, String str);
}
