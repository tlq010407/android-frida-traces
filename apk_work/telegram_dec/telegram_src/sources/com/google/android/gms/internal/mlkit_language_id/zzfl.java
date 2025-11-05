package com.google.android.gms.internal.mlkit_language_id;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzfl extends zzfj {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzfl() {
        super();
    }

    private static List zzb(Object obj, long j) {
        return (List) zzhn.zzf(obj, j);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzhn.zzf(obj, j);
        if (list instanceof zzfg) {
            objUnmodifiableList = ((zzfg) list).a_();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzgi) && (list instanceof zzew)) {
                zzew zzewVar = (zzew) list;
                if (zzewVar.zza()) {
                    zzewVar.b_();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzhn.zza(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzfj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zza(Object obj, Object obj2, long j) {
        zzfh zzfhVar;
        int size;
        List listZzb = zzb(obj2, j);
        int size2 = listZzb.size();
        List listZzb2 = zzb(obj, j);
        if (!listZzb2.isEmpty()) {
            if (zza.isAssignableFrom(listZzb2.getClass())) {
                ArrayList arrayList = new ArrayList(listZzb2.size() + size2);
                arrayList.addAll(listZzb2);
                zzfhVar = arrayList;
            } else {
                if (!(listZzb2 instanceof zzhi)) {
                    if ((listZzb2 instanceof zzgi) && (listZzb2 instanceof zzew)) {
                        zzew zzewVar = (zzew) listZzb2;
                        if (!zzewVar.zza()) {
                            listZzb2 = zzewVar.zzb(listZzb2.size() + size2);
                        }
                    }
                    size = listZzb2.size();
                    int size3 = listZzb.size();
                    if (size > 0 && size3 > 0) {
                        listZzb2.addAll(listZzb);
                    }
                    if (size > 0) {
                        listZzb = listZzb2;
                    }
                    zzhn.zza(obj, j, listZzb);
                }
                zzfh zzfhVar2 = new zzfh(listZzb2.size() + size2);
                zzfhVar2.addAll((zzhi) listZzb2);
                zzfhVar = zzfhVar2;
            }
            zzhn.zza(obj, j, zzfhVar);
            listZzb2 = zzfhVar;
            size = listZzb2.size();
            int size32 = listZzb.size();
            if (size > 0) {
                listZzb2.addAll(listZzb);
            }
            if (size > 0) {
            }
            zzhn.zza(obj, j, listZzb);
        }
        listZzb2 = listZzb2 instanceof zzfg ? new zzfh(size2) : ((listZzb2 instanceof zzgi) && (listZzb2 instanceof zzew)) ? ((zzew) listZzb2).zzb(size2) : new ArrayList(size2);
        zzhn.zza(obj, j, listZzb2);
        size = listZzb2.size();
        int size322 = listZzb.size();
        if (size > 0) {
        }
        if (size > 0) {
        }
        zzhn.zza(obj, j, listZzb);
    }
}
