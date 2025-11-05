package com.google.android.gms.flags;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class Singletons {
    private static Singletons zza;
    private final FlagRegistry zzb = new FlagRegistry();
    private final zzb zzc = new zzb();

    static {
        Singletons singletons = new Singletons();
        synchronized (Singletons.class) {
            zza = singletons;
        }
    }

    private Singletons() {
    }

    public static FlagRegistry flagRegistry() {
        return zzb().zzb;
    }

    private static Singletons zzb() {
        Singletons singletons;
        synchronized (Singletons.class) {
            singletons = zza;
        }
        return singletons;
    }
}
