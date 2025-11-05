package com.google.android.gms.internal.mlkit_language_id;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzeb extends zzdz {
    private final byte[] zza;
    private final boolean zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    private zzeb(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzg = Integer.MAX_VALUE;
        this.zza = bArr;
        this.zzc = i2 + i;
        this.zze = i;
        this.zzf = i;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdz
    public final int zza() {
        return this.zze - this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdz
    public final int zza(int i) throws zzez {
        if (i < 0) {
            throw new zzez("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int iZza = i + zza();
        int i2 = this.zzg;
        if (iZza > i2) {
            throw new zzez("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzg = iZza;
        int i3 = this.zzc + this.zzd;
        this.zzc = i3;
        int i4 = i3 - this.zzf;
        if (i4 > iZza) {
            int i5 = i4 - iZza;
            this.zzd = i5;
            this.zzc = i3 - i5;
        } else {
            this.zzd = 0;
        }
        return i2;
    }
}
