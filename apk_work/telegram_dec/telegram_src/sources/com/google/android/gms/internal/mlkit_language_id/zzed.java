package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzed implements zzib {
    private final zzea zza;

    private zzed(zzea zzeaVar) {
        zzea zzeaVar2 = (zzea) zzeq.zza((Object) zzeaVar, "output");
        this.zza = zzeaVar2;
        zzeaVar2.zza = this;
    }

    public static zzed zza(zzea zzeaVar) {
        zzed zzedVar = zzeaVar.zza;
        return zzedVar != null ? zzedVar : new zzed(zzeaVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final int zza() {
        return zzia.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i) {
        this.zza.zza(i, 3);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, double d) {
        this.zza.zza(i, d);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, float f) {
        this.zza.zza(i, f);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, int i2) {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, long j) {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, zzdn zzdnVar) {
        this.zza.zza(i, zzdnVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, zzfq zzfqVar, Map map) {
        Iterator it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            this.zza.zza(i, 2);
            entry.getKey();
            entry.getValue();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, Object obj) {
        if (obj instanceof zzdn) {
            this.zza.zzb(i, (zzdn) obj);
        } else {
            this.zza.zza(i, (zzfz) obj);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, Object obj, zzgp zzgpVar) {
        this.zza.zza(i, (zzfz) obj, zzgpVar);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, String str) {
        this.zza.zza(i, str);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, List list) {
        int i2 = 0;
        if (!(list instanceof zzfg)) {
            while (i2 < list.size()) {
                this.zza.zza(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzfg zzfgVar = (zzfg) list;
        while (i2 < list.size()) {
            Object objZza = zzfgVar.zza(i2);
            if (objZza instanceof String) {
                this.zza.zza(i, (String) objZza);
            } else {
                this.zza.zza(i, (zzdn) objZza);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, List list, zzgp zzgpVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzgpVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzb(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzf = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzf += zzea.zzf(((Integer) list.get(i3)).intValue());
        }
        this.zza.zzb(iZzf);
        while (i2 < list.size()) {
            this.zza.zza(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zza(int i, boolean z) {
        this.zza.zza(i, z);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i) {
        this.zza.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, int i2) {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, long j) {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, Object obj, zzgp zzgpVar) {
        zzea zzeaVar = this.zza;
        zzeaVar.zza(i, 3);
        zzgpVar.zza(obj, (zzib) zzeaVar.zza);
        zzeaVar.zza(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zza(i, (zzdn) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, List list, zzgp zzgpVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzgpVar);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzb(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zze(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzi = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzi += zzea.zzi(((Integer) list.get(i3)).intValue());
        }
        this.zza.zzb(iZzi);
        while (i2 < list.size()) {
            this.zza.zzd(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzc(int i, int i2) {
        this.zza.zzb(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzc(int i, long j) {
        this.zza.zza(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzc(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zza(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzd = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzd += zzea.zzd(((Long) list.get(i3)).longValue());
        }
        this.zza.zzb(iZzd);
        while (i2 < list.size()) {
            this.zza.zza(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzd(int i, int i2) {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzd(int i, long j) {
        this.zza.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzd(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zza(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZze = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZze += zzea.zze(((Long) list.get(i3)).longValue());
        }
        this.zza.zzb(iZze);
        while (i2 < list.size()) {
            this.zza.zza(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zze(int i, int i2) {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zze(int i, long j) {
        this.zza.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zze(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzc(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzg = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzg += zzea.zzg(((Long) list.get(i3)).longValue());
        }
        this.zza.zzb(iZzg);
        while (i2 < list.size()) {
            this.zza.zzc(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzf(int i, int i2) {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzf(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zza(i, ((Float) list.get(i2)).floatValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzb = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzb += zzea.zzb(((Float) list.get(i3)).floatValue());
        }
        this.zza.zzb(iZzb);
        while (i2 < list.size()) {
            this.zza.zza(((Float) list.get(i2)).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzg(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zza(i, ((Double) list.get(i2)).doubleValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzb = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzb += zzea.zzb(((Double) list.get(i3)).doubleValue());
        }
        this.zza.zzb(iZzb);
        while (i2 < list.size()) {
            this.zza.zza(((Double) list.get(i2)).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzh(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzb(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzk = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzk += zzea.zzk(((Integer) list.get(i3)).intValue());
        }
        this.zza.zzb(iZzk);
        while (i2 < list.size()) {
            this.zza.zza(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzi(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zza(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzb = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzb += zzea.zzb(((Boolean) list.get(i3)).booleanValue());
        }
        this.zza.zzb(iZzb);
        while (i2 < list.size()) {
            this.zza.zza(((Boolean) list.get(i2)).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzj(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzc(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzg = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzg += zzea.zzg(((Integer) list.get(i3)).intValue());
        }
        this.zza.zzb(iZzg);
        while (i2 < list.size()) {
            this.zza.zzb(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzk(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zze(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzj = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzj += zzea.zzj(((Integer) list.get(i3)).intValue());
        }
        this.zza.zzb(iZzj);
        while (i2 < list.size()) {
            this.zza.zzd(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzl(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzc(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzh = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzh += zzea.zzh(((Long) list.get(i3)).longValue());
        }
        this.zza.zzb(iZzh);
        while (i2 < list.size()) {
            this.zza.zzc(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzm(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzd(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzh = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzh += zzea.zzh(((Integer) list.get(i3)).intValue());
        }
        this.zza.zzb(iZzh);
        while (i2 < list.size()) {
            this.zza.zzc(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzib
    public final void zzn(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzb(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zza(i, 2);
        int iZzf = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzf += zzea.zzf(((Long) list.get(i3)).longValue());
        }
        this.zza.zzb(iZzf);
        while (i2 < list.size()) {
            this.zza.zzb(((Long) list.get(i2)).longValue());
            i2++;
        }
    }
}
