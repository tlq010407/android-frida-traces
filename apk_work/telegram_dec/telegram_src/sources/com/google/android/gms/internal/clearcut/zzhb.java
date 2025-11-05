package com.google.android.gms.internal.clearcut;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzhb extends zzfu implements Cloneable {
    private static volatile zzhb[] zzbkd;

    public static zzhb[] zzge() {
        if (zzbkd == null) {
            synchronized (zzfy.zzrr) {
                try {
                    if (zzbkd == null) {
                        zzbkd = new zzhb[0];
                    }
                } finally {
                }
            }
        }
        return zzbkd;
    }
}
