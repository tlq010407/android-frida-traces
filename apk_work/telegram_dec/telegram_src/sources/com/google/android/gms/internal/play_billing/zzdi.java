package com.google.android.gms.internal.play_billing;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import org.telegram.messenger.CharacterCompat;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.R;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzdi implements zzdp {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzeq.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzdf zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzct zzl;
    private final zzeg zzm;
    private final zzbo zzn;
    private final int zzo;
    private final zzdk zzp;
    private final zzda zzq;

    private zzdi(int[] iArr, Object[] objArr, int i, int i2, zzdf zzdfVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzdk zzdkVar, zzct zzctVar, zzeg zzegVar, zzbo zzboVar, zzda zzdaVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzo = i3;
        boolean z2 = false;
        if (zzboVar != null && zzboVar.zzc(zzdfVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzi = iArr2;
        this.zzj = i4;
        this.zzk = i5;
        this.zzp = zzdkVar;
        this.zzl = zzctVar;
        this.zzm = zzegVar;
        this.zzn = zzboVar;
        this.zzg = zzdfVar;
        this.zzq = zzdaVar;
    }

    private final zzce zzA(int i) {
        int i2 = i / 3;
        return (zzce) this.zzd[i2 + i2 + 1];
    }

    private final zzdp zzB(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzdp zzdpVar = (zzdp) this.zzd[i3];
        if (zzdpVar != null) {
            return zzdpVar;
        }
        zzdp zzdpVarZzb = zzdn.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzdpVarZzb;
        return zzdpVarZzb;
    }

    private final Object zzC(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzD(Object obj, int i) {
        zzdp zzdpVarZzB = zzB(i);
        int iZzy = zzy(i) & 1048575;
        if (!zzP(obj, i)) {
            return zzdpVarZzB.zze();
        }
        Object object = zzb.getObject(obj, iZzy);
        if (zzS(object)) {
            return object;
        }
        Object objZze = zzdpVarZzB.zze();
        if (object != null) {
            zzdpVarZzB.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzE(Object obj, int i, int i2) {
        zzdp zzdpVarZzB = zzB(i2);
        if (!zzT(obj, i, i2)) {
            return zzdpVarZzB.zze();
        }
        Object object = zzb.getObject(obj, zzy(i2) & 1048575);
        if (zzS(object)) {
            return object;
        }
        Object objZze = zzdpVarZzB.zze();
        if (object != null) {
            zzdpVarZzB.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzF(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzG(Object obj) {
        if (!zzS(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        if (zzP(obj2, i)) {
            int iZzy = zzy(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzy;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzdp zzdpVarZzB = zzB(i);
            if (!zzP(obj, i)) {
                if (zzS(object)) {
                    Object objZze = zzdpVarZzB.zze();
                    zzdpVarZzB.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzJ(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzS(object2)) {
                Object objZze2 = zzdpVarZzB.zze();
                zzdpVarZzB.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzdpVarZzB.zzg(object2, object);
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzT(obj2, i2, i)) {
            int iZzy = zzy(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzy;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzdp zzdpVarZzB = zzB(i);
            if (!zzT(obj, i2, i)) {
                if (zzS(object)) {
                    Object objZze = zzdpVarZzB.zze();
                    zzdpVarZzB.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzK(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzS(object2)) {
                Object objZze2 = zzdpVarZzB.zze();
                zzdpVarZzB.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzdpVarZzB.zzg(object2, object);
        }
    }

    private final void zzJ(Object obj, int i) {
        int iZzv = zzv(i);
        long j = 1048575 & iZzv;
        if (j == 1048575) {
            return;
        }
        zzeq.zzq(obj, j, (1 << (iZzv >>> 20)) | zzeq.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzeq.zzq(obj, zzv(i2) & 1048575, i);
    }

    private final void zzL(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzy(i) & 1048575, obj2);
        zzJ(obj, i);
    }

    private final void zzM(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzy(i2) & 1048575, obj2);
        zzK(obj, i, i2);
    }

    private final void zzN(zzey zzeyVar, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzC(i2));
        throw null;
    }

    private final boolean zzO(Object obj, Object obj2, int i) {
        return zzP(obj, i) == zzP(obj2, i);
    }

    private final boolean zzP(Object obj, int i) {
        int iZzv = zzv(i);
        long j = iZzv & 1048575;
        if (j != 1048575) {
            return (zzeq.zzc(obj, j) & (1 << (iZzv >>> 20))) != 0;
        }
        int iZzy = zzy(i);
        long j2 = iZzy & 1048575;
        switch (zzx(iZzy)) {
            case 0:
                return Double.doubleToRawLongBits(zzeq.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzeq.zzb(obj, j2)) != 0;
            case 2:
                return zzeq.zzd(obj, j2) != 0;
            case 3:
                return zzeq.zzd(obj, j2) != 0;
            case 4:
                return zzeq.zzc(obj, j2) != 0;
            case 5:
                return zzeq.zzd(obj, j2) != 0;
            case 6:
                return zzeq.zzc(obj, j2) != 0;
            case 7:
                return zzeq.zzw(obj, j2);
            case 8:
                Object objZzf = zzeq.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzba) {
                    return !zzba.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzeq.zzf(obj, j2) != null;
            case 10:
                return !zzba.zzb.equals(zzeq.zzf(obj, j2));
            case 11:
                return zzeq.zzc(obj, j2) != 0;
            case 12:
                return zzeq.zzc(obj, j2) != 0;
            case 13:
                return zzeq.zzc(obj, j2) != 0;
            case 14:
                return zzeq.zzd(obj, j2) != 0;
            case 15:
                return zzeq.zzc(obj, j2) != 0;
            case 16:
                return zzeq.zzd(obj, j2) != 0;
            case 17:
                return zzeq.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzQ(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzP(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzR(Object obj, int i, zzdp zzdpVar) {
        return zzdpVar.zzk(zzeq.zzf(obj, i & 1048575));
    }

    private static boolean zzS(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzcb) {
            return ((zzcb) obj).zzt();
        }
        return true;
    }

    private final boolean zzT(Object obj, int i, int i2) {
        return zzeq.zzc(obj, (long) (zzv(i2) & 1048575)) == i;
    }

    private static boolean zzU(Object obj, long j) {
        return ((Boolean) zzeq.zzf(obj, j)).booleanValue();
    }

    private static final void zzV(int i, Object obj, zzey zzeyVar) {
        if (obj instanceof String) {
            zzeyVar.zzF(i, (String) obj);
        } else {
            zzeyVar.zzd(i, (zzba) obj);
        }
    }

    static zzeh zzd(Object obj) {
        zzcb zzcbVar = (zzcb) obj;
        zzeh zzehVar = zzcbVar.zzc;
        if (zzehVar != zzeh.zzc()) {
            return zzehVar;
        }
        zzeh zzehVarZzf = zzeh.zzf();
        zzcbVar.zzc = zzehVarZzf;
        return zzehVarZzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x026e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzdi zzl(Class cls, zzdc zzdcVar, zzdk zzdkVar, zzct zzctVar, zzeg zzegVar, zzbo zzboVar, zzda zzdaVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        char cCharAt;
        int i8;
        char cCharAt2;
        int i9;
        char cCharAt3;
        int i10;
        char cCharAt4;
        int i11;
        char cCharAt5;
        int i12;
        char cCharAt6;
        int i13;
        char cCharAt7;
        int i14;
        char cCharAt8;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset;
        String str;
        int i20;
        int i21;
        int i22;
        int iObjectFieldOffset2;
        Field fieldZzF;
        char cCharAt9;
        int i23;
        int i24;
        Object obj;
        Field fieldZzF2;
        Object obj2;
        Field fieldZzF3;
        int i25;
        char cCharAt10;
        int i26;
        char cCharAt11;
        int i27;
        char cCharAt12;
        int i28;
        char cCharAt13;
        if (!(zzdcVar instanceof zzdo)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzdcVar);
            throw null;
        }
        zzdo zzdoVar = (zzdo) zzdcVar;
        String strZzd = zzdoVar.zzd();
        int length = strZzd.length();
        char cCharAt14 = strZzd.charAt(0);
        char c = CharacterCompat.MIN_HIGH_SURROGATE;
        if (cCharAt14 >= 55296) {
            int i29 = 1;
            while (true) {
                i = i29 + 1;
                if (strZzd.charAt(i29) < 55296) {
                    break;
                }
                i29 = i;
            }
        } else {
            i = 1;
        }
        int i30 = i + 1;
        int iCharAt3 = strZzd.charAt(i);
        if (iCharAt3 >= 55296) {
            int i31 = iCharAt3 & 8191;
            int i32 = 13;
            while (true) {
                i28 = i30 + 1;
                cCharAt13 = strZzd.charAt(i30);
                if (cCharAt13 < 55296) {
                    break;
                }
                i31 |= (cCharAt13 & 8191) << i32;
                i32 += 13;
                i30 = i28;
            }
            iCharAt3 = i31 | (cCharAt13 << i32);
            i30 = i28;
        }
        if (iCharAt3 == 0) {
            iArr = zza;
            i5 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i3 = 0;
            i6 = 0;
            i2 = 0;
            i4 = 0;
        } else {
            int i33 = i30 + 1;
            int iCharAt4 = strZzd.charAt(i30);
            if (iCharAt4 >= 55296) {
                int i34 = iCharAt4 & 8191;
                int i35 = 13;
                while (true) {
                    i14 = i33 + 1;
                    cCharAt8 = strZzd.charAt(i33);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt8 & 8191) << i35;
                    i35 += 13;
                    i33 = i14;
                }
                iCharAt4 = i34 | (cCharAt8 << i35);
                i33 = i14;
            }
            int i36 = i33 + 1;
            int iCharAt5 = strZzd.charAt(i33);
            if (iCharAt5 >= 55296) {
                int i37 = iCharAt5 & 8191;
                int i38 = 13;
                while (true) {
                    i13 = i36 + 1;
                    cCharAt7 = strZzd.charAt(i36);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt7 & 8191) << i38;
                    i38 += 13;
                    i36 = i13;
                }
                iCharAt5 = i37 | (cCharAt7 << i38);
                i36 = i13;
            }
            int i39 = i36 + 1;
            int iCharAt6 = strZzd.charAt(i36);
            if (iCharAt6 >= 55296) {
                int i40 = iCharAt6 & 8191;
                int i41 = 13;
                while (true) {
                    i12 = i39 + 1;
                    cCharAt6 = strZzd.charAt(i39);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt6 & 8191) << i41;
                    i41 += 13;
                    i39 = i12;
                }
                iCharAt6 = i40 | (cCharAt6 << i41);
                i39 = i12;
            }
            int i42 = i39 + 1;
            int iCharAt7 = strZzd.charAt(i39);
            if (iCharAt7 >= 55296) {
                int i43 = iCharAt7 & 8191;
                int i44 = 13;
                while (true) {
                    i11 = i42 + 1;
                    cCharAt5 = strZzd.charAt(i42);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt5 & 8191) << i44;
                    i44 += 13;
                    i42 = i11;
                }
                iCharAt7 = i43 | (cCharAt5 << i44);
                i42 = i11;
            }
            int i45 = i42 + 1;
            iCharAt = strZzd.charAt(i42);
            if (iCharAt >= 55296) {
                int i46 = iCharAt & 8191;
                int i47 = 13;
                while (true) {
                    i10 = i45 + 1;
                    cCharAt4 = strZzd.charAt(i45);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt4 & 8191) << i47;
                    i47 += 13;
                    i45 = i10;
                }
                iCharAt = i46 | (cCharAt4 << i47);
                i45 = i10;
            }
            int i48 = i45 + 1;
            iCharAt2 = strZzd.charAt(i45);
            if (iCharAt2 >= 55296) {
                int i49 = iCharAt2 & 8191;
                int i50 = 13;
                while (true) {
                    i9 = i48 + 1;
                    cCharAt3 = strZzd.charAt(i48);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt3 & 8191) << i50;
                    i50 += 13;
                    i48 = i9;
                }
                iCharAt2 = i49 | (cCharAt3 << i50);
                i48 = i9;
            }
            int i51 = i48 + 1;
            int iCharAt8 = strZzd.charAt(i48);
            if (iCharAt8 >= 55296) {
                int i52 = iCharAt8 & 8191;
                int i53 = 13;
                while (true) {
                    i8 = i51 + 1;
                    cCharAt2 = strZzd.charAt(i51);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt2 & 8191) << i53;
                    i53 += 13;
                    i51 = i8;
                }
                iCharAt8 = i52 | (cCharAt2 << i53);
                i51 = i8;
            }
            int i54 = i51 + 1;
            int iCharAt9 = strZzd.charAt(i51);
            if (iCharAt9 >= 55296) {
                int i55 = iCharAt9 & 8191;
                int i56 = 13;
                while (true) {
                    i7 = i54 + 1;
                    cCharAt = strZzd.charAt(i54);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i55 |= (cCharAt & 8191) << i56;
                    i56 += 13;
                    i54 = i7;
                }
                iCharAt9 = i55 | (cCharAt << i56);
                i54 = i7;
            }
            i2 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i3 = iCharAt6;
            i4 = iCharAt9;
            i5 = iCharAt4;
            i6 = iCharAt7;
            i30 = i54;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzdoVar.zze();
        Class<?> cls2 = zzdoVar.zza().getClass();
        int i57 = i4 + iCharAt2;
        int i58 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i58];
        int i59 = i4;
        int i60 = i57;
        int i61 = 0;
        int i62 = 0;
        while (i30 < length) {
            int i63 = i30 + 1;
            int iCharAt10 = strZzd.charAt(i30);
            if (iCharAt10 >= c) {
                int i64 = iCharAt10 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i27 = i65 + 1;
                    cCharAt12 = strZzd.charAt(i65);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i64 |= (cCharAt12 & 8191) << i66;
                    i66 += 13;
                    i65 = i27;
                }
                iCharAt10 = i64 | (cCharAt12 << i66);
                i15 = i27;
            } else {
                i15 = i63;
            }
            int i67 = i15 + 1;
            int iCharAt11 = strZzd.charAt(i15);
            if (iCharAt11 >= c) {
                int i68 = iCharAt11 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i26 = i69 + 1;
                    cCharAt11 = strZzd.charAt(i69);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i68 |= (cCharAt11 & 8191) << i70;
                    i70 += 13;
                    i69 = i26;
                }
                iCharAt11 = i68 | (cCharAt11 << i70);
                i16 = i26;
            } else {
                i16 = i67;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i61] = i62;
                i61++;
            }
            int i71 = iCharAt11 & 255;
            if (i71 >= 51) {
                int i72 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                i17 = length;
                char c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                if (iCharAt12 >= 55296) {
                    int i73 = iCharAt12 & 8191;
                    int i74 = 13;
                    while (true) {
                        i25 = i72 + 1;
                        cCharAt10 = strZzd.charAt(i72);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i73 |= (cCharAt10 & 8191) << i74;
                        i74 += 13;
                        i72 = i25;
                        c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                    }
                    iCharAt12 = i73 | (cCharAt10 << i74);
                    i72 = i25;
                }
                int i75 = i71 - 51;
                int i76 = i72;
                if (i75 == 9 || i75 == 17) {
                    int i77 = i62 / 3;
                    i24 = i2 + 1;
                    objArr[i77 + i77 + 1] = objArrZze[i2];
                } else {
                    if (i75 == 12 && (zzdoVar.zzc() == 1 || (iCharAt11 & 2048) != 0)) {
                        int i78 = i62 / 3;
                        i24 = i2 + 1;
                        objArr[i78 + i78 + 1] = objArrZze[i2];
                    }
                    int i79 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i79];
                    if (obj instanceof Field) {
                        fieldZzF2 = zzF(cls2, (String) obj);
                        objArrZze[i79] = fieldZzF2;
                    } else {
                        fieldZzF2 = (Field) obj;
                    }
                    int i80 = i3;
                    i18 = i6;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzF2);
                    int i81 = i79 + 1;
                    obj2 = objArrZze[i81];
                    if (obj2 instanceof Field) {
                        fieldZzF3 = zzF(cls2, (String) obj2);
                        objArrZze[i81] = fieldZzF3;
                    } else {
                        fieldZzF3 = (Field) obj2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzF3);
                    str = strZzd;
                    i19 = i80;
                    i20 = i2;
                    i21 = i76;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i22 = 0;
                }
                i2 = i24;
                int i792 = iCharAt12 + iCharAt12;
                obj = objArrZze[i792];
                if (obj instanceof Field) {
                }
                int i802 = i3;
                i18 = i6;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzF2);
                int i812 = i792 + 1;
                obj2 = objArrZze[i812];
                if (obj2 instanceof Field) {
                }
                int iObjectFieldOffset32 = (int) unsafe.objectFieldOffset(fieldZzF3);
                str = strZzd;
                i19 = i802;
                i20 = i2;
                i21 = i76;
                iObjectFieldOffset = iObjectFieldOffset32;
                i22 = 0;
            } else {
                i17 = length;
                int i82 = i3;
                i18 = i6;
                int i83 = i2 + 1;
                Field fieldZzF4 = zzF(cls2, (String) objArrZze[i2]);
                if (i71 == 9 || i71 == 17) {
                    i19 = i82;
                    int i84 = i62 / 3;
                    objArr[i84 + i84 + 1] = fieldZzF4.getType();
                } else {
                    if (i71 == 27 || i71 == 49) {
                        i19 = i82;
                        int i85 = i62 / 3;
                        i23 = i2 + 2;
                        objArr[i85 + i85 + 1] = objArrZze[i83];
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        i19 = i82;
                        if (zzdoVar.zzc() == 1 || (iCharAt11 & 2048) != 0) {
                            int i86 = i62 / 3;
                            i23 = i2 + 2;
                            objArr[i86 + i86 + 1] = objArrZze[i83];
                        }
                    } else if (i71 == 50) {
                        int i87 = i59 + 1;
                        iArr[i59] = i62;
                        int i88 = i62 / 3;
                        int i89 = i2 + 2;
                        int i90 = i88 + i88;
                        objArr[i90] = objArrZze[i83];
                        if ((iCharAt11 & 2048) != 0) {
                            i83 = i2 + 3;
                            objArr[i90 + 1] = objArrZze[i89];
                            i19 = i82;
                            i59 = i87;
                        } else {
                            i59 = i87;
                            i83 = i89;
                            i19 = i82;
                        }
                    } else {
                        i19 = i82;
                    }
                    i83 = i23;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzF4);
                iObjectFieldOffset = 1048575;
                if ((iCharAt11 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) == 0 || i71 > 17) {
                    str = strZzd;
                    i20 = i83;
                    i21 = i16;
                    i22 = 0;
                } else {
                    int i91 = i16 + 1;
                    int iCharAt13 = strZzd.charAt(i16);
                    if (iCharAt13 >= 55296) {
                        int i92 = iCharAt13 & 8191;
                        int i93 = 13;
                        while (true) {
                            i21 = i91 + 1;
                            cCharAt9 = strZzd.charAt(i91);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i92 |= (cCharAt9 & 8191) << i93;
                            i93 += 13;
                            i91 = i21;
                        }
                        iCharAt13 = i92 | (cCharAt9 << i93);
                    } else {
                        i21 = i91;
                    }
                    int i94 = i5 + i5 + (iCharAt13 / 32);
                    Object obj3 = objArrZze[i94];
                    str = strZzd;
                    if (obj3 instanceof Field) {
                        fieldZzF = (Field) obj3;
                    } else {
                        fieldZzF = zzF(cls2, (String) obj3);
                        objArrZze[i94] = fieldZzF;
                    }
                    i20 = i83;
                    i22 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzF);
                }
                if (i71 >= 18 && i71 <= 49) {
                    iArr[i60] = iObjectFieldOffset4;
                    i60++;
                }
                iObjectFieldOffset2 = iObjectFieldOffset4;
            }
            int i95 = i62 + 1;
            iArr2[i62] = iCharAt10;
            int i96 = i62 + 2;
            iArr2[i95] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0 ? 536870912 : 0) | (i71 << 20);
            i62 += 3;
            iArr2[i96] = (i22 << 20) | iObjectFieldOffset;
            i2 = i20;
            i30 = i21;
            length = i17;
            i3 = i19;
            strZzd = str;
            i6 = i18;
            c = CharacterCompat.MIN_HIGH_SURROGATE;
        }
        return new zzdi(iArr2, objArr, i3, i6, zzdoVar.zza(), zzdoVar.zzc(), false, iArr, i4, i57, zzdkVar, zzctVar, zzegVar, zzboVar, zzdaVar);
    }

    private static double zzm(Object obj, long j) {
        return ((Double) zzeq.zzf(obj, j)).doubleValue();
    }

    private static float zzn(Object obj, long j) {
        return ((Float) zzeq.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0203, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0210, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x021d, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x022b, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0239, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0247, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0255, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0093, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
    
        r3 = com.google.android.gms.internal.play_billing.zzbi.zzx(r11 << 3) + 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a2, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a4, code lost:
    
        r3 = com.google.android.gms.internal.play_billing.zzbi.zzx(r11 << 3) + 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b1, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b3, code lost:
    
        r4 = r11 << 3;
        r3 = com.google.android.gms.internal.play_billing.zzbi.zzu(zzp(r16, r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0132, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013a, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0142, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014a, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014c, code lost:
    
        r3 = com.google.android.gms.internal.play_billing.zzbi.zzy(zzz(r16, r3));
        r4 = com.google.android.gms.internal.play_billing.zzbi.zzx(r11 << 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0160, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0167, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x016f, code lost:
    
        if (zzT(r16, r11, r5) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x019a, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x019c, code lost:
    
        r4 = com.google.android.gms.internal.play_billing.zzbi.zzx(r11 << 3) + com.google.android.gms.internal.play_billing.zzbi.zzx(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b3, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01c0, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01cd, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01da, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e7, code lost:
    
        if (r3 > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01f6, code lost:
    
        if (r3 > 0) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zzo(Object obj) {
        int i;
        int iZzy;
        int iZzx;
        int iZzx2;
        Object object;
        int i2;
        int iZzt;
        int iZzh;
        int iZzx3;
        Object object2;
        int i3;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 0;
        int iZzx4 = 0;
        int i6 = 1048575;
        int i7 = 0;
        while (i5 < this.zzc.length) {
            int iZzy2 = zzy(i5);
            int[] iArr = this.zzc;
            int i8 = iArr[i5];
            int iZzx5 = zzx(iZzy2);
            if (iZzx5 <= 17) {
                int i9 = iArr[i5 + 2];
                int i10 = i9 & i4;
                int i11 = i9 >>> 20;
                if (i10 != i6) {
                    i7 = unsafe.getInt(obj, i10);
                    i6 = i10;
                }
                i = 1 << i11;
            } else {
                i = 0;
            }
            long j = iZzy2 & i4;
            switch (iZzx5) {
                case 0:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzx2 = zzbi.zzx(i8 << 3) + 8;
                    iZzx4 += iZzx2;
                    break;
                case 1:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzx2 = zzbi.zzx(i8 << 3) + 4;
                    iZzx4 += iZzx2;
                    break;
                case 2:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzy = zzbi.zzy(unsafe.getLong(obj, j));
                    iZzx = zzbi.zzx(i8 << 3);
                    iZzx4 += iZzx + iZzy;
                    break;
                case 3:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzy = zzbi.zzy(unsafe.getLong(obj, j));
                    iZzx = zzbi.zzx(i8 << 3);
                    iZzx4 += iZzx + iZzy;
                    break;
                case 4:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    i2 = i8 << 3;
                    iZzy = zzbi.zzu(unsafe.getInt(obj, j));
                    iZzx = zzbi.zzx(i2);
                    iZzx4 += iZzx + iZzy;
                    break;
                case 5:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzx2 = zzbi.zzx(i8 << 3) + 8;
                    iZzx4 += iZzx2;
                    break;
                case 6:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzx2 = zzbi.zzx(i8 << 3) + 4;
                    iZzx4 += iZzx2;
                    break;
                case 7:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        iZzx2 = zzbi.zzx(i8 << 3) + 1;
                        iZzx4 += iZzx2;
                        break;
                    }
                case 8:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        object = unsafe.getObject(obj, j);
                        if (!(object instanceof zzba)) {
                            i2 = i8 << 3;
                            iZzy = zzbi.zzw((String) object);
                            iZzx = zzbi.zzx(i2);
                            iZzx4 += iZzx + iZzy;
                            break;
                        }
                        int i12 = zzbi.$r8$clinit;
                        int iZzd = ((zzba) object).zzd();
                        iZzx2 = zzbi.zzx(i8 << 3) + zzbi.zzx(iZzd) + iZzd;
                        iZzx4 += iZzx2;
                        break;
                    }
                case 9:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        iZzx2 = zzdr.zzn(i8, unsafe.getObject(obj, j), zzB(i5));
                        iZzx4 += iZzx2;
                        break;
                    }
                case 10:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        object = unsafe.getObject(obj, j);
                        int i122 = zzbi.$r8$clinit;
                        int iZzd2 = ((zzba) object).zzd();
                        iZzx2 = zzbi.zzx(i8 << 3) + zzbi.zzx(iZzd2) + iZzd2;
                        iZzx4 += iZzx2;
                        break;
                    }
                case 11:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        i2 = i8 << 3;
                        iZzy = zzbi.zzx(unsafe.getInt(obj, j));
                        iZzx = zzbi.zzx(i2);
                        iZzx4 += iZzx + iZzy;
                        break;
                    }
                case 12:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    i2 = i8 << 3;
                    iZzy = zzbi.zzu(unsafe.getInt(obj, j));
                    iZzx = zzbi.zzx(i2);
                    iZzx4 += iZzx + iZzy;
                    break;
                case 13:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzx2 = zzbi.zzx(i8 << 3) + 4;
                    iZzx4 += iZzx2;
                    break;
                case 14:
                    if ((i7 & i) == 0) {
                        break;
                    }
                    iZzx2 = zzbi.zzx(i8 << 3) + 8;
                    iZzx4 += iZzx2;
                    break;
                case 15:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(obj, j);
                        iZzx = zzbi.zzx(i8 << 3);
                        iZzy = zzbi.zzx((i13 >> 31) ^ (i13 + i13));
                        iZzx4 += iZzx + iZzy;
                        break;
                    }
                case 16:
                    if ((i & i7) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(obj, j);
                        iZzx4 += zzbi.zzx(i8 << 3) + zzbi.zzy((j2 >> 63) ^ (j2 + j2));
                        break;
                    }
                case 17:
                    if ((i7 & i) == 0) {
                        break;
                    } else {
                        iZzx2 = zzbi.zzt(i8, (zzdf) unsafe.getObject(obj, j), zzB(i5));
                        iZzx4 += iZzx2;
                        break;
                    }
                case 18:
                case 23:
                    iZzx2 = zzdr.zzg(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzx2;
                    break;
                case 19:
                case 24:
                    iZzx2 = zzdr.zze(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzx2;
                    break;
                case 20:
                    iZzx2 = zzdr.zzl(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzx2;
                    break;
                case 21:
                    iZzx2 = zzdr.zzw(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzx2;
                    break;
                case 22:
                    iZzx2 = zzdr.zzj(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzx2;
                    break;
                case 25:
                    iZzx2 = zzdr.zza(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzx2;
                    break;
                case 26:
                    iZzt = zzdr.zzt(i8, (List) unsafe.getObject(obj, j));
                    iZzx4 += iZzt;
                    break;
                case 27:
                    iZzt = zzdr.zzo(i8, (List) unsafe.getObject(obj, j), zzB(i5));
                    iZzx4 += iZzt;
                    break;
                case 28:
                    iZzt = zzdr.zzb(i8, (List) unsafe.getObject(obj, j));
                    iZzx4 += iZzt;
                    break;
                case 29:
                    iZzt = zzdr.zzu(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzt;
                    break;
                case 30:
                    iZzt = zzdr.zzc(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzt;
                    break;
                case 31:
                    iZzt = zzdr.zze(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzt;
                    break;
                case 32:
                    iZzt = zzdr.zzg(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzt;
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    iZzt = zzdr.zzp(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzt;
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    iZzt = zzdr.zzr(i8, (List) unsafe.getObject(obj, j), false);
                    iZzx4 += iZzt;
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZzh = zzdr.zzm((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZzh = zzdr.zzx((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZzh = zzdr.zzk((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    List list = (List) unsafe.getObject(obj, j);
                    int i14 = zzdr.$r8$clinit;
                    iZzh = list.size();
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZzh = zzdr.zzv((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZzh = zzdr.zzd((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZzh = zzdr.zzq((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZzh = zzdr.zzs((List) unsafe.getObject(obj, j));
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    iZzt = zzdr.zzi(i8, (List) unsafe.getObject(obj, j), zzB(i5));
                    iZzx4 += iZzt;
                    break;
                case 50:
                    zzda.zza(i8, unsafe.getObject(obj, j), zzC(i5));
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzT(obj, i8, i5)) {
                        iZzt = zzbi.zzx(i8 << 3) + 1;
                        iZzx4 += iZzt;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzT(obj, i8, i5)) {
                        object2 = unsafe.getObject(obj, j);
                        if (!(object2 instanceof zzba)) {
                            i3 = i8 << 3;
                            iZzh = zzbi.zzw((String) object2);
                            iZzx3 = zzbi.zzx(i3);
                            iZzx4 += iZzx3 + iZzh;
                        }
                        int i15 = zzbi.$r8$clinit;
                        int iZzd3 = ((zzba) object2).zzd();
                        iZzt = zzbi.zzx(i8 << 3) + zzbi.zzx(iZzd3) + iZzd3;
                        iZzx4 += iZzt;
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zzT(obj, i8, i5)) {
                        iZzt = zzdr.zzn(i8, unsafe.getObject(obj, j), zzB(i5));
                        iZzx4 += iZzt;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zzT(obj, i8, i5)) {
                        object2 = unsafe.getObject(obj, j);
                        int i152 = zzbi.$r8$clinit;
                        int iZzd32 = ((zzba) object2).zzd();
                        iZzt = zzbi.zzx(i8 << 3) + zzbi.zzx(iZzd32) + iZzd32;
                        iZzx4 += iZzt;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zzT(obj, i8, i5)) {
                        i3 = i8 << 3;
                        iZzh = zzbi.zzx(zzp(obj, j));
                        iZzx3 = zzbi.zzx(i3);
                        iZzx4 += iZzx3 + iZzh;
                    }
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zzT(obj, i8, i5)) {
                        int iZzp = zzp(obj, j);
                        iZzx3 = zzbi.zzx(i8 << 3);
                        iZzh = zzbi.zzx((iZzp >> 31) ^ (iZzp + iZzp));
                        iZzx4 += iZzx3 + iZzh;
                    }
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzT(obj, i8, i5)) {
                        long jZzz = zzz(obj, j);
                        iZzx4 += zzbi.zzx(i8 << 3) + zzbi.zzy((jZzz >> 63) ^ (jZzz + jZzz));
                    }
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zzT(obj, i8, i5)) {
                        iZzt = zzbi.zzt(i8, (zzdf) unsafe.getObject(obj, j), zzB(i5));
                        iZzx4 += iZzt;
                    }
                    break;
            }
            i5 += 3;
            i4 = 1048575;
        }
        zzeg zzegVar = this.zzm;
        int iZza = iZzx4 + zzegVar.zza(zzegVar.zzd(obj));
        if (!this.zzh) {
            return iZza;
        }
        this.zzn.zza(obj);
        throw null;
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzeq.zzf(obj, j)).intValue();
    }

    private final int zzq(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzan zzanVar) {
        Unsafe unsafe = zzb;
        Object objZzC = zzC(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzcz) object).zze()) {
            zzcz zzczVarZzb = zzcz.zza().zzb();
            zzda.zzb(zzczVarZzb, object);
            unsafe.putObject(obj, j, zzczVarZzb);
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(objZzC);
        throw null;
    }

    private final int zzr(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzan zzanVar) throws zzci {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzao.zzp(bArr, i))));
                    int i9 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i9;
                }
                break;
            case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzao.zzb(bArr, i))));
                    int i10 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i10;
                }
                break;
            case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
            case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                if (i5 == 0) {
                    int iZzm = zzao.zzm(bArr, i, zzanVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzanVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return iZzm;
                }
                break;
            case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
            case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                if (i5 == 0) {
                    int iZzj = zzao.zzj(bArr, i, zzanVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzanVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return iZzj;
                }
                break;
            case R.styleable.AppCompatTheme_colorError /* 56 */:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzao.zzp(bArr, i)));
                    int i11 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i11;
                }
                break;
            case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzao.zzb(bArr, i)));
                    int i12 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i12;
                }
                break;
            case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                if (i5 == 0) {
                    int iZzm2 = zzao.zzm(bArr, i, zzanVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzanVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return iZzm2;
                }
                break;
            case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                if (i5 == 2) {
                    int iZzj2 = zzao.zzj(bArr, i, zzanVar);
                    int i13 = zzanVar.zza;
                    if (i13 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !zzev.zze(bArr, iZzj2, iZzj2 + i13)) {
                            throw zzci.zzc();
                        }
                        unsafe.putObject(obj, j, new String(bArr, iZzj2, i13, zzcg.zzb));
                        iZzj2 += i13;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return iZzj2;
                }
                break;
            case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                if (i5 == 2) {
                    Object objZzE = zzE(obj, i4, i8);
                    int iZzo = zzao.zzo(objZzE, zzB(i8), bArr, i, i2, zzanVar);
                    zzM(obj, i4, i8, objZzE);
                    return iZzo;
                }
                break;
            case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                if (i5 == 2) {
                    int iZza = zzao.zza(bArr, i, zzanVar);
                    unsafe.putObject(obj, j, zzanVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return iZza;
                }
                break;
            case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                if (i5 == 0) {
                    int iZzj3 = zzao.zzj(bArr, i, zzanVar);
                    int i14 = zzanVar.zza;
                    zzce zzceVarZzA = zzA(i8);
                    if (zzceVarZzA == null || zzceVarZzA.zza(i14)) {
                        unsafe.putObject(obj, j, Integer.valueOf(i14));
                        unsafe.putInt(obj, j2, i4);
                    } else {
                        zzd(obj).zzj(i3, Long.valueOf(i14));
                    }
                    return iZzj3;
                }
                break;
            case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                if (i5 == 0) {
                    int iZzj4 = zzao.zzj(bArr, i, zzanVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzbe.zzb(zzanVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return iZzj4;
                }
                break;
            case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                if (i5 == 0) {
                    int iZzm3 = zzao.zzm(bArr, i, zzanVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzbe.zzc(zzanVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return iZzm3;
                }
                break;
            case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                if (i5 == 3) {
                    Object objZzE2 = zzE(obj, i4, i8);
                    int iZzn = zzao.zzn(objZzE2, zzB(i8), bArr, i, i2, (i3 & (-8)) | 4, zzanVar);
                    zzM(obj, i4, i8, objZzE2);
                    return iZzn;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:237:0x0172, code lost:
    
        r14.add(com.google.android.gms.internal.play_billing.zzba.zzl(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0162, code lost:
    
        if (r4 == 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0164, code lost:
    
        r14.add(com.google.android.gms.internal.play_billing.zzba.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x016a, code lost:
    
        r14.add(com.google.android.gms.internal.play_billing.zzba.zzl(r18, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0172, code lost:
    
        if (r1 >= r20) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0174, code lost:
    
        r4 = com.google.android.gms.internal.play_billing.zzao.zzj(r18, r1, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x017a, code lost:
    
        if (r21 == r30.zza) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x017d, code lost:
    
        r1 = com.google.android.gms.internal.play_billing.zzao.zzj(r18, r4, r30);
        r4 = r30.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0183, code lost:
    
        if (r4 < 0) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0187, code lost:
    
        if (r4 > (r18.length - r1)) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0189, code lost:
    
        if (r4 != 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0190, code lost:
    
        throw com.google.android.gms.internal.play_billing.zzci.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0195, code lost:
    
        throw com.google.android.gms.internal.play_billing.zzci.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0196, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x022b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x01f4 -> B:110:0x01d3). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:139:0x023b -> B:129:0x0212). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x0189 -> B:80:0x0164). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzan zzanVar) throws zzci {
        int iZzl;
        int iZzj = i;
        Unsafe unsafe = zzb;
        zzcf zzcfVarZzd = (zzcf) unsafe.getObject(obj, j2);
        if (!zzcfVarZzd.zzc()) {
            int size = zzcfVarZzd.size();
            zzcfVarZzd = zzcfVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzcfVarZzd);
        }
        Object objZzA = null;
        switch (i7) {
            case 18:
            case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj2 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i8 = zzanVar.zza + iZzj2;
                    if (iZzj2 < i8) {
                        Double.longBitsToDouble(zzao.zzp(bArr, iZzj2));
                        throw null;
                    }
                    if (iZzj2 == i8) {
                        return iZzj2;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 1) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    Double.longBitsToDouble(zzao.zzp(bArr, i));
                    throw null;
                }
                break;
            case 19:
            case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj3 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i9 = zzanVar.zza + iZzj3;
                    if (iZzj3 < i9) {
                        Float.intBitsToFloat(zzao.zzb(bArr, iZzj3));
                        throw null;
                    }
                    if (iZzj3 == i9) {
                        return iZzj3;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 5) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    Float.intBitsToFloat(zzao.zzb(bArr, i));
                    throw null;
                }
                break;
            case 20:
            case 21:
            case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
            case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj4 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i10 = zzanVar.zza + iZzj4;
                    if (iZzj4 < i10) {
                        zzao.zzm(bArr, iZzj4, zzanVar);
                        throw null;
                    }
                    if (iZzj4 == i10) {
                        return iZzj4;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    zzao.zzm(bArr, iZzj, zzanVar);
                    long j3 = zzanVar.zzb;
                    throw null;
                }
                break;
            case 22:
            case 29:
            case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
            case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                if (i5 == 2) {
                    return zzao.zzf(bArr, iZzj, zzcfVarZzd, zzanVar);
                }
                if (i5 == 0) {
                    return zzao.zzl(i3, bArr, i, i2, zzcfVarZzd, zzanVar);
                }
                break;
            case 23:
            case 32:
            case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
            case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj5 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i11 = zzanVar.zza + iZzj5;
                    if (iZzj5 < i11) {
                        zzao.zzp(bArr, iZzj5);
                        throw null;
                    }
                    if (iZzj5 == i11) {
                        return iZzj5;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 1) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    zzao.zzp(bArr, i);
                    throw null;
                }
                break;
            case 24:
            case 31:
            case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
            case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj6 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i12 = zzanVar.zza + iZzj6;
                    if (iZzj6 < i12) {
                        zzao.zzb(bArr, iZzj6);
                        throw null;
                    }
                    if (iZzj6 == i12) {
                        return iZzj6;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 5) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    zzao.zzb(bArr, i);
                    throw null;
                }
                break;
            case 25:
            case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj7 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i13 = zzanVar.zza + iZzj7;
                    if (iZzj7 < i13) {
                        zzao.zzm(bArr, iZzj7, zzanVar);
                        throw null;
                    }
                    if (iZzj7 == i13) {
                        return iZzj7;
                    }
                    throw zzci.zzg();
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    zzao.zzm(bArr, iZzj, zzanVar);
                    long j4 = zzanVar.zzb;
                    throw null;
                }
                break;
            case 26:
                if (i5 == 2) {
                    long j5 = j & 536870912;
                    iZzj = zzao.zzj(bArr, iZzj, zzanVar);
                    if (j5 != 0) {
                        int i14 = zzanVar.zza;
                        if (i14 < 0) {
                            throw zzci.zzd();
                        }
                        if (i14 == 0) {
                            zzcfVarZzd.add("");
                        } else {
                            int i15 = iZzj + i14;
                            if (!zzev.zze(bArr, iZzj, i15)) {
                                throw zzci.zzc();
                            }
                            zzcfVarZzd.add(new String(bArr, iZzj, i14, zzcg.zzb));
                            iZzj = i15;
                        }
                        while (iZzj < i2) {
                            int iZzj8 = zzao.zzj(bArr, iZzj, zzanVar);
                            if (i3 != zzanVar.zza) {
                                break;
                            } else {
                                iZzj = zzao.zzj(bArr, iZzj8, zzanVar);
                                int i16 = zzanVar.zza;
                                if (i16 < 0) {
                                    throw zzci.zzd();
                                }
                                if (i16 == 0) {
                                    zzcfVarZzd.add("");
                                    while (iZzj < i2) {
                                    }
                                } else {
                                    int i17 = iZzj + i16;
                                    if (!zzev.zze(bArr, iZzj, i17)) {
                                        throw zzci.zzc();
                                    }
                                    zzcfVarZzd.add(new String(bArr, iZzj, i16, zzcg.zzb));
                                    iZzj = i17;
                                }
                            }
                        }
                        break;
                    } else {
                        int i18 = zzanVar.zza;
                        if (i18 < 0) {
                            throw zzci.zzd();
                        }
                        if (i18 == 0) {
                            zzcfVarZzd.add("");
                        } else {
                            zzcfVarZzd.add(new String(bArr, iZzj, i18, zzcg.zzb));
                            iZzj += i18;
                        }
                        while (iZzj < i2) {
                            int iZzj9 = zzao.zzj(bArr, iZzj, zzanVar);
                            if (i3 != zzanVar.zza) {
                                break;
                            } else {
                                iZzj = zzao.zzj(bArr, iZzj9, zzanVar);
                                int i19 = zzanVar.zza;
                                if (i19 < 0) {
                                    throw zzci.zzd();
                                }
                                if (i19 == 0) {
                                    zzcfVarZzd.add("");
                                    while (iZzj < i2) {
                                    }
                                } else {
                                    zzcfVarZzd.add(new String(bArr, iZzj, i19, zzcg.zzb));
                                    iZzj += i19;
                                }
                            }
                        }
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return zzao.zze(zzB(i6), i3, bArr, i, i2, zzcfVarZzd, zzanVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iZzj10 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i20 = zzanVar.zza;
                    if (i20 < 0) {
                        throw zzci.zzd();
                    }
                    if (i20 > bArr.length - iZzj10) {
                        throw zzci.zzg();
                    }
                }
                break;
            case 30:
            case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                if (i5 == 2) {
                    iZzl = zzao.zzf(bArr, iZzj, zzcfVarZzd, zzanVar);
                } else if (i5 == 0) {
                    iZzl = zzao.zzl(i3, bArr, i, i2, zzcfVarZzd, zzanVar);
                }
                zzce zzceVarZzA = zzA(i6);
                zzeg zzegVar = this.zzm;
                int i21 = zzdr.$r8$clinit;
                if (zzceVarZzA != null) {
                    if (zzcfVarZzd instanceof RandomAccess) {
                        int size2 = zzcfVarZzd.size();
                        int i22 = 0;
                        for (int i23 = 0; i23 < size2; i23++) {
                            Integer num = (Integer) zzcfVarZzd.get(i23);
                            int iIntValue = num.intValue();
                            if (zzceVarZzA.zza(iIntValue)) {
                                if (i23 != i22) {
                                    zzcfVarZzd.set(i22, num);
                                }
                                i22++;
                            } else {
                                objZzA = zzdr.zzA(obj, i4, iIntValue, objZzA, zzegVar);
                            }
                        }
                        if (i22 != size2) {
                            zzcfVarZzd.subList(i22, size2).clear();
                            return iZzl;
                        }
                    } else {
                        Iterator it = zzcfVarZzd.iterator();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Integer) it.next()).intValue();
                            if (!zzceVarZzA.zza(iIntValue2)) {
                                objZzA = zzdr.zzA(obj, i4, iIntValue2, objZzA, zzegVar);
                                it.remove();
                            }
                        }
                    }
                }
                return iZzl;
            case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
            case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj11 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i24 = zzanVar.zza + iZzj11;
                    if (iZzj11 >= i24) {
                        if (iZzj11 == i24) {
                            return iZzj11;
                        }
                        throw zzci.zzg();
                    }
                    zzao.zzj(bArr, iZzj11, zzanVar);
                    zzbe.zzb(zzanVar.zza);
                    throw null;
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    zzao.zzj(bArr, iZzj, zzanVar);
                    zzbe.zzb(zzanVar.zza);
                    throw null;
                }
                break;
            case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
            case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    int iZzj12 = zzao.zzj(bArr, iZzj, zzanVar);
                    int i25 = zzanVar.zza + iZzj12;
                    if (iZzj12 >= i25) {
                        if (iZzj12 == i25) {
                            return iZzj12;
                        }
                        throw zzci.zzg();
                    }
                    zzao.zzm(bArr, iZzj12, zzanVar);
                    zzbe.zzc(zzanVar.zzb);
                    throw null;
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVarZzd);
                    zzao.zzm(bArr, iZzj, zzanVar);
                    zzbe.zzc(zzanVar.zzb);
                    throw null;
                }
                break;
            default:
                if (i5 == 3) {
                    zzdp zzdpVarZzB = zzB(i6);
                    int i26 = (i3 & (-8)) | 4;
                    int iZzc = zzao.zzc(zzdpVarZzB, bArr, i, i2, i26, zzanVar);
                    while (true) {
                        zzcfVarZzd.add(zzanVar.zzc);
                        if (iZzc < i2) {
                            int iZzj13 = zzao.zzj(bArr, iZzc, zzanVar);
                            if (i3 == zzanVar.zza) {
                                iZzc = zzao.zzc(zzdpVarZzB, bArr, iZzj13, i2, i26, zzanVar);
                            }
                        }
                    }
                    return iZzc;
                }
                break;
        }
        return iZzj;
    }

    private final int zzt(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzw(i, 0);
    }

    private final int zzu(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzw(i, i2);
    }

    private final int zzv(int i) {
        return this.zzc[i + 2];
    }

    private final int zzw(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzx(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzy(int i) {
        return this.zzc[i + 1];
    }

    private static long zzz(Object obj, long j) {
        return ((Long) zzeq.zzf(obj, j)).longValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:168:0x035e, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.play_billing.zzba) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0113, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.play_billing.zzba) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0116, code lost:
    
        r5 = r6 << 3;
        r4 = com.google.android.gms.internal.play_billing.zzbi.zzw((java.lang.String) r4);
     */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(Object obj) {
        long jZzd;
        Object objZzf;
        int iZzc;
        int iZzc2;
        int iZzc3;
        long jZzd2;
        int iZzl;
        int iZzh;
        int iZzx;
        int i;
        zzew zzewVar = zzew.zza;
        if (this.zzo - 1 == 0) {
            return zzo(obj);
        }
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int iZzy = zzy(i3);
            int iZzx2 = zzx(iZzy);
            int i4 = this.zzc[i3];
            int i5 = iZzy & 1048575;
            if (iZzx2 >= zzbt.zzJ.zza() && iZzx2 <= zzbt.zzW.zza()) {
                int i6 = this.zzc[i3 + 2];
            }
            long j = i5;
            switch (iZzx2) {
                case 0:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 8;
                    i2 += iZzl;
                    break;
                case 1:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 4;
                    i2 += iZzl;
                    break;
                case 2:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    jZzd = zzeq.zzd(obj, j);
                    iZzh = zzbi.zzy(jZzd);
                    iZzx = zzbi.zzx(i4 << 3);
                    i2 += iZzx + iZzh;
                    break;
                case 3:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    jZzd = zzeq.zzd(obj, j);
                    iZzh = zzbi.zzy(jZzd);
                    iZzx = zzbi.zzx(i4 << 3);
                    i2 += iZzx + iZzh;
                    break;
                case 4:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzc2 = zzeq.zzc(obj, j);
                    i = i4 << 3;
                    iZzh = zzbi.zzu(iZzc2);
                    iZzx = zzbi.zzx(i);
                    i2 += iZzx + iZzh;
                    break;
                case 5:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 8;
                    i2 += iZzl;
                    break;
                case 6:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 4;
                    i2 += iZzl;
                    break;
                case 7:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 1;
                    i2 += iZzl;
                    break;
                case 8:
                    if (zzP(obj, i3)) {
                        objZzf = zzeq.zzf(obj, j);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzdr.zzn(i4, zzeq.zzf(obj, j), zzB(i3));
                    i2 += iZzl;
                    break;
                case 10:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    objZzf = zzeq.zzf(obj, j);
                    int i7 = i4 << 3;
                    int i8 = zzbi.$r8$clinit;
                    int iZzd = ((zzba) objZzf).zzd();
                    iZzl = zzbi.zzx(i7) + zzbi.zzx(iZzd) + iZzd;
                    i2 += iZzl;
                    break;
                case 11:
                    if (zzP(obj, i3)) {
                        iZzc = zzeq.zzc(obj, j);
                        i = i4 << 3;
                        iZzh = zzbi.zzx(iZzc);
                        iZzx = zzbi.zzx(i);
                        i2 += iZzx + iZzh;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzc2 = zzeq.zzc(obj, j);
                    i = i4 << 3;
                    iZzh = zzbi.zzu(iZzc2);
                    iZzx = zzbi.zzx(i);
                    i2 += iZzx + iZzh;
                    break;
                case 13:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 4;
                    i2 += iZzl;
                    break;
                case 14:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 8;
                    i2 += iZzl;
                    break;
                case 15:
                    if (zzP(obj, i3)) {
                        iZzc3 = zzeq.zzc(obj, j);
                        iZzx = zzbi.zzx(i4 << 3);
                        iZzh = zzbi.zzx((iZzc3 >> 31) ^ (iZzc3 + iZzc3));
                        i2 += iZzx + iZzh;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzP(obj, i3)) {
                        jZzd2 = zzeq.zzd(obj, j);
                        iZzl = zzbi.zzx(i4 << 3) + zzbi.zzy((jZzd2 >> 63) ^ (jZzd2 + jZzd2));
                        i2 += iZzl;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (!zzP(obj, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzt(i4, (zzdf) zzeq.zzf(obj, j), zzB(i3));
                    i2 += iZzl;
                    break;
                case 18:
                case 23:
                case 32:
                    iZzl = zzdr.zzg(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 19:
                case 24:
                case 31:
                    iZzl = zzdr.zze(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 20:
                    iZzl = zzdr.zzl(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 21:
                    iZzl = zzdr.zzw(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 22:
                    iZzl = zzdr.zzj(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 25:
                    iZzl = zzdr.zza(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 26:
                    iZzl = zzdr.zzt(i4, (List) zzeq.zzf(obj, j));
                    i2 += iZzl;
                    break;
                case 27:
                    iZzl = zzdr.zzo(i4, (List) zzeq.zzf(obj, j), zzB(i3));
                    i2 += iZzl;
                    break;
                case 28:
                    iZzl = zzdr.zzb(i4, (List) zzeq.zzf(obj, j));
                    i2 += iZzl;
                    break;
                case 29:
                    iZzl = zzdr.zzu(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case 30:
                    iZzl = zzdr.zzc(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    iZzl = zzdr.zzp(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    iZzl = zzdr.zzr(i4, (List) zzeq.zzf(obj, j), false);
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZzh = zzdr.zzm((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZzh = zzdr.zzx((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZzh = zzdr.zzk((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    List list = (List) unsafe.getObject(obj, j);
                    int i9 = zzdr.$r8$clinit;
                    iZzh = list.size();
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZzh = zzdr.zzv((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZzh = zzdr.zzd((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZzh = zzdr.zzf((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZzh = zzdr.zzh((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZzh = zzdr.zzq((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZzh = zzdr.zzs((List) unsafe.getObject(obj, j));
                    if (iZzh <= 0) {
                        break;
                    }
                    iZzx = zzbi.zzx(i4 << 3) + zzbi.zzx(iZzh);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    iZzl = zzdr.zzi(i4, (List) zzeq.zzf(obj, j), zzB(i3));
                    i2 += iZzl;
                    break;
                case 50:
                    zzda.zza(i4, zzeq.zzf(obj, j), zzC(i3));
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 8;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 4;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    jZzd = zzz(obj, j);
                    iZzh = zzbi.zzy(jZzd);
                    iZzx = zzbi.zzx(i4 << 3);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    jZzd = zzz(obj, j);
                    iZzh = zzbi.zzy(jZzd);
                    iZzx = zzbi.zzx(i4 << 3);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzc2 = zzp(obj, j);
                    i = i4 << 3;
                    iZzh = zzbi.zzu(iZzc2);
                    iZzx = zzbi.zzx(i);
                    i2 += iZzx + iZzh;
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 8;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 4;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 1;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzT(obj, i4, i3)) {
                        objZzf = zzeq.zzf(obj, j);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzdr.zzn(i4, zzeq.zzf(obj, j), zzB(i3));
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    objZzf = zzeq.zzf(obj, j);
                    int i72 = i4 << 3;
                    int i82 = zzbi.$r8$clinit;
                    int iZzd2 = ((zzba) objZzf).zzd();
                    iZzl = zzbi.zzx(i72) + zzbi.zzx(iZzd2) + iZzd2;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zzT(obj, i4, i3)) {
                        iZzc = zzp(obj, j);
                        i = i4 << 3;
                        iZzh = zzbi.zzx(iZzc);
                        iZzx = zzbi.zzx(i);
                        i2 += iZzx + iZzh;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzc2 = zzp(obj, j);
                    i = i4 << 3;
                    iZzh = zzbi.zzu(iZzc2);
                    iZzx = zzbi.zzx(i);
                    i2 += iZzx + iZzh;
                    break;
                case 64:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 4;
                    i2 += iZzl;
                    break;
                case 65:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzx(i4 << 3) + 8;
                    i2 += iZzl;
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zzT(obj, i4, i3)) {
                        iZzc3 = zzp(obj, j);
                        iZzx = zzbi.zzx(i4 << 3);
                        iZzh = zzbi.zzx((iZzc3 >> 31) ^ (iZzc3 + iZzc3));
                        i2 += iZzx + iZzh;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzT(obj, i4, i3)) {
                        jZzd2 = zzz(obj, j);
                        iZzl = zzbi.zzx(i4 << 3) + zzbi.zzy((jZzd2 >> 63) ^ (jZzd2 + jZzd2));
                        i2 += iZzl;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zzT(obj, i4, i3)) {
                        break;
                    }
                    iZzl = zzbi.zzt(i4, (zzdf) zzeq.zzf(obj, j), zzB(i3));
                    i2 += iZzl;
                    break;
            }
        }
        zzeg zzegVar = this.zzm;
        return i2 + zzegVar.zza(zzegVar.zzd(obj));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f9 A[PHI: r3
      0x00f9: PHI (r3v8 java.lang.Object) = (r3v5 java.lang.Object), (r3v9 java.lang.Object) binds: [B:74:0x0115, B:68:0x00f7] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(Object obj) {
        int i;
        double dZza;
        int i2;
        float fZzb;
        boolean zZzw;
        Object objZzf;
        int iZzc;
        long jZzd;
        Object objZzf2;
        int length = this.zzc.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iZzy = zzy(i4);
            int i5 = this.zzc[i4];
            long j = 1048575 & iZzy;
            int iHashCode = 37;
            switch (zzx(iZzy)) {
                case 0:
                    i = i3 * 53;
                    dZza = zzeq.zza(obj, j);
                    jZzd = Double.doubleToLongBits(dZza);
                    byte[] bArr = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case 1:
                    i2 = i3 * 53;
                    fZzb = zzeq.zzb(obj, j);
                    iZzc = Float.floatToIntBits(fZzb);
                    i3 = i2 + iZzc;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i3 * 53;
                    jZzd = zzeq.zzd(obj, j);
                    byte[] bArr2 = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i2 = i3 * 53;
                    iZzc = zzeq.zzc(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case 7:
                    i2 = i3 * 53;
                    zZzw = zzeq.zzw(obj, j);
                    iZzc = zzcg.zza(zZzw);
                    i3 = i2 + iZzc;
                    break;
                case 8:
                    i2 = i3 * 53;
                    iZzc = ((String) zzeq.zzf(obj, j)).hashCode();
                    i3 = i2 + iZzc;
                    break;
                case 9:
                    objZzf = zzeq.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case 10:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                case 50:
                    i2 = i3 * 53;
                    objZzf2 = zzeq.zzf(obj, j);
                    iZzc = objZzf2.hashCode();
                    i3 = i2 + iZzc;
                    break;
                case 17:
                    objZzf = zzeq.zzf(obj, j);
                    if (objZzf != null) {
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zzT(obj, i5, i4)) {
                        i = i3 * 53;
                        dZza = zzm(obj, j);
                        jZzd = Double.doubleToLongBits(dZza);
                        byte[] bArr22 = zzcg.zzd;
                        i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        fZzb = zzn(obj, j);
                        iZzc = Float.floatToIntBits(fZzb);
                        i3 = i2 + iZzc;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i = i3 * 53;
                    jZzd = zzz(obj, j);
                    byte[] bArr222 = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i = i3 * 53;
                    jZzd = zzz(obj, j);
                    byte[] bArr2222 = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = zzp(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i = i3 * 53;
                    jZzd = zzz(obj, j);
                    byte[] bArr22222 = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = zzp(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzT(obj, i5, i4)) {
                        i2 = i3 * 53;
                        zZzw = zzU(obj, j);
                        iZzc = zzcg.zza(zZzw);
                        i3 = i2 + iZzc;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = ((String) zzeq.zzf(obj, j)).hashCode();
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    objZzf2 = zzeq.zzf(obj, j);
                    i2 = i3 * 53;
                    iZzc = objZzf2.hashCode();
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    objZzf2 = zzeq.zzf(obj, j);
                    iZzc = objZzf2.hashCode();
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = zzp(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = zzp(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case 64:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = zzp(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case 65:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i = i3 * 53;
                    jZzd = zzz(obj, j);
                    byte[] bArr222222 = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i2 = i3 * 53;
                    iZzc = zzp(obj, j);
                    i3 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    i = i3 * 53;
                    jZzd = zzz(obj, j);
                    byte[] bArr2222222 = zzcg.zzd;
                    i3 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zzT(obj, i5, i4)) {
                        break;
                    }
                    objZzf2 = zzeq.zzf(obj, j);
                    i2 = i3 * 53;
                    iZzc = objZzf2.hashCode();
                    i3 = i2 + iZzc;
                    break;
            }
        }
        int iHashCode2 = (i3 * 53) + this.zzm.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x008b. Please report as an issue. */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzan zzanVar) throws zzci {
        Unsafe unsafe;
        int i4;
        zzdi zzdiVar;
        Object obj2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        zzbn zzbnVar;
        int i13;
        int i14;
        byte[] bArr2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        byte[] bArr3;
        long j;
        long j2;
        int iZzb;
        int i22;
        int i23;
        zzdi zzdiVar2 = this;
        Object obj3 = obj;
        byte[] bArr4 = bArr;
        int i24 = i2;
        int i25 = i3;
        zzan zzanVar2 = zzanVar;
        zzG(obj);
        Unsafe unsafe2 = zzb;
        int i26 = -1;
        int iZzi = i;
        int i27 = -1;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 1048575;
        while (true) {
            if (iZzi < i24) {
                int i32 = iZzi + 1;
                byte b = bArr4[iZzi];
                if (b < 0) {
                    int iZzk = zzao.zzk(b, bArr4, i32, zzanVar2);
                    i5 = zzanVar2.zza;
                    i32 = iZzk;
                } else {
                    i5 = b;
                }
                int i33 = i5 >>> 3;
                int iZzu = i33 > i27 ? zzdiVar2.zzu(i33, i28 / 3) : zzdiVar2.zzt(i33);
                if (iZzu == i26) {
                    i6 = i33;
                    i7 = i32;
                    i8 = i5;
                    i9 = i30;
                    unsafe = unsafe2;
                    i10 = i25;
                    i11 = 0;
                } else {
                    int i34 = i5 & 7;
                    int[] iArr = zzdiVar2.zzc;
                    int i35 = iArr[iZzu + 1];
                    int iZzx = zzx(i35);
                    int i36 = i5;
                    long j3 = i35 & 1048575;
                    if (iZzx <= 17) {
                        int i37 = iArr[iZzu + 2];
                        int i38 = 1 << (i37 >>> 20);
                        int i39 = i37 & 1048575;
                        if (i39 != i31) {
                            if (i31 != 1048575) {
                                unsafe2.putInt(obj3, i31, i30);
                            }
                            i14 = i39;
                            i13 = unsafe2.getInt(obj3, i39);
                        } else {
                            i13 = i30;
                            i14 = i31;
                        }
                        switch (iZzx) {
                            case 0:
                                bArr2 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i18 = i32;
                                i19 = i38;
                                i20 = i36;
                                if (i34 != 1) {
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    zzeq.zzo(obj3, j3, Double.longBitsToDouble(zzao.zzp(bArr2, i18)));
                                    iZzi = i18 + 8;
                                    i30 = i13 | i19;
                                    i24 = i2;
                                    bArr4 = bArr2;
                                    i28 = i16;
                                    i27 = i15;
                                    i29 = i20;
                                    i26 = -1;
                                    i31 = i17;
                                    i25 = i3;
                                }
                            case 1:
                                bArr2 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i18 = i32;
                                i19 = i38;
                                i20 = i36;
                                if (i34 != 5) {
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    zzeq.zzp(obj3, j3, Float.intBitsToFloat(zzao.zzb(bArr2, i18)));
                                    iZzi = i18 + 4;
                                    i30 = i13 | i19;
                                    i24 = i2;
                                    bArr4 = bArr2;
                                    i28 = i16;
                                    i27 = i15;
                                    i29 = i20;
                                    i26 = -1;
                                    i31 = i17;
                                    i25 = i3;
                                }
                            case 2:
                            case 3:
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i18 = i32;
                                i20 = i36;
                                if (i34 != 0) {
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    int iZzm = zzao.zzm(bArr, i18, zzanVar2);
                                    unsafe2.putLong(obj, j3, zzanVar2.zzb);
                                    i30 = i13 | i38;
                                    bArr4 = bArr;
                                    i28 = i16;
                                    iZzi = iZzm;
                                    i27 = i15;
                                    i29 = i20;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 4:
                            case 11:
                                bArr2 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i18 = i32;
                                i19 = i38;
                                i20 = i36;
                                if (i34 != 0) {
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    iZzi = zzao.zzj(bArr2, i18, zzanVar2);
                                    unsafe2.putInt(obj3, j3, zzanVar2.zza);
                                    i30 = i13 | i19;
                                    i24 = i2;
                                    bArr4 = bArr2;
                                    i28 = i16;
                                    i27 = i15;
                                    i29 = i20;
                                    i26 = -1;
                                    i31 = i17;
                                    i25 = i3;
                                }
                            case 5:
                            case 14:
                                bArr2 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                i19 = i38;
                                if (i34 != 1) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    i20 = i21;
                                    i18 = i32;
                                    unsafe2.putLong(obj, j3, zzao.zzp(bArr2, i32));
                                    iZzi = i18 + 8;
                                    i30 = i13 | i19;
                                    i24 = i2;
                                    bArr4 = bArr2;
                                    i28 = i16;
                                    i27 = i15;
                                    i29 = i20;
                                    i26 = -1;
                                    i31 = i17;
                                    i25 = i3;
                                }
                            case 6:
                            case 13:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                if (i34 != 5) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    unsafe2.putInt(obj3, j3, zzao.zzb(bArr3, i32));
                                    iZzi = i32 + 4;
                                    i30 = i13 | i38;
                                    bArr4 = bArr3;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 7:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                if (i34 != 0) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    iZzi = zzao.zzm(bArr3, i32, zzanVar2);
                                    zzeq.zzm(obj3, j3, zzanVar2.zzb != 0);
                                    i30 = i13 | i38;
                                    bArr4 = bArr3;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 8:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                j = j3;
                                if (i34 != 2) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    iZzi = (536870912 & i35) == 0 ? zzao.zzg(bArr3, i32, zzanVar2) : zzao.zzh(bArr3, i32, zzanVar2);
                                    unsafe2.putObject(obj3, j, zzanVar2.zzc);
                                    i30 = i13 | i38;
                                    bArr4 = bArr3;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 9:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                if (i34 != 2) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    Object objZzD = zzdiVar2.zzD(obj3, i16);
                                    iZzi = zzao.zzo(objZzD, zzdiVar2.zzB(i16), bArr, i32, i2, zzanVar);
                                    zzdiVar2.zzL(obj3, i16, objZzD);
                                    i30 = i13 | i38;
                                    bArr4 = bArr3;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 10:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                j = j3;
                                if (i34 != 2) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    iZzi = zzao.zza(bArr3, i32, zzanVar2);
                                    unsafe2.putObject(obj3, j, zzanVar2.zzc);
                                    i30 = i13 | i38;
                                    bArr4 = bArr3;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 12:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                j2 = j3;
                                if (i34 != 0) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    iZzi = zzao.zzj(bArr3, i32, zzanVar2);
                                    iZzb = zzanVar2.zza;
                                    zzce zzceVarZzA = zzdiVar2.zzA(i16);
                                    if (zzceVarZzA == null || zzceVarZzA.zza(iZzb)) {
                                        unsafe2.putInt(obj3, j2, iZzb);
                                        i30 = i13 | i38;
                                        bArr4 = bArr3;
                                        i28 = i16;
                                        i29 = i21;
                                        i27 = i15;
                                        i26 = -1;
                                        i31 = i17;
                                        i24 = i2;
                                        i25 = i3;
                                    } else {
                                        zzd(obj).zzj(i21, Long.valueOf(iZzb));
                                        i28 = i16;
                                        i30 = i13;
                                        i29 = i21;
                                        i27 = i15;
                                        i26 = -1;
                                        i24 = i2;
                                        i25 = i3;
                                        bArr4 = bArr3;
                                        i31 = i17;
                                    }
                                }
                                break;
                            case 15:
                                bArr3 = bArr;
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                j2 = j3;
                                if (i34 != 0) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    iZzi = zzao.zzj(bArr3, i32, zzanVar2);
                                    iZzb = zzbe.zzb(zzanVar2.zza);
                                    unsafe2.putInt(obj3, j2, iZzb);
                                    i30 = i13 | i38;
                                    bArr4 = bArr3;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            case 16:
                                i15 = i33;
                                i16 = iZzu;
                                i17 = i14;
                                i21 = i36;
                                if (i34 != 0) {
                                    i20 = i21;
                                    i18 = i32;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    int iZzm2 = zzao.zzm(bArr, i32, zzanVar2);
                                    unsafe2.putLong(obj, j3, zzbe.zzc(zzanVar2.zzb));
                                    i30 = i13 | i38;
                                    bArr4 = bArr;
                                    iZzi = iZzm2;
                                    i28 = i16;
                                    i29 = i21;
                                    i27 = i15;
                                    i26 = -1;
                                    i31 = i17;
                                    i24 = i2;
                                    i25 = i3;
                                }
                            default:
                                if (i34 != 3) {
                                    i15 = i33;
                                    i16 = iZzu;
                                    i17 = i14;
                                    i18 = i32;
                                    i20 = i36;
                                    i31 = i17;
                                    i10 = i3;
                                    unsafe = unsafe2;
                                    i11 = i16;
                                    i9 = i13;
                                    i7 = i18;
                                    i6 = i15;
                                    i8 = i20;
                                    break;
                                } else {
                                    Object objZzD2 = zzdiVar2.zzD(obj3, iZzu);
                                    iZzi = zzao.zzn(objZzD2, zzdiVar2.zzB(iZzu), bArr, i32, i2, (i33 << 3) | 4, zzanVar);
                                    zzdiVar2.zzL(obj3, iZzu, objZzD2);
                                    i30 = i13 | i38;
                                    bArr4 = bArr;
                                    i31 = i14;
                                    i28 = iZzu;
                                    i29 = i36;
                                    i27 = i33;
                                    i26 = -1;
                                    i24 = i2;
                                    i25 = i3;
                                }
                        }
                    } else {
                        int i40 = i32;
                        if (iZzx != 27) {
                            i9 = i30;
                            i22 = i31;
                            if (iZzx <= 49) {
                                unsafe = unsafe2;
                                i11 = iZzu;
                                i6 = i33;
                                iZzi = zzs(obj, bArr, i40, i2, i36, i33, i34, iZzu, i35, iZzx, j3, zzanVar);
                                if (iZzi != i40) {
                                    zzdiVar2 = this;
                                    obj3 = obj;
                                    bArr4 = bArr;
                                    i24 = i2;
                                    i25 = i3;
                                    zzanVar2 = zzanVar;
                                    i30 = i9;
                                    i29 = i36;
                                    i31 = i22;
                                    i28 = i11;
                                    i27 = i6;
                                    unsafe2 = unsafe;
                                    i26 = -1;
                                } else {
                                    i7 = iZzi;
                                    i8 = i36;
                                    i31 = i22;
                                    i10 = i3;
                                }
                            } else {
                                unsafe = unsafe2;
                                i11 = iZzu;
                                i6 = i33;
                                i23 = i40;
                                if (iZzx != 50) {
                                    iZzi = zzr(obj, bArr, i23, i2, i36, i6, i34, i35, iZzx, j3, i11, zzanVar);
                                    if (iZzi != i23) {
                                        zzdiVar2 = this;
                                        obj3 = obj;
                                        bArr4 = bArr;
                                        i24 = i2;
                                        i25 = i3;
                                        zzanVar2 = zzanVar;
                                        i30 = i9;
                                        i29 = i36;
                                        i31 = i22;
                                        i28 = i11;
                                        i27 = i6;
                                        unsafe2 = unsafe;
                                        i26 = -1;
                                    } else {
                                        i7 = iZzi;
                                        i8 = i36;
                                        i31 = i22;
                                        i10 = i3;
                                    }
                                } else if (i34 == 2) {
                                    iZzi = zzq(obj, bArr, i23, i2, i11, j3, zzanVar);
                                    if (iZzi != i23) {
                                        zzdiVar2 = this;
                                        obj3 = obj;
                                        bArr4 = bArr;
                                        i24 = i2;
                                        i25 = i3;
                                        zzanVar2 = zzanVar;
                                        i30 = i9;
                                        i29 = i36;
                                        i31 = i22;
                                        i28 = i11;
                                        i27 = i6;
                                        unsafe2 = unsafe;
                                        i26 = -1;
                                    } else {
                                        i7 = iZzi;
                                        i8 = i36;
                                        i31 = i22;
                                        i10 = i3;
                                    }
                                }
                            }
                        } else if (i34 == 2) {
                            zzcf zzcfVarZzd = (zzcf) unsafe2.getObject(obj3, j3);
                            if (!zzcfVarZzd.zzc()) {
                                int size = zzcfVarZzd.size();
                                zzcfVarZzd = zzcfVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj3, j3, zzcfVarZzd);
                            }
                            iZzi = zzao.zze(zzdiVar2.zzB(iZzu), i36, bArr, i40, i2, zzcfVarZzd, zzanVar);
                            i24 = i2;
                            i28 = iZzu;
                            i27 = i33;
                            i30 = i30;
                            i29 = i36;
                            i31 = i31;
                            i26 = -1;
                            bArr4 = bArr;
                            i25 = i3;
                        } else {
                            i9 = i30;
                            i22 = i31;
                            unsafe = unsafe2;
                            i11 = iZzu;
                            i6 = i33;
                            i23 = i40;
                        }
                        i10 = i3;
                        i7 = i23;
                        i8 = i36;
                        i31 = i22;
                    }
                }
                if (i8 != i10 || i10 == 0) {
                    int i41 = i10;
                    if (!this.zzh || (zzbnVar = zzanVar.zzd) == zzbn.zza) {
                        i12 = i6;
                        iZzi = zzao.zzi(i8, bArr, i7, i2, zzd(obj), zzanVar);
                    } else {
                        i12 = i6;
                        zzbnVar.zzb(this.zzg, i12);
                        iZzi = zzao.zzi(i8, bArr, i7, i2, zzd(obj), zzanVar);
                    }
                    obj3 = obj;
                    bArr4 = bArr;
                    i24 = i2;
                    i29 = i8;
                    zzdiVar2 = this;
                    i27 = i12;
                    i30 = i9;
                    i28 = i11;
                    i26 = -1;
                    i25 = i41;
                    zzanVar2 = zzanVar;
                    unsafe2 = unsafe;
                } else {
                    zzdiVar = this;
                    i4 = i10;
                    iZzi = i7;
                    i29 = i8;
                    i30 = i9;
                }
            } else {
                unsafe = unsafe2;
                i4 = i25;
                zzdiVar = zzdiVar2;
            }
        }
        if (i31 != 1048575) {
            obj2 = obj;
            unsafe.putInt(obj2, i31, i30);
        } else {
            obj2 = obj;
        }
        for (int i42 = zzdiVar.zzj; i42 < zzdiVar.zzk; i42++) {
            int i43 = zzdiVar.zzi[i42];
            int i44 = zzdiVar.zzc[i43];
            Object objZzf = zzeq.zzf(obj2, zzdiVar.zzy(i43) & 1048575);
            if (objZzf != null && zzdiVar.zzA(i43) != null) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzdiVar.zzC(i43));
                throw null;
            }
        }
        if (i4 == 0) {
            if (iZzi != i2) {
                throw zzci.zze();
            }
        } else if (iZzi > i2 || i29 != i4) {
            throw zzci.zze();
        }
        return iZzi;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final Object zze() {
        return ((zzcb) this.zzg).zzi();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzf(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = zzS(r8)
            if (r0 != 0) goto L7
            return
        L7:
            boolean r0 = r8 instanceof com.google.android.gms.internal.play_billing.zzcb
            r1 = 0
            if (r0 == 0) goto L1a
            r0 = r8
            com.google.android.gms.internal.play_billing.zzcb r0 = (com.google.android.gms.internal.play_billing.zzcb) r0
            r2 = 2147483647(0x7fffffff, float:NaN)
            r0.zzq(r2)
            r0.zza = r1
            r0.zzo()
        L1a:
            int[] r0 = r7.zzc
            int r0 = r0.length
        L1d:
            if (r1 >= r0) goto L76
            int r2 = r7.zzy(r1)
            r3 = 1048575(0xfffff, float:1.469367E-39)
            r3 = r3 & r2
            int r2 = zzx(r2)
            long r3 = (long) r3
            r5 = 9
            if (r2 == r5) goto L6c
            r5 = 60
            if (r2 == r5) goto L54
            r5 = 68
            if (r2 == r5) goto L54
            switch(r2) {
                case 17: goto L6c;
                case 18: goto L4e;
                case 19: goto L4e;
                case 20: goto L4e;
                case 21: goto L4e;
                case 22: goto L4e;
                case 23: goto L4e;
                case 24: goto L4e;
                case 25: goto L4e;
                case 26: goto L4e;
                case 27: goto L4e;
                case 28: goto L4e;
                case 29: goto L4e;
                case 30: goto L4e;
                case 31: goto L4e;
                case 32: goto L4e;
                case 33: goto L4e;
                case 34: goto L4e;
                case 35: goto L4e;
                case 36: goto L4e;
                case 37: goto L4e;
                case 38: goto L4e;
                case 39: goto L4e;
                case 40: goto L4e;
                case 41: goto L4e;
                case 42: goto L4e;
                case 43: goto L4e;
                case 44: goto L4e;
                case 45: goto L4e;
                case 46: goto L4e;
                case 47: goto L4e;
                case 48: goto L4e;
                case 49: goto L4e;
                case 50: goto L3c;
                default: goto L3b;
            }
        L3b:
            goto L73
        L3c:
            sun.misc.Unsafe r2 = com.google.android.gms.internal.play_billing.zzdi.zzb
            java.lang.Object r5 = r2.getObject(r8, r3)
            if (r5 == 0) goto L73
            r6 = r5
            com.google.android.gms.internal.play_billing.zzcz r6 = (com.google.android.gms.internal.play_billing.zzcz) r6
            r6.zzc()
            r2.putObject(r8, r3, r5)
            goto L73
        L4e:
            com.google.android.gms.internal.play_billing.zzct r2 = r7.zzl
            r2.zza(r8, r3)
            goto L73
        L54:
            int[] r2 = r7.zzc
            r2 = r2[r1]
            boolean r2 = r7.zzT(r8, r2, r1)
            if (r2 == 0) goto L73
        L5e:
            com.google.android.gms.internal.play_billing.zzdp r2 = r7.zzB(r1)
            sun.misc.Unsafe r5 = com.google.android.gms.internal.play_billing.zzdi.zzb
            java.lang.Object r3 = r5.getObject(r8, r3)
            r2.zzf(r3)
            goto L73
        L6c:
            boolean r2 = r7.zzP(r8, r1)
            if (r2 == 0) goto L73
            goto L5e
        L73:
            int r1 = r1 + 3
            goto L1d
        L76:
            com.google.android.gms.internal.play_billing.zzeg r0 = r7.zzm
            r0.zzg(r8)
            boolean r0 = r7.zzh
            if (r0 == 0) goto L84
            com.google.android.gms.internal.play_billing.zzbo r0 = r7.zzn
            r0.zzb(r8)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzdi.zzf(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzg(Object obj, Object obj2) {
        zzG(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzy = zzy(i);
            int i2 = this.zzc[i];
            long j = 1048575 & iZzy;
            switch (zzx(iZzy)) {
                case 0:
                    if (zzP(obj2, i)) {
                        zzeq.zzo(obj, j, zzeq.zza(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzP(obj2, i)) {
                        zzeq.zzp(obj, j, zzeq.zzb(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                    zzJ(obj, i);
                    break;
                case 3:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                    zzJ(obj, i);
                    break;
                case 4:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                    zzJ(obj, i);
                    break;
                case 5:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                    zzJ(obj, i);
                    break;
                case 6:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                    zzJ(obj, i);
                    break;
                case 7:
                    if (zzP(obj2, i)) {
                        zzeq.zzm(obj, j, zzeq.zzw(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                    zzJ(obj, i);
                    break;
                case 9:
                case 17:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                    zzJ(obj, i);
                    break;
                case 11:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                    zzJ(obj, i);
                    break;
                case 12:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                    zzJ(obj, i);
                    break;
                case 13:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                    zzJ(obj, i);
                    break;
                case 14:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                    zzJ(obj, i);
                    break;
                case 15:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzq(obj, j, zzeq.zzc(obj2, j));
                    zzJ(obj, i);
                    break;
                case 16:
                    if (!zzP(obj2, i)) {
                        break;
                    }
                    zzeq.zzr(obj, j, zzeq.zzd(obj2, j));
                    zzJ(obj, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    this.zzl.zzb(obj, obj2, j);
                    break;
                case 50:
                    int i3 = zzdr.$r8$clinit;
                    zzeq.zzs(obj, j, zzda.zzb(zzeq.zzf(obj, j), zzeq.zzf(obj2, j)));
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzT(obj2, i2, i)) {
                        zzeq.zzs(obj, j, zzeq.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    zzI(obj, obj2, i);
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case 64:
                case 65:
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzT(obj2, i2, i)) {
                        break;
                    }
                    break;
            }
        }
        zzdr.zzB(this.zzm, obj, obj2);
        if (this.zzh) {
            this.zzn.zza(obj2);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x02f5, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02f8, code lost:
    
        r6 = r32;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0318, code lost:
    
        if (r0 != r15) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x00a3. Please report as an issue. */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzan zzanVar) throws zzci {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Unsafe unsafe;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        long j;
        int iZzb;
        int i13;
        int i14;
        zzdi zzdiVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i15 = i2;
        zzan zzanVar2 = zzanVar;
        zzew zzewVar = zzew.zza;
        int i16 = -1;
        if (zzdiVar.zzo - 1 == 0) {
            zzc(obj, bArr, i, i2, 0, zzanVar);
            return;
        }
        zzG(obj);
        Unsafe unsafe2 = zzb;
        int i17 = 1048575;
        int iZzi = i;
        int i18 = -1;
        int i19 = 0;
        int i20 = 0;
        int i21 = 1048575;
        while (iZzi < i15) {
            int i22 = iZzi + 1;
            byte b = bArr2[iZzi];
            if (b < 0) {
                int iZzk = zzao.zzk(b, bArr2, i22, zzanVar2);
                i3 = zzanVar2.zza;
                i22 = iZzk;
            } else {
                i3 = b;
            }
            int i23 = i3 >>> 3;
            int iZzu = i23 > i18 ? zzdiVar.zzu(i23, i19 / 3) : zzdiVar.zzt(i23);
            if (iZzu == i16) {
                i4 = i23;
                i5 = i22;
                i6 = i20;
                i7 = i21;
                unsafe = unsafe2;
                i8 = 0;
            } else {
                int i24 = i3 & 7;
                int[] iArr = zzdiVar.zzc;
                int i25 = iArr[iZzu + 1];
                int iZzx = zzx(i25);
                Unsafe unsafe3 = unsafe2;
                long j2 = i25 & i17;
                if (iZzx <= 17) {
                    int i26 = iArr[iZzu + 2];
                    int i27 = 1 << (i26 >>> 20);
                    int i28 = i26 & 1048575;
                    if (i28 != i21) {
                        if (i21 != 1048575) {
                            unsafe2 = unsafe3;
                            unsafe2.putInt(obj2, i21, i20);
                        } else {
                            unsafe2 = unsafe3;
                        }
                        if (i28 != 1048575) {
                            i20 = unsafe2.getInt(obj2, i28);
                        }
                        i9 = i28;
                        i6 = i20;
                    } else {
                        unsafe2 = unsafe3;
                        i6 = i20;
                        i9 = i21;
                    }
                    switch (iZzx) {
                        case 0:
                            i4 = i23;
                            i10 = iZzu;
                            i11 = i22;
                            if (i24 == 1) {
                                zzeq.zzo(obj2, j2, Double.longBitsToDouble(zzao.zzp(bArr2, i11)));
                                iZzi = i11 + 8;
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 1:
                            i4 = i23;
                            i10 = iZzu;
                            i11 = i22;
                            if (i24 == 5) {
                                zzeq.zzp(obj2, j2, Float.intBitsToFloat(zzao.zzb(bArr2, i11)));
                                iZzi = i11 + 4;
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 2:
                        case 3:
                            i4 = i23;
                            i10 = iZzu;
                            i11 = i22;
                            if (i24 == 0) {
                                int iZzm = zzao.zzm(bArr2, i11, zzanVar2);
                                unsafe2.putLong(obj, j2, zzanVar2.zzb);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                iZzi = iZzm;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 4:
                        case 11:
                            i4 = i23;
                            i10 = iZzu;
                            i11 = i22;
                            if (i24 == 0) {
                                iZzi = zzao.zzj(bArr2, i11, zzanVar2);
                                unsafe2.putInt(obj2, j2, zzanVar2.zza);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 5:
                        case 14:
                            i4 = i23;
                            i10 = iZzu;
                            if (i24 == 1) {
                                i11 = i22;
                                unsafe2.putLong(obj, j2, zzao.zzp(bArr2, i22));
                                iZzi = i11 + 8;
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 6:
                        case 13:
                            i4 = i23;
                            i10 = iZzu;
                            if (i24 == 5) {
                                unsafe2.putInt(obj2, j2, zzao.zzb(bArr2, i22));
                                iZzi = i22 + 4;
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 7:
                            i4 = i23;
                            i10 = iZzu;
                            if (i24 == 0) {
                                iZzi = zzao.zzm(bArr2, i22, zzanVar2);
                                zzeq.zzm(obj2, j2, zzanVar2.zzb != 0);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 8:
                            i4 = i23;
                            i10 = iZzu;
                            if (i24 == 2) {
                                iZzi = (536870912 & i25) == 0 ? zzao.zzg(bArr2, i22, zzanVar2) : zzao.zzh(bArr2, i22, zzanVar2);
                                unsafe2.putObject(obj2, j2, zzanVar2.zzc);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i10;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 9:
                            i4 = i23;
                            i12 = iZzu;
                            if (i24 == 2) {
                                Object objZzD = zzdiVar.zzD(obj2, i12);
                                iZzi = zzao.zzo(objZzD, zzdiVar.zzB(i12), bArr, i22, i2, zzanVar);
                                zzdiVar.zzL(obj2, i12, objZzD);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i12;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i10 = i12;
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 10:
                            i4 = i23;
                            i12 = iZzu;
                            if (i24 == 2) {
                                int iZza = zzao.zza(bArr2, i22, zzanVar2);
                                unsafe2.putObject(obj2, j2, zzanVar2.zzc);
                                i20 = i6 | i27;
                                i15 = i2;
                                iZzi = iZza;
                                i19 = i12;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i10 = i12;
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 12:
                            i4 = i23;
                            i12 = iZzu;
                            j = j2;
                            if (i24 == 0) {
                                iZzi = zzao.zzj(bArr2, i22, zzanVar2);
                                iZzb = zzanVar2.zza;
                                unsafe2.putInt(obj2, j, iZzb);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i12;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i10 = i12;
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 15:
                            i4 = i23;
                            i12 = iZzu;
                            if (i24 == 0) {
                                iZzi = zzao.zzj(bArr2, i22, zzanVar2);
                                iZzb = zzbe.zzb(zzanVar2.zza);
                                j = j2;
                                unsafe2.putInt(obj2, j, iZzb);
                                i20 = i6 | i27;
                                i15 = i2;
                                i19 = i12;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                            i10 = i12;
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                        case 16:
                            if (i24 == 0) {
                                int iZzm2 = zzao.zzm(bArr2, i22, zzanVar2);
                                i4 = i23;
                                i12 = iZzu;
                                unsafe2.putLong(obj, j2, zzbe.zzc(zzanVar2.zzb));
                                i20 = i6 | i27;
                                i15 = i2;
                                iZzi = iZzm2;
                                i19 = i12;
                                i21 = i9;
                                i18 = i4;
                                break;
                            }
                        default:
                            i4 = i23;
                            i10 = iZzu;
                            i11 = i22;
                            unsafe = unsafe2;
                            i5 = i11;
                            i7 = i9;
                            i8 = i10;
                            break;
                    }
                    i17 = 1048575;
                    i16 = -1;
                } else {
                    i4 = i23;
                    int i29 = i22;
                    unsafe2 = unsafe3;
                    if (iZzx != 27) {
                        i8 = iZzu;
                        int i30 = i21;
                        int i31 = i20;
                        if (iZzx <= 49) {
                            i13 = i31;
                            unsafe = unsafe2;
                            i7 = i30;
                            iZzi = zzs(obj, bArr, i29, i2, i3, i4, i24, i8, i25, iZzx, j2, zzanVar);
                            if (iZzi == i29) {
                                i6 = i13;
                                i5 = iZzi;
                            }
                            zzdiVar = this;
                            obj2 = obj;
                            bArr2 = bArr;
                            i20 = i13;
                            i15 = i2;
                            zzanVar2 = zzanVar;
                        } else {
                            i13 = i31;
                            i7 = i30;
                            unsafe = unsafe2;
                            i14 = i29;
                            if (iZzx != 50) {
                                iZzi = zzr(obj, bArr, i14, i2, i3, i4, i24, i25, iZzx, j2, i8, zzanVar);
                            } else if (i24 == 2) {
                                iZzi = zzq(obj, bArr, i14, i2, i8, j2, zzanVar);
                            }
                        }
                        i19 = i8;
                        i18 = i4;
                        unsafe2 = unsafe;
                        i21 = i7;
                        i17 = 1048575;
                        i16 = -1;
                    } else if (i24 == 2) {
                        zzcf zzcfVarZzd = (zzcf) unsafe2.getObject(obj2, j2);
                        if (!zzcfVarZzd.zzc()) {
                            int size = zzcfVarZzd.size();
                            zzcfVarZzd = zzcfVarZzd.zzd(size == 0 ? 10 : size + size);
                            unsafe2.putObject(obj2, j2, zzcfVarZzd);
                        }
                        iZzi = zzao.zze(zzdiVar.zzB(iZzu), i3, bArr, i29, i2, zzcfVarZzd, zzanVar);
                        bArr2 = bArr;
                        i15 = i2;
                        i20 = i20;
                        i21 = i21;
                        i19 = iZzu;
                        i18 = i4;
                        i17 = 1048575;
                        i16 = -1;
                        zzanVar2 = zzanVar;
                    } else {
                        i8 = iZzu;
                        i13 = i20;
                        i7 = i21;
                        unsafe = unsafe2;
                        i14 = i29;
                    }
                    i6 = i13;
                    i5 = i14;
                }
            }
            iZzi = zzao.zzi(i3, bArr, i5, i2, zzd(obj), zzanVar);
            zzdiVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i15 = i2;
            zzanVar2 = zzanVar;
            i20 = i6;
            i19 = i8;
            i18 = i4;
            unsafe2 = unsafe;
            i21 = i7;
            i17 = 1048575;
            i16 = -1;
        }
        int i32 = i20;
        int i33 = i21;
        Unsafe unsafe4 = unsafe2;
        if (i33 != 1048575) {
            unsafe4.putInt(obj, i33, i32);
        }
        if (iZzi != i2) {
            throw zzci.zze();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d8  */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzi(Object obj, zzey zzeyVar) {
        int i;
        double dZza;
        float fZzb;
        long jZzd;
        long jZzd2;
        int iZzc;
        long jZzd3;
        int iZzc2;
        boolean zZzw;
        int iZzc3;
        int iZzc4;
        int iZzc5;
        long jZzd4;
        int iZzc6;
        long jZzd5;
        zzew zzewVar = zzew.zza;
        int i2 = 1048575;
        if (this.zzo - 1 != 0) {
            if (this.zzh) {
                this.zzn.zza(obj);
                throw null;
            }
            int length = this.zzc.length;
            for (int i3 = 0; i3 < length; i3 += 3) {
                int iZzy = zzy(i3);
                int i4 = this.zzc[i3];
                switch (zzx(iZzy)) {
                    case 0:
                        if (zzP(obj, i3)) {
                            dZza = zzeq.zza(obj, iZzy & 1048575);
                            zzeyVar.zzf(i4, dZza);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzP(obj, i3)) {
                            fZzb = zzeq.zzb(obj, iZzy & 1048575);
                            zzeyVar.zzo(i4, fZzb);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzP(obj, i3)) {
                            jZzd = zzeq.zzd(obj, iZzy & 1048575);
                            zzeyVar.zzt(i4, jZzd);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzP(obj, i3)) {
                            jZzd2 = zzeq.zzd(obj, iZzy & 1048575);
                            zzeyVar.zzJ(i4, jZzd2);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzP(obj, i3)) {
                            iZzc = zzeq.zzc(obj, iZzy & 1048575);
                            zzeyVar.zzr(i4, iZzc);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzP(obj, i3)) {
                            jZzd3 = zzeq.zzd(obj, iZzy & 1048575);
                            zzeyVar.zzm(i4, jZzd3);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzP(obj, i3)) {
                            iZzc2 = zzeq.zzc(obj, iZzy & 1048575);
                            zzeyVar.zzk(i4, iZzc2);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzP(obj, i3)) {
                            zZzw = zzeq.zzw(obj, iZzy & 1048575);
                            zzeyVar.zzb(i4, zZzw);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzP(obj, i3)) {
                            zzV(i4, zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzv(i4, zzeq.zzf(obj, iZzy & 1048575), zzB(i3));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzd(i4, (zzba) zzeq.zzf(obj, iZzy & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzP(obj, i3)) {
                            iZzc3 = zzeq.zzc(obj, iZzy & 1048575);
                            zzeyVar.zzH(i4, iZzc3);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzP(obj, i3)) {
                            iZzc4 = zzeq.zzc(obj, iZzy & 1048575);
                            zzeyVar.zzi(i4, iZzc4);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzP(obj, i3)) {
                            iZzc5 = zzeq.zzc(obj, iZzy & 1048575);
                            zzeyVar.zzw(i4, iZzc5);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzP(obj, i3)) {
                            jZzd4 = zzeq.zzd(obj, iZzy & 1048575);
                            zzeyVar.zzy(i4, jZzd4);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzP(obj, i3)) {
                            iZzc6 = zzeq.zzc(obj, iZzy & 1048575);
                            zzeyVar.zzA(i4, iZzc6);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzP(obj, i3)) {
                            jZzd5 = zzeq.zzd(obj, iZzy & 1048575);
                            zzeyVar.zzC(i4, jZzd5);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzP(obj, i3)) {
                            zzeyVar.zzq(i4, zzeq.zzf(obj, iZzy & 1048575), zzB(i3));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzdr.zzF(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 19:
                        zzdr.zzJ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 20:
                        zzdr.zzM(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 21:
                        zzdr.zzU(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 22:
                        zzdr.zzL(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 23:
                        zzdr.zzI(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 24:
                        zzdr.zzH(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 25:
                        zzdr.zzD(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 26:
                        zzdr.zzS(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                        break;
                    case 27:
                        zzdr.zzN(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, zzB(i3));
                        break;
                    case 28:
                        zzdr.zzE(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar);
                        break;
                    case 29:
                        zzdr.zzT(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 30:
                        zzdr.zzG(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 31:
                        zzdr.zzO(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case 32:
                        zzdr.zzP(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzdr.zzQ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzdr.zzR(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, false);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzdr.zzF(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzdr.zzJ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzdr.zzM(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzdr.zzU(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzdr.zzL(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzdr.zzI(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzdr.zzH(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzdr.zzD(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzdr.zzT(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzdr.zzG(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzdr.zzO(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzdr.zzP(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzdr.zzQ(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzdr.zzR(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzdr.zzK(i4, (List) zzeq.zzf(obj, iZzy & 1048575), zzeyVar, zzB(i3));
                        break;
                    case 50:
                        zzN(zzeyVar, i4, zzeq.zzf(obj, iZzy & 1048575), i3);
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zzT(obj, i4, i3)) {
                            dZza = zzm(obj, iZzy & 1048575);
                            zzeyVar.zzf(i4, dZza);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zzT(obj, i4, i3)) {
                            fZzb = zzn(obj, iZzy & 1048575);
                            zzeyVar.zzo(i4, fZzb);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zzT(obj, i4, i3)) {
                            jZzd = zzz(obj, iZzy & 1048575);
                            zzeyVar.zzt(i4, jZzd);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zzT(obj, i4, i3)) {
                            jZzd2 = zzz(obj, iZzy & 1048575);
                            zzeyVar.zzJ(i4, jZzd2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zzT(obj, i4, i3)) {
                            iZzc = zzp(obj, iZzy & 1048575);
                            zzeyVar.zzr(i4, iZzc);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zzT(obj, i4, i3)) {
                            jZzd3 = zzz(obj, iZzy & 1048575);
                            zzeyVar.zzm(i4, jZzd3);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zzT(obj, i4, i3)) {
                            iZzc2 = zzp(obj, iZzy & 1048575);
                            zzeyVar.zzk(i4, iZzc2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zzT(obj, i4, i3)) {
                            zZzw = zzU(obj, iZzy & 1048575);
                            zzeyVar.zzb(i4, zZzw);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (!zzT(obj, i4, i3)) {
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        if (!zzT(obj, i4, i3)) {
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        if (!zzT(obj, i4, i3)) {
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zzT(obj, i4, i3)) {
                            iZzc3 = zzp(obj, iZzy & 1048575);
                            zzeyVar.zzH(i4, iZzc3);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zzT(obj, i4, i3)) {
                            iZzc4 = zzp(obj, iZzy & 1048575);
                            zzeyVar.zzi(i4, iZzc4);
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzT(obj, i4, i3)) {
                            iZzc5 = zzp(obj, iZzy & 1048575);
                            zzeyVar.zzw(i4, iZzc5);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzT(obj, i4, i3)) {
                            jZzd4 = zzz(obj, iZzy & 1048575);
                            zzeyVar.zzy(i4, jZzd4);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zzT(obj, i4, i3)) {
                            iZzc6 = zzp(obj, iZzy & 1048575);
                            zzeyVar.zzA(i4, iZzc6);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zzT(obj, i4, i3)) {
                            jZzd5 = zzz(obj, iZzy & 1048575);
                            zzeyVar.zzC(i4, jZzd5);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        if (!zzT(obj, i4, i3)) {
                            break;
                        }
                        break;
                }
            }
        } else {
            if (this.zzh) {
                this.zzn.zza(obj);
                throw null;
            }
            int length2 = this.zzc.length;
            Unsafe unsafe = zzb;
            int i5 = 0;
            int i6 = 1048575;
            int i7 = 0;
            while (i5 < length2) {
                int iZzy2 = zzy(i5);
                int[] iArr = this.zzc;
                int i8 = iArr[i5];
                int iZzx = zzx(iZzy2);
                if (iZzx <= 17) {
                    int i9 = iArr[i5 + 2];
                    int i10 = i9 & i2;
                    if (i10 != i6) {
                        i7 = unsafe.getInt(obj, i10);
                        i6 = i10;
                    }
                    i = 1 << (i9 >>> 20);
                } else {
                    i = 0;
                }
                long j = iZzy2 & i2;
                switch (iZzx) {
                    case 0:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzf(i8, zzeq.zza(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 1:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzo(i8, zzeq.zzb(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 2:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzt(i8, unsafe.getLong(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 3:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzJ(i8, unsafe.getLong(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 4:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzr(i8, unsafe.getInt(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 5:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzm(i8, unsafe.getLong(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 6:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzk(i8, unsafe.getInt(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 7:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzb(i8, zzeq.zzw(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 8:
                        if ((i7 & i) != 0) {
                            zzV(i8, unsafe.getObject(obj, j), zzeyVar);
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 9:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzv(i8, unsafe.getObject(obj, j), zzB(i5));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 10:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzd(i8, (zzba) unsafe.getObject(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 11:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzH(i8, unsafe.getInt(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 12:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzi(i8, unsafe.getInt(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 13:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzw(i8, unsafe.getInt(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 14:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzy(i8, unsafe.getLong(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 15:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzA(i8, unsafe.getInt(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 16:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzC(i8, unsafe.getLong(obj, j));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 17:
                        if ((i7 & i) != 0) {
                            zzeyVar.zzq(i8, unsafe.getObject(obj, j), zzB(i5));
                        }
                        i5 += 3;
                        i2 = 1048575;
                    case 18:
                        zzdr.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 19:
                        zzdr.zzJ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 20:
                        zzdr.zzM(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 21:
                        zzdr.zzU(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 22:
                        zzdr.zzL(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 23:
                        zzdr.zzI(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 24:
                        zzdr.zzH(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 25:
                        zzdr.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        i5 += 3;
                        i2 = 1048575;
                    case 26:
                        zzdr.zzS(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar);
                        break;
                    case 27:
                        zzdr.zzN(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, zzB(i5));
                        break;
                    case 28:
                        zzdr.zzE(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar);
                        break;
                    case 29:
                        zzdr.zzT(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        break;
                    case 30:
                        zzdr.zzG(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        break;
                    case 31:
                        zzdr.zzO(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        break;
                    case 32:
                        zzdr.zzP(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzdr.zzQ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzdr.zzR(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, false);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzdr.zzF(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzdr.zzJ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzdr.zzM(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzdr.zzU(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzdr.zzL(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzdr.zzI(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzdr.zzH(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzdr.zzD(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzdr.zzT(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzdr.zzG(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzdr.zzO(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzdr.zzP(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzdr.zzQ(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzdr.zzR(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzdr.zzK(this.zzc[i5], (List) unsafe.getObject(obj, j), zzeyVar, zzB(i5));
                        break;
                    case 50:
                        zzN(zzeyVar, i8, unsafe.getObject(obj, j), i5);
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzf(i8, zzm(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzo(i8, zzn(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzt(i8, zzz(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzJ(i8, zzz(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzr(i8, zzp(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzm(i8, zzz(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzk(i8, zzp(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzb(i8, zzU(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (zzT(obj, i8, i5)) {
                            zzV(i8, unsafe.getObject(obj, j), zzeyVar);
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzv(i8, unsafe.getObject(obj, j), zzB(i5));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzd(i8, (zzba) unsafe.getObject(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzH(i8, zzp(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzi(i8, zzp(obj, j));
                            break;
                        }
                        break;
                    case 64:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzw(i8, zzp(obj, j));
                            break;
                        }
                        break;
                    case 65:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzy(i8, zzz(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzA(i8, zzp(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzC(i8, zzz(obj, j));
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        if (zzT(obj, i8, i5)) {
                            zzeyVar.zzq(i8, unsafe.getObject(obj, j), zzB(i5));
                            break;
                        }
                        break;
                }
                i5 += 3;
                i2 = 1048575;
            }
        }
        zzeg zzegVar = this.zzm;
        zzegVar.zzi(zzegVar.zzd(obj), zzeyVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdp
    public final boolean zzj(Object obj, Object obj2) {
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzy = zzy(i);
            long j = iZzy & 1048575;
            switch (zzx(iZzy)) {
                case 0:
                    if (!zzO(obj, obj2, i) || Double.doubleToLongBits(zzeq.zza(obj, j)) != Double.doubleToLongBits(zzeq.zza(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 1:
                    if (!zzO(obj, obj2, i) || Float.floatToIntBits(zzeq.zzb(obj, j)) != Float.floatToIntBits(zzeq.zzb(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 2:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 3:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 4:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 5:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 6:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 7:
                    if (!zzO(obj, obj2, i) || zzeq.zzw(obj, j) != zzeq.zzw(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 8:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                case 9:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 10:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 11:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 12:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 13:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 14:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                case 15:
                    if (!zzO(obj, obj2, i) || zzeq.zzc(obj, j) != zzeq.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 16:
                    if (!zzO(obj, obj2, i) || zzeq.zzd(obj, j) != zzeq.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                case 17:
                    if (!zzO(obj, obj2, i) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                case 50:
                    if (!zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case 64:
                case 65:
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    long jZzv = zzv(i) & 1048575;
                    if (zzeq.zzc(obj, jZzv) != zzeq.zzc(obj2, jZzv) || !zzdr.zzV(zzeq.zzf(obj, j), zzeq.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        this.zzn.zza(obj2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1  */
    @Override // com.google.android.gms.internal.play_billing.zzdp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzk(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzj) {
            int i6 = this.zzi[i5];
            int i7 = this.zzc[i6];
            int iZzy = zzy(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & iZzy) != 0 && !zzQ(obj, i6, i, i2, i10)) {
                return false;
            }
            int iZzx = zzx(iZzy);
            if (iZzx == 9 || iZzx == 17) {
                if (zzQ(obj, i6, i, i2, i10) && !zzR(obj, iZzy, zzB(i6))) {
                    return false;
                }
            } else if (iZzx == 27) {
                List list = (List) zzeq.zzf(obj, iZzy & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzdp zzdpVarZzB = zzB(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzdpVarZzB.zzk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (iZzx == 60 || iZzx == 68) {
                if (zzT(obj, i7, i6) && !zzR(obj, iZzy, zzB(i6))) {
                    return false;
                }
            } else if (iZzx != 49) {
                if (iZzx == 50 && !((zzcz) zzeq.zzf(obj, iZzy & 1048575)).isEmpty()) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzC(i6));
                    throw null;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        throw null;
    }
}
