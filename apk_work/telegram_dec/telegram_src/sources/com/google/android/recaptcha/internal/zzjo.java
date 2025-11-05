package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzjo extends zzjs {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzjo() {
        super(null);
    }

    /* synthetic */ zzjo(zzjn zzjnVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static List zzf(Object obj, long j, int i) {
        zzjl zzjlVar;
        List list = (List) zzlv.zzf(obj, j);
        if (list.isEmpty()) {
            List zzjlVar2 = list instanceof zzjm ? new zzjl(i) : ((list instanceof zzkm) && (list instanceof zzjb)) ? ((zzjb) list).zzd(i) : new ArrayList(i);
            zzlv.zzs(obj, j, zzjlVar2);
            return zzjlVar2;
        }
        if (zza.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i);
            arrayList.addAll(list);
            zzjlVar = arrayList;
        } else {
            if (!(list instanceof zzlq)) {
                if (!(list instanceof zzkm) || !(list instanceof zzjb)) {
                    return list;
                }
                zzjb zzjbVar = (zzjb) list;
                if (zzjbVar.zzc()) {
                    return list;
                }
                zzjb zzjbVarZzd = zzjbVar.zzd(list.size() + i);
                zzlv.zzs(obj, j, zzjbVarZzd);
                return zzjbVarZzd;
            }
            zzjl zzjlVar3 = new zzjl(list.size() + i);
            zzjlVar3.addAll(zzjlVar3.size(), (zzlq) list);
            zzjlVar = zzjlVar3;
        }
        zzlv.zzs(obj, j, zzjlVar);
        return zzjlVar;
    }

    @Override // com.google.android.recaptcha.internal.zzjs
    final List zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.recaptcha.internal.zzjs
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzlv.zzf(obj, j);
        if (list instanceof zzjm) {
            objUnmodifiableList = ((zzjm) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzkm) && (list instanceof zzjb)) {
                zzjb zzjbVar = (zzjb) list;
                if (zzjbVar.zzc()) {
                    zzjbVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzlv.zzs(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.recaptcha.internal.zzjs
    final void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzlv.zzf(obj2, j);
        List listZzf = zzf(obj, j, list.size());
        int size = listZzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listZzf.addAll(list);
        }
        if (size > 0) {
            list = listZzf;
        }
        zzlv.zzs(obj, j, list);
    }
}
