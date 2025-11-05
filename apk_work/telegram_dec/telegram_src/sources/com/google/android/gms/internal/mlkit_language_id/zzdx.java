package com.google.android.gms.internal.mlkit_language_id;

import java.nio.charset.Charset;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
class zzdx extends zzdu {
    protected final byte[] zzb;

    zzdx(byte[] bArr) {
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdn) || zza() != ((zzdn) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (!(obj instanceof zzdx)) {
            return obj.equals(this);
        }
        zzdx zzdxVar = (zzdx) obj;
        int iZzd = zzd();
        int iZzd2 = zzdxVar.zzd();
        if (iZzd == 0 || iZzd2 == 0 || iZzd == iZzd2) {
            return zza(zzdxVar, 0, zza());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    protected final int zza(int i, int i2, int i3) {
        return zzeq.zza(i, this.zzb, zze(), i3);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final zzdn zza(int i, int i2) {
        int iZzb = zzdn.zzb(0, i2, zza());
        return iZzb == 0 ? zzdn.zza : new zzdq(this.zzb, zze(), iZzb);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    protected final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    final void zza(zzdk zzdkVar) {
        zzdkVar.zza(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdu
    final boolean zza(zzdn zzdnVar, int i, int i2) {
        if (i2 > zzdnVar.zza()) {
            int iZza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(iZza);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzdnVar.zza()) {
            int iZza2 = zzdnVar.zza();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(iZza2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzdnVar instanceof zzdx)) {
            return zzdnVar.zza(0, i2).equals(zza(0, i2));
        }
        zzdx zzdxVar = (zzdx) zzdnVar;
        byte[] bArr = this.zzb;
        byte[] bArr2 = zzdxVar.zzb;
        int iZze = zze() + i2;
        int iZze2 = zze();
        int iZze3 = zzdxVar.zze();
        while (iZze2 < iZze) {
            if (bArr[iZze2] != bArr2[iZze3]) {
                return false;
            }
            iZze2++;
            iZze3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzdn
    public final boolean zzc() {
        int iZze = zze();
        return zzhp.zza(this.zzb, iZze, zza() + iZze);
    }

    protected int zze() {
        return 0;
    }
}
