package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzhk implements Iterator {
    private Iterator zza;
    private final /* synthetic */ zzhi zzb;

    zzhk(zzhi zzhiVar) {
        this.zzb = zzhiVar;
        this.zza = zzhiVar.zza.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
