package com.google.android.recaptcha.internal;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzkn {
    public static final /* synthetic */ int zza = 0;
    private static final zzkn zzb = new zzkn();
    private final ConcurrentMap zzd = new ConcurrentHashMap();
    private final zzks zzc = new zzjw();

    private zzkn() {
    }

    public static zzkn zza() {
        return zzb;
    }

    public final zzkr zzb(Class cls) {
        zzjc.zzc(cls, "messageType");
        zzkr zzkrVarZza = (zzkr) this.zzd.get(cls);
        if (zzkrVarZza == null) {
            zzkrVarZza = this.zzc.zza(cls);
            zzjc.zzc(cls, "messageType");
            zzkr zzkrVar = (zzkr) this.zzd.putIfAbsent(cls, zzkrVarZza);
            if (zzkrVar != null) {
                return zzkrVar;
            }
        }
        return zzkrVarZza;
    }
}
