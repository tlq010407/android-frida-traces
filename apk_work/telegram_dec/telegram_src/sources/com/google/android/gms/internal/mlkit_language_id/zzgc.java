package com.google.android.gms.internal.mlkit_language_id;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzgc implements zzgp {
    private final zzfz zza;
    private final zzhh zzb;
    private final boolean zzc;
    private final zzee zzd;

    private zzgc(zzhh zzhhVar, zzee zzeeVar, zzfz zzfzVar) {
        this.zzb = zzhhVar;
        this.zzc = zzeeVar.zza(zzfzVar);
        this.zzd = zzeeVar;
        this.zza = zzfzVar;
    }

    static zzgc zza(zzhh zzhhVar, zzee zzeeVar, zzfz zzfzVar) {
        return new zzgc(zzhhVar, zzeeVar, zzfzVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final int zza(Object obj) {
        int iHashCode = this.zzb.zza(obj).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(obj).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final void zza(Object obj, zzib zzibVar) {
        Iterator itZzd = this.zzd.zza(obj).zzd();
        if (itZzd.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(((Map.Entry) itZzd.next()).getKey());
            throw null;
        }
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzb(zzhhVar.zza(obj), zzibVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final boolean zza(Object obj, Object obj2) {
        if (!this.zzb.zza(obj).equals(this.zzb.zza(obj2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(obj).equals(this.zzd.zza(obj2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final void zzb(Object obj) {
        this.zzb.zzb(obj);
        this.zzd.zzc(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final void zzb(Object obj, Object obj2) {
        zzgr.zza(this.zzb, obj, obj2);
        if (this.zzc) {
            zzgr.zza(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final boolean zzc(Object obj) {
        return this.zzd.zza(obj).zzf();
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final int zzd(Object obj) {
        zzhh zzhhVar = this.zzb;
        int iZzc = zzhhVar.zzc(zzhhVar.zza(obj));
        return this.zzc ? iZzc + this.zzd.zza(obj).zzg() : iZzc;
    }
}
