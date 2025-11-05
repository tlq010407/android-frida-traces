package com.google.android.gms.internal.mlkit_language_id;

import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
abstract class zzgr {
    private static final Class zza = zzd();
    private static final zzhh zzb = zza(false);
    private static final zzhh zzc = zza(true);
    private static final zzhh zzd = new zzhj();

    static int zza(int i, Object obj, zzgp zzgpVar) {
        return zzea.zzb(i, (zzfz) obj, zzgpVar);
    }

    static int zza(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZze = zzea.zze(i) * size;
        if (list instanceof zzfg) {
            zzfg zzfgVar = (zzfg) list;
            while (i2 < size) {
                Object objZza = zzfgVar.zza(i2);
                iZze += objZza instanceof zzdn ? zzea.zzb((zzdn) objZza) : zzea.zzb((String) objZza);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iZze += obj instanceof zzdn ? zzea.zzb((zzdn) obj) : zzea.zzb((String) obj);
                i2++;
            }
        }
        return iZze;
    }

    static int zza(int i, List list, zzgp zzgpVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZze = zzea.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            iZze += zzea.zza((zzfz) list.get(i2), zzgpVar);
        }
        return iZze;
    }

    static int zza(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zza(list) + (list.size() * zzea.zze(i));
    }

    static int zza(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfn) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzd = 0;
        for (int i = 0; i < size; i++) {
            iZzd += zzea.zzd(((Long) list.get(i)).longValue());
        }
        return iZzd;
    }

    public static zzhh zza() {
        return zzb;
    }

    private static zzhh zza(boolean z) {
        try {
            Class clsZze = zze();
            if (clsZze == null) {
                return null;
            }
            return (zzhh) clsZze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zza(int i, List list, zzib zzibVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zza(i, list);
    }

    public static void zza(int i, List list, zzib zzibVar, zzgp zzgpVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zza(i, list, zzgpVar);
    }

    public static void zza(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzg(i, list, z);
    }

    static void zza(zzee zzeeVar, Object obj, Object obj2) {
        zzej zzejVarZza = zzeeVar.zza(obj2);
        if (zzejVarZza.zza.isEmpty()) {
            return;
        }
        zzeeVar.zzb(obj).zza(zzejVarZza);
    }

    static void zza(zzfs zzfsVar, Object obj, Object obj2, long j) {
        zzhn.zza(obj, j, zzfsVar.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j)));
    }

    static void zza(zzhh zzhhVar, Object obj, Object obj2) {
        zzhhVar.zza(obj, zzhhVar.zzb(zzhhVar.zza(obj), zzhhVar.zza(obj2)));
    }

    public static void zza(Class cls) {
        Class cls2;
        if (!zzeo.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zzb(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZze = size * zzea.zze(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZze += zzea.zzb((zzdn) list.get(i2));
        }
        return iZze;
    }

    static int zzb(int i, List list, zzgp zzgpVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzc += zzea.zzc(i, (zzfz) list.get(i2), zzgpVar);
        }
        return iZzc;
    }

    static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzea.zze(i));
    }

    static int zzb(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfn) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZze = 0;
        for (int i = 0; i < size; i++) {
            iZze += zzea.zze(((Long) list.get(i)).longValue());
        }
        return iZze;
    }

    public static zzhh zzb() {
        return zzc;
    }

    public static void zzb(int i, List list, zzib zzibVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzb(i, list);
    }

    public static void zzb(int i, List list, zzib zzibVar, zzgp zzgpVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzb(i, list, zzgpVar);
    }

    public static void zzb(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzf(i, list, z);
    }

    static int zzc(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzc(list) + (size * zzea.zze(i));
    }

    static int zzc(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfn) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iZzf = 0;
        for (int i = 0; i < size; i++) {
            iZzf += zzea.zzf(((Long) list.get(i)).longValue());
        }
        return iZzf;
    }

    public static zzhh zzc() {
        return zzd;
    }

    public static void zzc(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzc(i, list, z);
    }

    static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzea.zze(i));
    }

    static int zzd(List list) {
        int iZzk;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzer) {
            zzer zzerVar = (zzer) list;
            iZzk = 0;
            while (i < size) {
                iZzk += zzea.zzk(zzerVar.zza(i));
                i++;
            }
        } else {
            iZzk = 0;
            while (i < size) {
                iZzk += zzea.zzk(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzk;
    }

    private static Class zzd() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zzd(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzd(i, list, z);
    }

    static int zze(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzea.zze(i));
    }

    static int zze(List list) {
        int iZzf;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzer) {
            zzer zzerVar = (zzer) list;
            iZzf = 0;
            while (i < size) {
                iZzf += zzea.zzf(zzerVar.zza(i));
                i++;
            }
        } else {
            iZzf = 0;
            while (i < size) {
                iZzf += zzea.zzf(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzf;
    }

    private static Class zze() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void zze(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzn(i, list, z);
    }

    static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzea.zze(i));
    }

    static int zzf(List list) {
        int iZzg;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzer) {
            zzer zzerVar = (zzer) list;
            iZzg = 0;
            while (i < size) {
                iZzg += zzea.zzg(zzerVar.zza(i));
                i++;
            }
        } else {
            iZzg = 0;
            while (i < size) {
                iZzg += zzea.zzg(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzg;
    }

    public static void zzf(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zze(i, list, z);
    }

    static int zzg(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzea.zze(i));
    }

    static int zzg(List list) {
        int iZzh;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzer) {
            zzer zzerVar = (zzer) list;
            iZzh = 0;
            while (i < size) {
                iZzh += zzea.zzh(zzerVar.zza(i));
                i++;
            }
        } else {
            iZzh = 0;
            while (i < size) {
                iZzh += zzea.zzh(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzh;
    }

    public static void zzg(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzl(i, list, z);
    }

    static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzea.zzi(i, 0);
    }

    static int zzh(List list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zza(i, list, z);
    }

    static int zzi(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzea.zzg(i, 0L);
    }

    static int zzi(List list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzj(i, list, z);
    }

    static int zzj(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzea.zzb(i, true);
    }

    static int zzj(List list) {
        return list.size();
    }

    public static void zzj(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzm(i, list, z);
    }

    public static void zzk(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzb(i, list, z);
    }

    public static void zzl(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzk(i, list, z);
    }

    public static void zzm(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzh(i, list, z);
    }

    public static void zzn(int i, List list, zzib zzibVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzi(i, list, z);
    }
}
