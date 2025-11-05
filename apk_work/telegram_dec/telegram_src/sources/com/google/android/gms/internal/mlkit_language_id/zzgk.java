package com.google.android.gms.internal.mlkit_language_id;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzgk {
    private static final zzgk zza = new zzgk();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final zzgo zzb = new zzfm();

    private zzgk() {
    }

    public static zzgk zza() {
        return zza;
    }

    public final zzgp zza(Class cls) {
        zzeq.zza((Object) cls, "messageType");
        zzgp zzgpVar = (zzgp) this.zzc.get(cls);
        if (zzgpVar != null) {
            return zzgpVar;
        }
        zzgp zzgpVarZza = this.zzb.zza(cls);
        zzeq.zza((Object) cls, "messageType");
        zzeq.zza((Object) zzgpVarZza, "schema");
        zzgp zzgpVar2 = (zzgp) this.zzc.putIfAbsent(cls, zzgpVarZza);
        return zzgpVar2 != null ? zzgpVar2 : zzgpVarZza;
    }

    public final zzgp zza(Object obj) {
        return zza((Class) obj.getClass());
    }
}
