package com.google.android.gms.internal.play_billing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzcp extends zzct {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* synthetic */ zzcp(zzco zzcoVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzct
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzeq.zzf(obj, j);
        if (list instanceof zzcn) {
            objUnmodifiableList = ((zzcn) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzdm) && (list instanceof zzcf)) {
                zzcf zzcfVar = (zzcf) list;
                if (zzcfVar.zzc()) {
                    zzcfVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzeq.zzs(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    @Override // com.google.android.gms.internal.play_billing.zzct
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzb(Object obj, Object obj2, long j) {
        zzcm zzcmVar;
        int size;
        List list = (List) zzeq.zzf(obj2, j);
        int size2 = list.size();
        List listZzd = (List) zzeq.zzf(obj, j);
        if (!listZzd.isEmpty()) {
            if (zza.isAssignableFrom(listZzd.getClass())) {
                ArrayList arrayList = new ArrayList(listZzd.size() + size2);
                arrayList.addAll(listZzd);
                zzcmVar = arrayList;
            } else {
                if (!(listZzd instanceof zzel)) {
                    if ((listZzd instanceof zzdm) && (listZzd instanceof zzcf)) {
                        zzcf zzcfVar = (zzcf) listZzd;
                        if (!zzcfVar.zzc()) {
                            listZzd = zzcfVar.zzd(listZzd.size() + size2);
                        }
                    }
                    size = listZzd.size();
                    int size3 = list.size();
                    if (size > 0 && size3 > 0) {
                        listZzd.addAll(list);
                    }
                    if (size > 0) {
                        list = listZzd;
                    }
                    zzeq.zzs(obj, j, list);
                }
                zzcm zzcmVar2 = new zzcm(listZzd.size() + size2);
                zzcmVar2.addAll(zzcmVar2.size(), (zzel) listZzd);
                zzcmVar = zzcmVar2;
            }
            zzeq.zzs(obj, j, zzcmVar);
            listZzd = zzcmVar;
            size = listZzd.size();
            int size32 = list.size();
            if (size > 0) {
                listZzd.addAll(list);
            }
            if (size > 0) {
            }
            zzeq.zzs(obj, j, list);
        }
        listZzd = listZzd instanceof zzcn ? new zzcm(size2) : ((listZzd instanceof zzdm) && (listZzd instanceof zzcf)) ? ((zzcf) listZzd).zzd(size2) : new ArrayList(size2);
        zzeq.zzs(obj, j, listZzd);
        size = listZzd.size();
        int size322 = list.size();
        if (size > 0) {
        }
        if (size > 0) {
        }
        zzeq.zzs(obj, j, list);
    }
}
