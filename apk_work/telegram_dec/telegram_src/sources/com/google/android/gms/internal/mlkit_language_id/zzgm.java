package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzgm implements zzfx {
    private final zzfz zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    zzgm(zzfz zzfzVar, String str, Object[] objArr) {
        this.zza = zzfzVar;
        this.zzb = str;
        this.zzc = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.zzd = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.zzd = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfx
    public final int zza() {
        return (this.zzd & 1) == 1 ? zzgl.zza : zzgl.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfx
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfx
    public final zzfz zzc() {
        return this.zza;
    }

    final String zzd() {
        return this.zzb;
    }

    final Object[] zze() {
        return this.zzc;
    }
}
