package com.google.android.gms.internal.mlkit_language_id;

import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzdp implements Comparator {
    zzdp() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzdn zzdnVar = (zzdn) obj;
        zzdn zzdnVar2 = (zzdn) obj2;
        zzds zzdsVar = (zzds) zzdnVar.iterator();
        zzds zzdsVar2 = (zzds) zzdnVar2.iterator();
        while (zzdsVar.hasNext() && zzdsVar2.hasNext()) {
            int iCompare = Integer.compare(zzdn.zzb(zzdsVar.zza()), zzdn.zzb(zzdsVar2.zza()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzdnVar.zza(), zzdnVar2.zza());
    }
}
