package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzfk extends zzfj {
    private zzfk() {
        super();
    }

    private static zzew zzb(Object obj, long j) {
        return (zzew) zzhn.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    final void zza(Object obj, long j) {
        zzb(obj, j).b_();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    final void zza(Object obj, Object obj2, long j) {
        zzew zzewVarZzb = zzb(obj, j);
        zzew zzewVarZzb2 = zzb(obj2, j);
        int size = zzewVarZzb.size();
        int size2 = zzewVarZzb2.size();
        if (size > 0 && size2 > 0) {
            if (!zzewVarZzb.zza()) {
                zzewVarZzb = zzewVarZzb.zzb(size2 + size);
            }
            zzewVarZzb.addAll(zzewVarZzb2);
        }
        if (size > 0) {
            zzewVarZzb2 = zzewVarZzb;
        }
        zzhn.zza(obj, j, zzewVarZzb2);
    }
}
