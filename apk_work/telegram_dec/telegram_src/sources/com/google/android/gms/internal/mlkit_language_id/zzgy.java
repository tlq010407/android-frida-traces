package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzgy implements Iterator {
    private int zza;
    private boolean zzb;
    private Iterator zzc;
    private final /* synthetic */ zzgq zzd;

    private zzgy(zzgq zzgqVar) {
        this.zzd = zzgqVar;
        this.zza = -1;
    }

    /* synthetic */ zzgy(zzgq zzgqVar, zzgt zzgtVar) {
        this(zzgqVar);
    }

    private final Iterator zza() {
        if (this.zzc == null) {
            this.zzc = this.zzd.zzc.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza + 1 < this.zzd.zzb.size() || (!this.zzd.zzc.isEmpty() && zza().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzb = true;
        int i = this.zza + 1;
        this.zza = i;
        return (Map.Entry) (i < this.zzd.zzb.size() ? this.zzd.zzb.get(this.zza) : zza().next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzf();
        if (this.zza >= this.zzd.zzb.size()) {
            zza().remove();
            return;
        }
        zzgq zzgqVar = this.zzd;
        int i = this.zza;
        this.zza = i - 1;
        zzgqVar.zzc(i);
    }
}
