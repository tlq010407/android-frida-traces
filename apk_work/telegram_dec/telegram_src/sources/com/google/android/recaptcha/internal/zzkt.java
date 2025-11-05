package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzkt {
    public static final /* synthetic */ int zza = 0;
    private static final Class zzb;
    private static final zzll zzc;
    private static final zzll zzd;

    static {
        Class<?> cls;
        Class<?> cls2;
        zzll zzllVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zzb = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzllVar = (zzll) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        zzc = zzllVar;
        zzd = new zzln();
    }

    public static void zzA(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzu(i, list, z);
    }

    public static void zzB(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzy(i, list, z);
    }

    public static void zzC(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzA(i, list, z);
    }

    public static void zzD(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzC(i, list, z);
    }

    public static void zzE(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzE(i, list, z);
    }

    public static void zzF(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzJ(i, list, z);
    }

    public static void zzG(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzL(i, list, z);
    }

    static boolean zzH(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static int zza(List list) {
        int iZzu;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zziu) {
            zziu zziuVar = (zziu) list;
            iZzu = 0;
            while (i < size) {
                iZzu += zzhh.zzu(zziuVar.zze(i));
                i++;
            }
        } else {
            iZzu = 0;
            while (i < size) {
                iZzu += zzhh.zzu(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzu;
    }

    static int zzb(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzhh.zzy(i << 3) + 4);
    }

    static int zzc(List list) {
        return list.size() * 4;
    }

    static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzhh.zzy(i << 3) + 8);
    }

    static int zze(List list) {
        return list.size() * 8;
    }

    static int zzf(List list) {
        int iZzu;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zziu) {
            zziu zziuVar = (zziu) list;
            iZzu = 0;
            while (i < size) {
                iZzu += zzhh.zzu(zziuVar.zze(i));
                i++;
            }
        } else {
            iZzu = 0;
            while (i < size) {
                iZzu += zzhh.zzu(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzu;
    }

    static int zzg(List list) {
        int iZzz;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjt) {
            zzjt zzjtVar = (zzjt) list;
            iZzz = 0;
            while (i < size) {
                iZzz += zzhh.zzz(zzjtVar.zze(i));
                i++;
            }
        } else {
            iZzz = 0;
            while (i < size) {
                iZzz += zzhh.zzz(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iZzz;
    }

    static int zzh(int i, Object obj, zzkr zzkrVar) {
        int i2 = i << 3;
        if (!(obj instanceof zzjk)) {
            return zzhh.zzy(i2) + zzhh.zzw((zzke) obj, zzkrVar);
        }
        int i3 = zzhh.zzb;
        int iZza = ((zzjk) obj).zza();
        return zzhh.zzy(i2) + zzhh.zzy(iZza) + iZza;
    }

    static int zzi(List list) {
        int iZzy;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zziu) {
            zziu zziuVar = (zziu) list;
            iZzy = 0;
            while (i < size) {
                int iZze = zziuVar.zze(i);
                iZzy += zzhh.zzy((iZze >> 31) ^ (iZze + iZze));
                i++;
            }
        } else {
            iZzy = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iZzy += zzhh.zzy((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
        }
        return iZzy;
    }

    static int zzj(List list) {
        int iZzz;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjt) {
            zzjt zzjtVar = (zzjt) list;
            iZzz = 0;
            while (i < size) {
                long jZze = zzjtVar.zze(i);
                iZzz += zzhh.zzz((jZze >> 63) ^ (jZze + jZze));
                i++;
            }
        } else {
            iZzz = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iZzz += zzhh.zzz((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
        }
        return iZzz;
    }

    static int zzk(List list) {
        int iZzy;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zziu) {
            zziu zziuVar = (zziu) list;
            iZzy = 0;
            while (i < size) {
                iZzy += zzhh.zzy(zziuVar.zze(i));
                i++;
            }
        } else {
            iZzy = 0;
            while (i < size) {
                iZzy += zzhh.zzy(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iZzy;
    }

    static int zzl(List list) {
        int iZzz;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzjt) {
            zzjt zzjtVar = (zzjt) list;
            iZzz = 0;
            while (i < size) {
                iZzz += zzhh.zzz(zzjtVar.zze(i));
                i++;
            }
        } else {
            iZzz = 0;
            while (i < size) {
                iZzz += zzhh.zzz(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iZzz;
    }

    public static zzll zzm() {
        return zzc;
    }

    public static zzll zzn() {
        return zzd;
    }

    static Object zzo(Object obj, int i, List list, zzix zzixVar, Object obj2, zzll zzllVar) {
        if (zzixVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) list.get(i3);
                int iIntValue = num.intValue();
                if (zzixVar.zza(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    obj2 = zzp(obj, i, iIntValue, obj2, zzllVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzixVar.zza(iIntValue2)) {
                    obj2 = zzp(obj, i, iIntValue2, obj2, zzllVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    static Object zzp(Object obj, int i, int i2, Object obj2, zzll zzllVar) {
        if (obj2 == null) {
            obj2 = zzllVar.zzc(obj);
        }
        zzllVar.zzl(obj2, i, i2);
        return obj2;
    }

    static void zzq(zzif zzifVar, Object obj, Object obj2) {
        zzij zzijVarZzb = zzifVar.zzb(obj2);
        if (zzijVarZzb.zza.isEmpty()) {
            return;
        }
        zzifVar.zzc(obj).zzh(zzijVarZzb);
    }

    static void zzr(zzll zzllVar, Object obj, Object obj2) {
        zzllVar.zzo(obj, zzllVar.zze(zzllVar.zzd(obj), zzllVar.zzd(obj2)));
    }

    public static void zzs(Class cls) {
        Class cls2;
        if (!zzit.class.isAssignableFrom(cls) && (cls2 = zzb) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzt(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzc(i, list, z);
    }

    public static void zzu(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzg(i, list, z);
    }

    public static void zzv(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzj(i, list, z);
    }

    public static void zzw(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzl(i, list, z);
    }

    public static void zzx(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzn(i, list, z);
    }

    public static void zzy(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzp(i, list, z);
    }

    public static void zzz(int i, List list, zzmd zzmdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzmdVar.zzs(i, list, z);
    }
}
