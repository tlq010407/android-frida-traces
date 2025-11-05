package com.google.android.gms.internal.cast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzuh extends zzul {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* synthetic */ zzuh(zzug zzugVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.cast.zzul
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzwj.zzf(obj, j);
        if (list instanceof zzuf) {
            objUnmodifiableList = ((zzuf) list).zzd();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzve) && (list instanceof zztx)) {
                zztx zztxVar = (zztx) list;
                if (zztxVar.zzc()) {
                    zztxVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzwj.zzs(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    @Override // com.google.android.gms.internal.cast.zzul
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzb(Object obj, Object obj2, long j) {
        zzue zzueVar;
        int size;
        List list = (List) zzwj.zzf(obj2, j);
        int size2 = list.size();
        List listZzg = (List) zzwj.zzf(obj, j);
        if (!listZzg.isEmpty()) {
            if (zza.isAssignableFrom(listZzg.getClass())) {
                ArrayList arrayList = new ArrayList(listZzg.size() + size2);
                arrayList.addAll(listZzg);
                zzueVar = arrayList;
            } else {
                if (!(listZzg instanceof zzwe)) {
                    if ((listZzg instanceof zzve) && (listZzg instanceof zztx)) {
                        zztx zztxVar = (zztx) listZzg;
                        if (!zztxVar.zzc()) {
                            listZzg = zztxVar.zzg(listZzg.size() + size2);
                        }
                    }
                    size = listZzg.size();
                    int size3 = list.size();
                    if (size > 0 && size3 > 0) {
                        listZzg.addAll(list);
                    }
                    if (size > 0) {
                        list = listZzg;
                    }
                    zzwj.zzs(obj, j, list);
                }
                zzue zzueVar2 = new zzue(listZzg.size() + size2);
                zzueVar2.addAll(zzueVar2.size(), (zzwe) listZzg);
                zzueVar = zzueVar2;
            }
            zzwj.zzs(obj, j, zzueVar);
            listZzg = zzueVar;
            size = listZzg.size();
            int size32 = list.size();
            if (size > 0) {
                listZzg.addAll(list);
            }
            if (size > 0) {
            }
            zzwj.zzs(obj, j, list);
        }
        listZzg = listZzg instanceof zzuf ? new zzue(size2) : ((listZzg instanceof zzve) && (listZzg instanceof zztx)) ? ((zztx) listZzg).zzg(size2) : new ArrayList(size2);
        zzwj.zzs(obj, j, listZzg);
        size = listZzg.size();
        int size322 = list.size();
        if (size > 0) {
        }
        if (size > 0) {
        }
        zzwj.zzs(obj, j, list);
    }
}
