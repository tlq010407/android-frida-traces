package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzgs implements Iterator {
    private int zza;
    private Iterator zzb;
    private final /* synthetic */ zzgq zzc;

    private zzgs(zzgq zzgqVar) {
        this.zzc = zzgqVar;
        this.zza = zzgqVar.zzb.size();
    }

    /* synthetic */ zzgs(zzgq zzgqVar, zzgt zzgtVar) {
        this(zzgqVar);
    }

    private final Iterator zza() {
        if (this.zzb == null) {
            this.zzb = this.zzc.zzf.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zza;
        return (i > 0 && i <= this.zzc.zzb.size()) || zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Object next;
        if (zza().hasNext()) {
            next = zza().next();
        } else {
            List list = this.zzc.zzb;
            int i = this.zza - 1;
            this.zza = i;
            next = list.get(i);
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
