package com.google.android.gms.internal.mlkit_vision_common;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzn extends zzh {
    private final zzp zza;

    zzn(zzp zzpVar, int i) {
        super(zzpVar.size(), i);
        this.zza = zzpVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzh
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
