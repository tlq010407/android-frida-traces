package com.google.android.gms.internal.vision;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzjw extends zzju {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzjw() {
        super();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static List zza(Object obj, long j, int i) {
        List listZza;
        zzjs zzjsVar;
        List listZzc = zzc(obj, j);
        if (!listZzc.isEmpty()) {
            if (zza.isAssignableFrom(listZzc.getClass())) {
                ArrayList arrayList = new ArrayList(listZzc.size() + i);
                arrayList.addAll(listZzc);
                zzjsVar = arrayList;
            } else if (listZzc instanceof zzlz) {
                zzjs zzjsVar2 = new zzjs(listZzc.size() + i);
                zzjsVar2.addAll((zzlz) listZzc);
                zzjsVar = zzjsVar2;
            } else {
                if (!(listZzc instanceof zzkw) || !(listZzc instanceof zzjl)) {
                    return listZzc;
                }
                zzjl zzjlVar = (zzjl) listZzc;
                if (zzjlVar.zza()) {
                    return listZzc;
                }
                listZza = zzjlVar.zza(listZzc.size() + i);
            }
            zzma.zza(obj, j, zzjsVar);
            return zzjsVar;
        }
        listZza = listZzc instanceof zzjv ? new zzjs(i) : ((listZzc instanceof zzkw) && (listZzc instanceof zzjl)) ? ((zzjl) listZzc).zza(i) : new ArrayList(i);
        zzma.zza(obj, j, listZza);
        return listZza;
    }

    private static List zzc(Object obj, long j) {
        return (List) zzma.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.vision.zzju
    final void zza(Object obj, Object obj2, long j) {
        List listZzc = zzc(obj2, j);
        List listZza = zza(obj, j, listZzc.size());
        int size = listZza.size();
        int size2 = listZzc.size();
        if (size > 0 && size2 > 0) {
            listZza.addAll(listZzc);
        }
        if (size > 0) {
            listZzc = listZza;
        }
        zzma.zza(obj, j, listZzc);
    }

    @Override // com.google.android.gms.internal.vision.zzju
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzma.zzf(obj, j);
        if (list instanceof zzjv) {
            objUnmodifiableList = ((zzjv) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzkw) && (list instanceof zzjl)) {
                zzjl zzjlVar = (zzjl) list;
                if (zzjlVar.zza()) {
                    zzjlVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzma.zza(obj, j, objUnmodifiableList);
    }
}
