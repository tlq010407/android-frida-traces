package com.google.android.gms.internal.mlkit_common;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zztg {
    private static zztg zza;

    private zztg() {
    }

    public static synchronized zztg zza() {
        try {
            if (zza == null) {
                zza = new zztg();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }

    public static void zzb() {
        zztf.zza();
    }
}
