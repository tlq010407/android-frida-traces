package com.google.android.gms.internal.cast;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
abstract class zzut {
    private static final zzus zza;
    private static final zzus zzb;

    static {
        zzus zzusVar = null;
        try {
            zzusVar = (zzus) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzusVar;
        zzb = new zzus();
    }

    static zzus zza() {
        return zza;
    }

    static zzus zzb() {
        return zzb;
    }
}
