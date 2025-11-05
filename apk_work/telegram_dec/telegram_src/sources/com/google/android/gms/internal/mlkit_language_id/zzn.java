package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzn extends zzi {
    private final zzk zza;

    zzn(zzk zzkVar, int i) {
        super(zzkVar.size(), i);
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzi
    protected final Object zza(int i) {
        return this.zza.get(i);
    }
}
