package com.google.android.gms.internal.mlkit_common;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zztd {
    private static zztc zza;

    public static synchronized zzss zza(zzsm zzsmVar) {
        try {
            if (zza == null) {
                zza = new zztc(null);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzss) zza.get(zzsmVar);
    }

    public static synchronized zzss zzb(String str) {
        return zza(zzsm.zzd("common").zzd());
    }
}
