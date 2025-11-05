package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzij {
    private static final zzij zzb = new zzij(true);
    final zzle zza = new zzku(16);
    private boolean zzc;
    private boolean zzd;

    private zzij() {
    }

    private zzij(boolean z) {
        zzg();
        zzg();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(zzii zziiVar, Object obj) {
        long jLongValue;
        int iZza;
        int iIntValue;
        int iIntValue2;
        zzmb zzmbVarZzd = zziiVar.zzd();
        int iZza2 = zziiVar.zza();
        zziiVar.zzg();
        int iZzy = zzhh.zzy(iZza2 << 3);
        if (zzmbVarZzd == zzmb.zzj) {
            byte[] bArr = zzjc.zzd;
            if (((zzke) obj) instanceof zzgg) {
                throw null;
            }
            iZzy += iZzy;
        }
        zzmc zzmcVar = zzmc.INT;
        int iZzx = 4;
        switch (zzmbVarZzd.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                iZzx = 8;
                return iZzy + iZzx;
            case 1:
                ((Float) obj).floatValue();
                return iZzy + iZzx;
            case 2:
            case 3:
                jLongValue = ((Long) obj).longValue();
                iZzx = zzhh.zzz(jLongValue);
                return iZzy + iZzx;
            case 4:
                iIntValue2 = ((Integer) obj).intValue();
                iZzx = zzhh.zzu(iIntValue2);
                return iZzy + iZzx;
            case 5:
            case 15:
                ((Long) obj).longValue();
                iZzx = 8;
                return iZzy + iZzx;
            case 6:
            case 14:
                ((Integer) obj).intValue();
                return iZzy + iZzx;
            case 7:
                ((Boolean) obj).booleanValue();
                iZzx = 1;
                return iZzy + iZzx;
            case 8:
                if (!(obj instanceof zzgw)) {
                    iZzx = zzhh.zzx((String) obj);
                    return iZzy + iZzx;
                }
                iZzx = zzhh.zzy(iZza) + iZza;
                return iZzy + iZzx;
            case 9:
                iZzx = ((zzke) obj).zzn();
                return iZzy + iZzx;
            case 10:
                if (!(obj instanceof zzjj)) {
                    iZzx = zzhh.zzv((zzke) obj);
                    return iZzy + iZzx;
                }
                iZza = ((zzjj) obj).zza();
                iZzx = zzhh.zzy(iZza) + iZza;
                return iZzy + iZzx;
            case 11:
                iZza = obj instanceof zzgw ? ((zzgw) obj).zzd() : ((byte[]) obj).length;
                iZzx = zzhh.zzy(iZza) + iZza;
                return iZzy + iZzx;
            case 12:
                iIntValue = ((Integer) obj).intValue();
                iZzx = zzhh.zzy(iIntValue);
                return iZzy + iZzx;
            case 13:
                if (obj instanceof zziv) {
                    iIntValue2 = ((zziv) obj).zza();
                }
                iZzx = zzhh.zzu(iIntValue2);
                return iZzy + iZzx;
            case 16:
                int iIntValue3 = ((Integer) obj).intValue();
                iIntValue = (iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3);
                iZzx = zzhh.zzy(iIntValue);
                return iZzy + iZzx;
            case 17:
                long jLongValue2 = ((Long) obj).longValue();
                jLongValue = (jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2);
                iZzx = zzhh.zzz(jLongValue);
                return iZzy + iZzx;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static zzij zzd() {
        return zzb;
    }

    private static Object zzl(Object obj) {
        if (obj instanceof zzkj) {
            return ((zzkj) obj).zzd();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private final void zzm(Map.Entry entry) {
        zzke zzkeVarZzj;
        zzii zziiVar = (zzii) entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zzjj;
        zziiVar.zzg();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            if (z) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zza.put(zziiVar, zzl(value));
            return;
        }
        Object objZze = zze(zziiVar);
        if (objZze == null) {
            this.zza.put(zziiVar, zzl(value));
            if (z) {
                this.zzd = true;
                return;
            }
            return;
        }
        if (z) {
            throw null;
        }
        if (objZze instanceof zzkj) {
            zzkeVarZzj = zziiVar.zzc((zzkj) objZze, (zzkj) value);
        } else {
            zzkd zzkdVarZzX = ((zzke) objZze).zzX();
            zziiVar.zzb(zzkdVarZzX, (zzke) value);
            zzkeVarZzj = zzkdVarZzX.zzj();
        }
        this.zza.put(zziiVar, zzkeVarZzj);
    }

    private static boolean zzn(Map.Entry entry) {
        zzii zziiVar = (zzii) entry.getKey();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            return true;
        }
        zziiVar.zzg();
        Object value = entry.getValue();
        if (value instanceof zzkf) {
            return ((zzkf) value).zzo();
        }
        if (value instanceof zzjj) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzo(Map.Entry entry) {
        zzii zziiVar = (zzii) entry.getKey();
        Object value = entry.getValue();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            return zza(zziiVar, value);
        }
        zziiVar.zzg();
        zziiVar.zzf();
        boolean z = value instanceof zzjj;
        int iZza = ((zzii) entry.getKey()).zza();
        if (!z) {
            int iZzy = zzhh.zzy(iZza);
            int iZzy2 = zzhh.zzy(24) + zzhh.zzv((zzke) value);
            int iZzy3 = zzhh.zzy(16);
            int iZzy4 = zzhh.zzy(8);
            return iZzy4 + iZzy4 + iZzy3 + iZzy + iZzy2;
        }
        int iZzy5 = zzhh.zzy(iZza);
        int iZza2 = ((zzjj) value).zza();
        int iZzy6 = zzhh.zzy(iZza2) + iZza2;
        int iZzy7 = zzhh.zzy(24);
        int iZzy8 = zzhh.zzy(16);
        int iZzy9 = zzhh.zzy(8);
        return iZzy9 + iZzy9 + iZzy8 + iZzy5 + iZzy7 + iZzy6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzij) {
            return this.zza.equals(((zzij) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzb() {
        int iZzo = 0;
        for (int i = 0; i < this.zza.zzb(); i++) {
            iZzo += zzo(this.zza.zzg(i));
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            iZzo += zzo((Map.Entry) it.next());
        }
        return iZzo;
    }

    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzij clone() {
        zzij zzijVar = new zzij();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry entryZzg = this.zza.zzg(i);
            zzijVar.zzi((zzii) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzijVar.zzi((zzii) entry.getKey(), entry.getValue());
        }
        zzijVar.zzd = this.zzd;
        return zzijVar;
    }

    public final Object zze(zzii zziiVar) {
        Object obj = this.zza.get(zziiVar);
        if (obj instanceof zzjj) {
            throw null;
        }
        return obj;
    }

    public final Iterator zzf() {
        return this.zzd ? new zzji(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zzg() {
        if (this.zzc) {
            return;
        }
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry entryZzg = this.zza.zzg(i);
            if (entryZzg.getValue() instanceof zzit) {
                ((zzit) entryZzg.getValue()).zzB();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzh(zzij zzijVar) {
        for (int i = 0; i < zzijVar.zza.zzb(); i++) {
            zzm(zzijVar.zza.zzg(i));
        }
        Iterator it = zzijVar.zza.zzc().iterator();
        while (it.hasNext()) {
            zzm((Map.Entry) it.next());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
    
        if ((r7 instanceof com.google.android.recaptcha.internal.zziv) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
    
        if ((r7 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0049, code lost:
    
        if (r1 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if ((r7 instanceof com.google.android.recaptcha.internal.zzjj) == false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzi(zzii zziiVar, Object obj) {
        boolean z;
        zziiVar.zzg();
        zziiVar.zzd();
        byte[] bArr = zzjc.zzd;
        obj.getClass();
        zzmb zzmbVar = zzmb.zza;
        zzmc zzmcVar = zzmc.INT;
        switch (r1.zza()) {
            case INT:
                z = obj instanceof Integer;
                break;
            case LONG:
                z = obj instanceof Long;
                break;
            case FLOAT:
                z = obj instanceof Float;
                break;
            case DOUBLE:
                z = obj instanceof Double;
                break;
            case BOOLEAN:
                z = obj instanceof Boolean;
                break;
            case STRING:
                z = obj instanceof String;
                break;
            case BYTE_STRING:
                if (!(obj instanceof zzgw)) {
                    break;
                }
                if (obj instanceof zzjj) {
                    this.zzd = true;
                }
                this.zza.put(zziiVar, obj);
                return;
            case ENUM:
                if (!(obj instanceof Integer)) {
                    break;
                }
                if (obj instanceof zzjj) {
                }
                this.zza.put(zziiVar, obj);
                return;
            case MESSAGE:
                if (!(obj instanceof zzke)) {
                    break;
                }
                if (obj instanceof zzjj) {
                }
                this.zza.put(zziiVar, obj);
                return;
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zziiVar.zza()), zziiVar.zzd().zza(), obj.getClass().getName()));
        }
    }

    public final boolean zzj() {
        return this.zzc;
    }

    public final boolean zzk() {
        for (int i = 0; i < this.zza.zzb(); i++) {
            if (!zzn(this.zza.zzg(i))) {
                return false;
            }
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            if (!zzn((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }
}
