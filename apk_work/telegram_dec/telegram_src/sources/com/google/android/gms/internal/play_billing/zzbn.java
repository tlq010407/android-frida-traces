package com.google.android.gms.internal.play_billing;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Collections;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public final class zzbn {
    static final zzbn zza = new zzbn(true);
    private static volatile zzbn zzd;
    private final Map zze = Collections.emptyMap();

    zzbn(boolean z) {
    }

    public static zzbn zza() {
        zzbn zzbnVar = zzd;
        if (zzbnVar != null) {
            return zzbnVar;
        }
        synchronized (zzbn.class) {
            try {
                zzbn zzbnVar2 = zzd;
                if (zzbnVar2 != null) {
                    return zzbnVar2;
                }
                zzbn zzbnVarZzb = zzbv.zzb(zzbn.class);
                zzd = zzbnVarZzb;
                return zzbnVarZzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbz zzb(zzdf zzdfVar, int i) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(this.zze.get(new zzbm(zzdfVar, i)));
        return null;
    }
}
