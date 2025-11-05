package com.google.android.gms.internal.base;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zat {
    private static final zaq zaa;
    private static volatile zaq zab;

    static {
        zas zasVar = new zas(null);
        zaa = zasVar;
        zab = zasVar;
    }

    public static zaq zaa() {
        return zab;
    }
}
