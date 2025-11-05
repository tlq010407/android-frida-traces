package com.huawei.hms.maps.utils;

import android.content.Context;
import android.graphics.Bitmap;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class maa {
    private volatile Bitmap a;

    public abstract Bitmap a(Context context);

    public Bitmap b(Context context) {
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        this.a = a(context);
                    }
                } finally {
                }
            }
        }
        return this.a;
    }
}
