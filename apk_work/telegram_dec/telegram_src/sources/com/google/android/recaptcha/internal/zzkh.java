package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.CharacterCompat;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.R;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzkh<T> implements zzkr<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzlv.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzke zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzjs zzm;
    private final zzll zzn;
    private final zzif zzo;
    private final zzkk zzp;
    private final zzjz zzq;

    private zzkh(int[] iArr, Object[] objArr, int i, int i2, zzke zzkeVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzkk zzkkVar, zzjs zzjsVar, zzll zzllVar, zzif zzifVar, zzjz zzjzVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzkeVar instanceof zzit;
        boolean z2 = false;
        if (zzifVar != null && zzifVar.zzj(zzkeVar)) {
            z2 = true;
        }
        this.zzh = z2;
        this.zzj = iArr2;
        this.zzk = i4;
        this.zzl = i5;
        this.zzp = zzkkVar;
        this.zzm = zzjsVar;
        this.zzn = zzllVar;
        this.zzo = zzifVar;
        this.zzg = zzkeVar;
        this.zzq = zzjzVar;
    }

    private final Object zzA(Object obj, int i) {
        zzkr zzkrVarZzx = zzx(i);
        int iZzu = zzu(i) & 1048575;
        if (!zzN(obj, i)) {
            return zzkrVarZzx.zze();
        }
        Object object = zzb.getObject(obj, iZzu);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzkrVarZzx.zze();
        if (object != null) {
            zzkrVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzB(Object obj, int i, int i2) {
        zzkr zzkrVarZzx = zzx(i2);
        if (!zzR(obj, i, i2)) {
            return zzkrVarZzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i2) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object objZze = zzkrVarZzx.zze();
        if (object != null) {
            zzkrVarZzx.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzC(Class cls, String str) {
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

    private static void zzD(Object obj) {
        if (!zzQ(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzE(Object obj, Object obj2, int i) {
        if (zzN(obj2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzkr zzkrVarZzx = zzx(i);
            if (!zzN(obj, i)) {
                if (zzQ(object)) {
                    Object objZze = zzkrVarZzx.zze();
                    zzkrVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzH(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzkrVarZzx.zze();
                zzkrVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzkrVarZzx.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzR(obj2, i2, i)) {
            int iZzu = zzu(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzu;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzkr zzkrVarZzx = zzx(i);
            if (!zzR(obj, i2, i)) {
                if (zzQ(object)) {
                    Object objZze = zzkrVarZzx.zze();
                    zzkrVarZzx.zzg(objZze, object);
                    unsafe.putObject(obj, j, objZze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzI(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzQ(object2)) {
                Object objZze2 = zzkrVarZzx.zze();
                zzkrVarZzx.zzg(objZze2, object2);
                unsafe.putObject(obj, j, objZze2);
                object2 = objZze2;
            }
            zzkrVarZzx.zzg(object2, object);
        }
    }

    private final void zzG(Object obj, int i, zzkq zzkqVar) throws IOException {
        zzlv.zzs(obj, i & 1048575, zzM(i) ? zzkqVar.zzs() : this.zzi ? zzkqVar.zzr() : zzkqVar.zzp());
    }

    private final void zzH(Object obj, int i) {
        int iZzr = zzr(i);
        long j = 1048575 & iZzr;
        if (j == 1048575) {
            return;
        }
        zzlv.zzq(obj, j, (1 << (iZzr >>> 20)) | zzlv.zzc(obj, j));
    }

    private final void zzI(Object obj, int i, int i2) {
        zzlv.zzq(obj, zzr(i2) & 1048575, i);
    }

    private final void zzJ(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzu(i) & 1048575, obj2);
        zzH(obj, i);
    }

    private final void zzK(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzu(i2) & 1048575, obj2);
        zzI(obj, i, i2);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzN(obj, i) == zzN(obj2, i);
    }

    private static boolean zzM(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzN(Object obj, int i) {
        int iZzr = zzr(i);
        long j = iZzr & 1048575;
        if (j != 1048575) {
            return (zzlv.zzc(obj, j) & (1 << (iZzr >>> 20))) != 0;
        }
        int iZzu = zzu(i);
        long j2 = iZzu & 1048575;
        switch (zzt(iZzu)) {
            case 0:
                return Double.doubleToRawLongBits(zzlv.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzlv.zzb(obj, j2)) != 0;
            case 2:
                return zzlv.zzd(obj, j2) != 0;
            case 3:
                return zzlv.zzd(obj, j2) != 0;
            case 4:
                return zzlv.zzc(obj, j2) != 0;
            case 5:
                return zzlv.zzd(obj, j2) != 0;
            case 6:
                return zzlv.zzc(obj, j2) != 0;
            case 7:
                return zzlv.zzw(obj, j2);
            case 8:
                Object objZzf = zzlv.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzgw) {
                    return !zzgw.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzlv.zzf(obj, j2) != null;
            case 10:
                return !zzgw.zzb.equals(zzlv.zzf(obj, j2));
            case 11:
                return zzlv.zzc(obj, j2) != 0;
            case 12:
                return zzlv.zzc(obj, j2) != 0;
            case 13:
                return zzlv.zzc(obj, j2) != 0;
            case 14:
                return zzlv.zzd(obj, j2) != 0;
            case 15:
                return zzlv.zzc(obj, j2) != 0;
            case 16:
                return zzlv.zzd(obj, j2) != 0;
            case 17:
                return zzlv.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzO(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzN(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzP(Object obj, int i, zzkr zzkrVar) {
        return zzkrVar.zzl(zzlv.zzf(obj, i & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzit) {
            return ((zzit) obj).zzG();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i, int i2) {
        return zzlv.zzc(obj, (long) (zzr(i2) & 1048575)) == i;
    }

    private static boolean zzS(Object obj, long j) {
        return ((Boolean) zzlv.zzf(obj, j)).booleanValue();
    }

    private static final void zzT(int i, Object obj, zzmd zzmdVar) throws IOException {
        if (obj instanceof String) {
            zzmdVar.zzG(i, (String) obj);
        } else {
            zzmdVar.zzd(i, (zzgw) obj);
        }
    }

    static zzlm zzd(Object obj) {
        zzit zzitVar = (zzit) obj;
        zzlm zzlmVar = zzitVar.zzc;
        if (zzlmVar != zzlm.zzc()) {
            return zzlmVar;
        }
        zzlm zzlmVarZzf = zzlm.zzf();
        zzitVar.zzc = zzlmVarZzf;
        return zzlmVarZzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0283  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzkh zzm(Class cls, zzkb zzkbVar, zzkk zzkkVar, zzjs zzjsVar, zzll zzllVar, zzif zzifVar, zzjz zzjzVar) {
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
        zzkp zzkpVar;
        int iObjectFieldOffset;
        String str;
        int i19;
        int i20;
        int i21;
        int iObjectFieldOffset2;
        Field fieldZzC;
        char cCharAt9;
        int i22;
        int i23;
        int i24;
        int i25;
        Object obj;
        Field fieldZzC2;
        Object obj2;
        Field fieldZzC3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        if (!(zzkbVar instanceof zzkp)) {
            throw null;
        }
        zzkp zzkpVar2 = (zzkp) zzkbVar;
        String strZzd = zzkpVar2.zzd();
        int length = strZzd.length();
        char cCharAt14 = strZzd.charAt(0);
        char c = CharacterCompat.MIN_HIGH_SURROGATE;
        if (cCharAt14 >= 55296) {
            int i30 = 1;
            while (true) {
                i = i30 + 1;
                if (strZzd.charAt(i30) < 55296) {
                    break;
                }
                i30 = i;
            }
        } else {
            i = 1;
        }
        int i31 = i + 1;
        int iCharAt3 = strZzd.charAt(i);
        if (iCharAt3 >= 55296) {
            int i32 = iCharAt3 & 8191;
            int i33 = 13;
            while (true) {
                i29 = i31 + 1;
                cCharAt13 = strZzd.charAt(i31);
                if (cCharAt13 < 55296) {
                    break;
                }
                i32 |= (cCharAt13 & 8191) << i33;
                i33 += 13;
                i31 = i29;
            }
            iCharAt3 = i32 | (cCharAt13 << i33);
            i31 = i29;
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
            int i34 = i31 + 1;
            int iCharAt4 = strZzd.charAt(i31);
            if (iCharAt4 >= 55296) {
                int i35 = iCharAt4 & 8191;
                int i36 = 13;
                while (true) {
                    i14 = i34 + 1;
                    cCharAt8 = strZzd.charAt(i34);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i35 |= (cCharAt8 & 8191) << i36;
                    i36 += 13;
                    i34 = i14;
                }
                iCharAt4 = i35 | (cCharAt8 << i36);
                i34 = i14;
            }
            int i37 = i34 + 1;
            int iCharAt5 = strZzd.charAt(i34);
            if (iCharAt5 >= 55296) {
                int i38 = iCharAt5 & 8191;
                int i39 = 13;
                while (true) {
                    i13 = i37 + 1;
                    cCharAt7 = strZzd.charAt(i37);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt7 & 8191) << i39;
                    i39 += 13;
                    i37 = i13;
                }
                iCharAt5 = i38 | (cCharAt7 << i39);
                i37 = i13;
            }
            int i40 = i37 + 1;
            int iCharAt6 = strZzd.charAt(i37);
            if (iCharAt6 >= 55296) {
                int i41 = iCharAt6 & 8191;
                int i42 = 13;
                while (true) {
                    i12 = i40 + 1;
                    cCharAt6 = strZzd.charAt(i40);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt6 & 8191) << i42;
                    i42 += 13;
                    i40 = i12;
                }
                iCharAt6 = i41 | (cCharAt6 << i42);
                i40 = i12;
            }
            int i43 = i40 + 1;
            int iCharAt7 = strZzd.charAt(i40);
            if (iCharAt7 >= 55296) {
                int i44 = iCharAt7 & 8191;
                int i45 = 13;
                while (true) {
                    i11 = i43 + 1;
                    cCharAt5 = strZzd.charAt(i43);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt5 & 8191) << i45;
                    i45 += 13;
                    i43 = i11;
                }
                iCharAt7 = i44 | (cCharAt5 << i45);
                i43 = i11;
            }
            int i46 = i43 + 1;
            iCharAt = strZzd.charAt(i43);
            if (iCharAt >= 55296) {
                int i47 = iCharAt & 8191;
                int i48 = 13;
                while (true) {
                    i10 = i46 + 1;
                    cCharAt4 = strZzd.charAt(i46);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt4 & 8191) << i48;
                    i48 += 13;
                    i46 = i10;
                }
                iCharAt = i47 | (cCharAt4 << i48);
                i46 = i10;
            }
            int i49 = i46 + 1;
            iCharAt2 = strZzd.charAt(i46);
            if (iCharAt2 >= 55296) {
                int i50 = iCharAt2 & 8191;
                int i51 = 13;
                while (true) {
                    i9 = i49 + 1;
                    cCharAt3 = strZzd.charAt(i49);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt3 & 8191) << i51;
                    i51 += 13;
                    i49 = i9;
                }
                iCharAt2 = i50 | (cCharAt3 << i51);
                i49 = i9;
            }
            int i52 = i49 + 1;
            int iCharAt8 = strZzd.charAt(i49);
            if (iCharAt8 >= 55296) {
                int i53 = iCharAt8 & 8191;
                int i54 = 13;
                while (true) {
                    i8 = i52 + 1;
                    cCharAt2 = strZzd.charAt(i52);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt2 & 8191) << i54;
                    i54 += 13;
                    i52 = i8;
                }
                iCharAt8 = i53 | (cCharAt2 << i54);
                i52 = i8;
            }
            int i55 = i52 + 1;
            int iCharAt9 = strZzd.charAt(i52);
            if (iCharAt9 >= 55296) {
                int i56 = iCharAt9 & 8191;
                int i57 = 13;
                while (true) {
                    i7 = i55 + 1;
                    cCharAt = strZzd.charAt(i55);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i56 |= (cCharAt & 8191) << i57;
                    i57 += 13;
                    i55 = i7;
                }
                iCharAt9 = i56 | (cCharAt << i57);
                i55 = i7;
            }
            i2 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i3 = iCharAt6;
            i4 = iCharAt9;
            i5 = iCharAt4;
            i6 = iCharAt7;
            i31 = i55;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzkpVar2.zze();
        Class<?> cls2 = zzkpVar2.zza().getClass();
        int i58 = i4 + iCharAt2;
        int i59 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i59];
        int i60 = i4;
        int i61 = i58;
        int i62 = 0;
        int i63 = 0;
        while (i31 < length) {
            int i64 = i31 + 1;
            int iCharAt10 = strZzd.charAt(i31);
            if (iCharAt10 >= c) {
                int i65 = iCharAt10 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i28 = i66 + 1;
                    cCharAt12 = strZzd.charAt(i66);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i65 |= (cCharAt12 & 8191) << i67;
                    i67 += 13;
                    i66 = i28;
                }
                iCharAt10 = i65 | (cCharAt12 << i67);
                i15 = i28;
            } else {
                i15 = i64;
            }
            int i68 = i15 + 1;
            int iCharAt11 = strZzd.charAt(i15);
            if (iCharAt11 >= c) {
                int i69 = iCharAt11 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i27 = i70 + 1;
                    cCharAt11 = strZzd.charAt(i70);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i69 |= (cCharAt11 & 8191) << i71;
                    i71 += 13;
                    i70 = i27;
                }
                iCharAt11 = i69 | (cCharAt11 << i71);
                i16 = i27;
            } else {
                i16 = i68;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i62] = i63;
                i62++;
            }
            int i72 = iCharAt11 & 255;
            int i73 = iCharAt11 & 2048;
            int i74 = length;
            if (i72 >= 51) {
                int i75 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                char c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                if (iCharAt12 >= 55296) {
                    int i76 = 13;
                    int i77 = iCharAt12 & 8191;
                    int i78 = i75;
                    while (true) {
                        i26 = i78 + 1;
                        cCharAt10 = strZzd.charAt(i78);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i77 |= (cCharAt10 & 8191) << i76;
                        i76 += 13;
                        i78 = i26;
                        c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                    }
                    iCharAt12 = i77 | (cCharAt10 << i76);
                    i24 = i26;
                } else {
                    i24 = i75;
                }
                int i79 = i24;
                int i80 = i72 - 51;
                i18 = i6;
                if (i80 == 9 || i80 == 17) {
                    i25 = i2 + 1;
                    int i81 = i63 / 3;
                    objArr[i81 + i81 + 1] = objArrZze[i2];
                } else {
                    if (i80 == 12) {
                        if (zzkpVar2.zzc() == 1 || i73 != 0) {
                            i25 = i2 + 1;
                            int i82 = i63 / 3;
                            objArr[i82 + i82 + 1] = objArrZze[i2];
                        } else {
                            i73 = 0;
                        }
                    }
                    int i83 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i83];
                    if (obj instanceof Field) {
                        fieldZzC2 = zzC(cls2, (String) obj);
                        objArrZze[i83] = fieldZzC2;
                    } else {
                        fieldZzC2 = (Field) obj;
                    }
                    i17 = i3;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC2);
                    int i84 = i83 + 1;
                    obj2 = objArrZze[i84];
                    if (obj2 instanceof Field) {
                        fieldZzC3 = zzC(cls2, (String) obj2);
                        objArrZze[i84] = fieldZzC3;
                    } else {
                        fieldZzC3 = (Field) obj2;
                    }
                    zzkpVar = zzkpVar2;
                    str = strZzd;
                    i21 = i2;
                    i19 = i79;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC3);
                    i20 = 0;
                }
                i2 = i25;
                int i832 = iCharAt12 + iCharAt12;
                obj = objArrZze[i832];
                if (obj instanceof Field) {
                }
                i17 = i3;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzC2);
                int i842 = i832 + 1;
                obj2 = objArrZze[i842];
                if (obj2 instanceof Field) {
                }
                zzkpVar = zzkpVar2;
                str = strZzd;
                i21 = i2;
                i19 = i79;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC3);
                i20 = 0;
            } else {
                i17 = i3;
                i18 = i6;
                int i85 = i2 + 1;
                Field fieldZzC4 = zzC(cls2, (String) objArrZze[i2]);
                if (i72 == 9 || i72 == 17) {
                    zzkpVar = zzkpVar2;
                    int i86 = i63 / 3;
                    objArr[i86 + i86 + 1] = fieldZzC4.getType();
                } else {
                    if (i72 == 27) {
                        zzkpVar = zzkpVar2;
                        i22 = 1;
                        i23 = i2 + 2;
                    } else if (i72 == 49) {
                        i23 = i2 + 2;
                        zzkpVar = zzkpVar2;
                        i22 = 1;
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        zzkpVar = zzkpVar2;
                        if (zzkpVar2.zzc() == 1 || i73 != 0) {
                            i23 = i2 + 2;
                            int i87 = i63 / 3;
                            objArr[i87 + i87 + 1] = objArrZze[i85];
                            i85 = i23;
                        } else {
                            i73 = 0;
                        }
                    } else {
                        if (i72 == 50) {
                            int i88 = i2 + 2;
                            int i89 = i60 + 1;
                            iArr[i60] = i63;
                            int i90 = i63 / 3;
                            int i91 = i90 + i90;
                            objArr[i91] = objArrZze[i85];
                            if (i73 != 0) {
                                i85 = i2 + 3;
                                objArr[i91 + 1] = objArrZze[i88];
                                i60 = i89;
                            } else {
                                i85 = i88;
                                i60 = i89;
                                i73 = 0;
                            }
                        }
                        zzkpVar = zzkpVar2;
                    }
                    int i92 = i63 / 3;
                    objArr[i92 + i92 + i22] = objArrZze[i85];
                    i85 = i23;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzC4);
                iObjectFieldOffset = 1048575;
                if ((iCharAt11 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) == 0 || i72 > 17) {
                    str = strZzd;
                    i19 = i16;
                    i20 = 0;
                } else {
                    int i93 = i16 + 1;
                    int iCharAt13 = strZzd.charAt(i16);
                    if (iCharAt13 >= 55296) {
                        int i94 = iCharAt13 & 8191;
                        int i95 = 13;
                        while (true) {
                            i19 = i93 + 1;
                            cCharAt9 = strZzd.charAt(i93);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i94 |= (cCharAt9 & 8191) << i95;
                            i95 += 13;
                            i93 = i19;
                        }
                        iCharAt13 = i94 | (cCharAt9 << i95);
                    } else {
                        i19 = i93;
                    }
                    int i96 = i5 + i5 + (iCharAt13 / 32);
                    Object obj3 = objArrZze[i96];
                    str = strZzd;
                    if (obj3 instanceof Field) {
                        fieldZzC = (Field) obj3;
                    } else {
                        fieldZzC = zzC(cls2, (String) obj3);
                        objArrZze[i96] = fieldZzC;
                    }
                    i20 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzC);
                }
                if (i72 >= 18 && i72 <= 49) {
                    iArr[i61] = iObjectFieldOffset3;
                    i61++;
                }
                i21 = i85;
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i97 = i63 + 1;
            iArr2[i63] = iCharAt10;
            int i98 = i63 + 2;
            iArr2[i97] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0 ? 536870912 : 0) | (i73 != 0 ? Integer.MIN_VALUE : 0) | (i72 << 20);
            i63 += 3;
            iArr2[i98] = (i20 << 20) | iObjectFieldOffset;
            i2 = i21;
            i31 = i19;
            length = i74;
            zzkpVar2 = zzkpVar;
            strZzd = str;
            i6 = i18;
            i3 = i17;
            c = CharacterCompat.MIN_HIGH_SURROGATE;
        }
        zzkp zzkpVar3 = zzkpVar2;
        return new zzkh(iArr2, objArr, i3, i6, zzkpVar3.zza(), zzkpVar3.zzc(), false, iArr, i4, i58, zzkkVar, zzjsVar, zzllVar, zzifVar, zzjzVar);
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzlv.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzlv.zzf(obj, j)).floatValue();
    }

    private static int zzp(Object obj, long j) {
        return ((Integer) zzlv.zzf(obj, j)).intValue();
    }

    private final int zzq(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzs(i, 0);
    }

    private final int zzr(int i) {
        return this.zzc[i + 2];
    }

    private final int zzs(int i, int i2) {
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

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzu(int i) {
        return this.zzc[i + 1];
    }

    private static long zzv(Object obj, long j) {
        return ((Long) zzlv.zzf(obj, j)).longValue();
    }

    private final zzix zzw(int i) {
        int i2 = i / 3;
        return (zzix) this.zzd[i2 + i2 + 1];
    }

    private final zzkr zzx(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzkr zzkrVar = (zzkr) objArr[i3];
        if (zzkrVar != null) {
            return zzkrVar;
        }
        zzkr zzkrVarZzb = zzkn.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzkrVarZzb;
        return zzkrVarZzb;
    }

    private final Object zzy(Object obj, int i, Object obj2, zzll zzllVar, Object obj3) {
        int i2 = this.zzc[i];
        Object objZzf = zzlv.zzf(obj, zzu(i) & 1048575);
        if (objZzf == null || zzw(i) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzz(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Code restructure failed: missing block: B:248:0x053c, code lost:
    
        if ((r1 instanceof com.google.android.recaptcha.internal.zzgw) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x012f, code lost:
    
        if ((r1 instanceof com.google.android.recaptcha.internal.zzgw) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0132, code lost:
    
        r1 = com.google.android.recaptcha.internal.zzhh.zzx((java.lang.String) r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:184:0x03a5  */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        long j;
        int i4;
        long jZzv;
        long j2;
        Object object;
        Object object2;
        int iZzp;
        int iZzp2;
        int i5;
        int iZzp3;
        int i6;
        long jZzv2;
        Object object3;
        int size;
        int i7;
        int iZzl;
        int iZzg;
        int iZzy;
        int iZzy2;
        int iZzb;
        int iZzy3;
        int iZze;
        int iZzt;
        Unsafe unsafe = zzb;
        boolean z = false;
        int i8 = 1048575;
        int i9 = 1048575;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < this.zzc.length) {
            int iZzu = zzu(i11);
            int iZzt2 = zzt(iZzu);
            int[] iArr = this.zzc;
            int i13 = iArr[i11];
            int i14 = iArr[i11 + 2];
            int i15 = i14 & i8;
            if (iZzt2 <= 17) {
                if (i15 != i9) {
                    i10 = i15 == i8 ? 0 : unsafe.getInt(obj, i15);
                    i9 = i15;
                }
                i = i9;
                i2 = i10;
                i3 = 1 << (i14 >>> 20);
            } else {
                i = i9;
                i2 = i10;
                i3 = 0;
            }
            int i16 = iZzu & i8;
            if (iZzt2 >= zzik.zzJ.zza()) {
                zzik.zzW.zza();
            }
            long j3 = i16;
            switch (iZzt2) {
                case 0:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 8;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 1:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 4;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 2:
                    j = j3;
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    jZzv = unsafe.getLong(obj, j);
                    iZzy3 = zzhh.zzz(jZzv);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 3:
                    j = j3;
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    jZzv = unsafe.getLong(obj, j);
                    iZzy3 = zzhh.zzz(jZzv);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 4:
                    j2 = j3;
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    iZzp2 = unsafe.getInt(obj, j2);
                    iZzy3 = zzhh.zzu(iZzp2);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 5:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 8;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 6:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 4;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 7:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 1;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 8:
                    if (zzO(obj, i11, i, i2, i3)) {
                        i4 = i13 << 3;
                        object = unsafe.getObject(obj, j3);
                        break;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 9:
                    if (zzO(obj, i11, i, i2, i3)) {
                        object2 = unsafe.getObject(obj, j3);
                        iZzb = zzkt.zzh(i13, object2, zzx(i11));
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 10:
                    if (zzO(obj, i11, i, i2, i3)) {
                        i4 = i13 << 3;
                        object = unsafe.getObject(obj, j3);
                        int i17 = zzhh.zzb;
                        int iZzd = ((zzgw) object).zzd();
                        iZzb = zzhh.zzy(i4) + zzhh.zzy(iZzd) + iZzd;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 11:
                    if (zzO(obj, i11, i, i2, i3)) {
                        i4 = i13 << 3;
                        iZzp = unsafe.getInt(obj, j3);
                        iZzy3 = zzhh.zzy(iZzp);
                        iZzl = zzhh.zzy(i4);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 12:
                    j2 = j3;
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    iZzp2 = unsafe.getInt(obj, j2);
                    iZzy3 = zzhh.zzu(iZzp2);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 13:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 4;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 14:
                    if (!zzO(obj, i11, i, i2, i3)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 8;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 15:
                    if (zzO(obj, i11, i, i2, i3)) {
                        i5 = i13 << 3;
                        iZzp3 = unsafe.getInt(obj, j3);
                        iZzl = zzhh.zzy(i5);
                        iZzy3 = zzhh.zzy((iZzp3 >> 31) ^ (iZzp3 + iZzp3));
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 16:
                    if (zzO(obj, i11, i, i2, i3)) {
                        i6 = i13 << 3;
                        jZzv2 = unsafe.getLong(obj, j3);
                        iZzl = zzhh.zzy(i6);
                        iZzy3 = zzhh.zzz((jZzv2 >> 63) ^ (jZzv2 + jZzv2));
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 17:
                    if (zzO(obj, i11, i, i2, i3)) {
                        object3 = unsafe.getObject(obj, j3);
                        iZzb = zzhh.zzt(i13, (zzke) object3, zzx(i11));
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case 18:
                case 23:
                case 32:
                    iZzb = zzkt.zzd(i13, (List) unsafe.getObject(obj, j3), z);
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 19:
                case 24:
                case 31:
                    iZzb = zzkt.zzb(i13, (List) unsafe.getObject(obj, j3), z);
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 20:
                    List list = (List) unsafe.getObject(obj, j3);
                    int i18 = zzkt.zza;
                    iZzg = list.size() == 0 ? 0 : zzkt.zzg(list) + (list.size() * zzhh.zzy(i13 << 3));
                    i12 += iZzg;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j3);
                    int i19 = zzkt.zza;
                    size = list2.size();
                    if (size != 0) {
                        i7 = i13 << 3;
                        iZzl = zzkt.zzl(list2);
                        iZzy3 = size * zzhh.zzy(i7);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j3);
                    int i20 = zzkt.zza;
                    size = list3.size();
                    if (size != 0) {
                        i7 = i13 << 3;
                        iZzl = zzkt.zzf(list3);
                        iZzy3 = size * zzhh.zzy(i7);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j3);
                    int i21 = zzkt.zza;
                    int size2 = list4.size();
                    iZzb = size2 == 0 ? 0 : size2 * (zzhh.zzy(i13 << 3) + 1);
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j3);
                    int i22 = zzkt.zza;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        boolean z2 = list5 instanceof zzjm;
                        iZzg = zzhh.zzy(i13 << 3) * size3;
                        if (z2) {
                            zzjm zzjmVar = (zzjm) list5;
                            for (int i23 = 0; i23 < size3; i23++) {
                                Object objZzf = zzjmVar.zzf(i23);
                                if (objZzf instanceof zzgw) {
                                    int iZzd2 = ((zzgw) objZzf).zzd();
                                    iZzg += zzhh.zzy(iZzd2) + iZzd2;
                                } else {
                                    iZzg += zzhh.zzx((String) objZzf);
                                }
                            }
                        } else {
                            for (int i24 = 0; i24 < size3; i24++) {
                                Object obj2 = list5.get(i24);
                                if (obj2 instanceof zzgw) {
                                    int iZzd3 = ((zzgw) obj2).zzd();
                                    iZzg += zzhh.zzy(iZzd3) + iZzd3;
                                } else {
                                    iZzg += zzhh.zzx((String) obj2);
                                }
                            }
                        }
                    }
                    i12 += iZzg;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j3);
                    zzkr zzkrVarZzx = zzx(i11);
                    int i25 = zzkt.zza;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzy = 0;
                    } else {
                        iZzy = zzhh.zzy(i13 << 3) * size4;
                        for (int i26 = 0; i26 < size4; i26++) {
                            Object obj3 = list6.get(i26);
                            if (obj3 instanceof zzjk) {
                                int iZza = ((zzjk) obj3).zza();
                                iZzy += zzhh.zzy(iZza) + iZza;
                            } else {
                                iZzy += zzhh.zzw((zzke) obj3, zzkrVarZzx);
                            }
                        }
                    }
                    i12 += iZzy;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j3);
                    int i27 = zzkt.zza;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzy2 = 0;
                    } else {
                        iZzy2 = size5 * zzhh.zzy(i13 << 3);
                        for (int i28 = 0; i28 < list7.size(); i28++) {
                            int iZzd4 = ((zzgw) list7.get(i28)).zzd();
                            iZzy2 += zzhh.zzy(iZzd4) + iZzd4;
                        }
                    }
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 29:
                    List list8 = (List) unsafe.getObject(obj, j3);
                    int i29 = zzkt.zza;
                    size = list8.size();
                    if (size != 0) {
                        i7 = i13 << 3;
                        iZzl = zzkt.zzk(list8);
                        iZzy3 = size * zzhh.zzy(i7);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j3);
                    int i30 = zzkt.zza;
                    size = list9.size();
                    if (size != 0) {
                        i7 = i13 << 3;
                        iZzl = zzkt.zza(list9);
                        iZzy3 = size * zzhh.zzy(i7);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    List list10 = (List) unsafe.getObject(obj, j3);
                    int i31 = zzkt.zza;
                    size = list10.size();
                    if (size != 0) {
                        i7 = i13 << 3;
                        iZzl = zzkt.zzi(list10);
                        iZzy3 = size * zzhh.zzy(i7);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    List list11 = (List) unsafe.getObject(obj, j3);
                    int i32 = zzkt.zza;
                    size = list11.size();
                    if (size != 0) {
                        i7 = i13 << 3;
                        iZzl = zzkt.zzj(list11);
                        iZzy3 = size * zzhh.zzy(i7);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZze = zzkt.zze((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZze = zzkt.zzc((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZze = zzkt.zzg((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZze = zzkt.zzl((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZze = zzkt.zzf((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZze = zzkt.zze((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZze = zzkt.zzc((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    List list12 = (List) unsafe.getObject(obj, j3);
                    int i33 = zzkt.zza;
                    iZze = list12.size();
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZze = zzkt.zzk((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZze = zzkt.zza((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZze = zzkt.zzc((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZze = zzkt.zze((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZze = zzkt.zzi((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZze = zzkt.zzj((List) unsafe.getObject(obj, j3));
                    if (iZze <= 0) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzy2 = zzhh.zzy(i13 << 3) + zzhh.zzy(iZze) + iZze;
                    i12 += iZzy2;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    List list13 = (List) unsafe.getObject(obj, j3);
                    zzkr zzkrVarZzx2 = zzx(i11);
                    int i34 = zzkt.zza;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iZzt = 0;
                    } else {
                        iZzt = 0;
                        for (int i35 = 0; i35 < size6; i35++) {
                            iZzt += zzhh.zzt(i13, (zzke) list13.get(i35), zzkrVarZzx2);
                        }
                    }
                    i12 += iZzt;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 50:
                    zzjy zzjyVar = (zzjy) unsafe.getObject(obj, j3);
                    if (zzjyVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzjyVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 8;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 4;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    jZzv = zzv(obj, j3);
                    iZzy3 = zzhh.zzz(jZzv);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    jZzv = zzv(obj, j3);
                    iZzy3 = zzhh.zzz(jZzv);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    iZzp2 = zzp(obj, j3);
                    iZzy3 = zzhh.zzu(iZzp2);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 8;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 4;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 1;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzR(obj, i13, i11)) {
                        i4 = i13 << 3;
                        object = unsafe.getObject(obj, j3);
                        break;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zzR(obj, i13, i11)) {
                        object2 = unsafe.getObject(obj, j3);
                        iZzb = zzkt.zzh(i13, object2, zzx(i11));
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zzR(obj, i13, i11)) {
                        i4 = i13 << 3;
                        object = unsafe.getObject(obj, j3);
                        int i172 = zzhh.zzb;
                        int iZzd5 = ((zzgw) object).zzd();
                        iZzb = zzhh.zzy(i4) + zzhh.zzy(iZzd5) + iZzd5;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zzR(obj, i13, i11)) {
                        i4 = i13 << 3;
                        iZzp = zzp(obj, j3);
                        iZzy3 = zzhh.zzy(iZzp);
                        iZzl = zzhh.zzy(i4);
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    i4 = i13 << 3;
                    iZzp2 = zzp(obj, j3);
                    iZzy3 = zzhh.zzu(iZzp2);
                    iZzl = zzhh.zzy(i4);
                    iZzb = iZzl + iZzy3;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 64:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 4;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case 65:
                    if (!zzR(obj, i13, i11)) {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                    iZzb = zzhh.zzy(i13 << 3) + 8;
                    i12 += iZzb;
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zzR(obj, i13, i11)) {
                        i5 = i13 << 3;
                        iZzp3 = zzp(obj, j3);
                        iZzl = zzhh.zzy(i5);
                        iZzy3 = zzhh.zzy((iZzp3 >> 31) ^ (iZzp3 + iZzp3));
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzR(obj, i13, i11)) {
                        i6 = i13 << 3;
                        jZzv2 = zzv(obj, j3);
                        iZzl = zzhh.zzy(i6);
                        iZzy3 = zzhh.zzz((jZzv2 >> 63) ^ (jZzv2 + jZzv2));
                        iZzb = iZzl + iZzy3;
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zzR(obj, i13, i11)) {
                        object3 = unsafe.getObject(obj, j3);
                        iZzb = zzhh.zzt(i13, (zzke) object3, zzx(i11));
                        i12 += iZzb;
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    } else {
                        i11 += 3;
                        i9 = i;
                        i10 = i2;
                        z = false;
                        i8 = 1048575;
                    }
                default:
                    i11 += 3;
                    i9 = i;
                    i10 = i2;
                    z = false;
                    i8 = 1048575;
            }
        }
        zzll zzllVar = this.zzn;
        int iZza2 = i12 + zzllVar.zza(zzllVar.zzd(obj));
        if (!this.zzh) {
            return iZza2;
        }
        zzij zzijVarZzb = this.zzo.zzb(obj);
        int iZza3 = 0;
        for (int i36 = 0; i36 < zzijVarZzb.zza.zzb(); i36++) {
            Map.Entry entryZzg = zzijVarZzb.zza.zzg(i36);
            iZza3 += zzij.zza((zzii) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzijVarZzb.zza.zzc()) {
            iZza3 += zzij.zza((zzii) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZza3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f5 A[PHI: r1 r2
      0x00f5: PHI (r1v14 int) = (r1v9 int), (r1v15 int) binds: [B:74:0x0111, B:68:0x00f3] A[DONT_GENERATE, DONT_INLINE]
      0x00f5: PHI (r2v10 java.lang.Object) = (r2v7 java.lang.Object), (r2v11 java.lang.Object) binds: [B:74:0x0111, B:68:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(Object obj) {
        int i;
        double dZza;
        int i2;
        float fZzb;
        boolean zZzw;
        int i3;
        Object objZzf;
        int iZzc;
        long jZzd;
        int i4 = 0;
        for (int i5 = 0; i5 < this.zzc.length; i5 += 3) {
            int iZzu = zzu(i5);
            int[] iArr = this.zzc;
            int i6 = 1048575 & iZzu;
            int iZzt = zzt(iZzu);
            int i7 = iArr[i5];
            long j = i6;
            int iHashCode = 37;
            switch (iZzt) {
                case 0:
                    i = i4 * 53;
                    dZza = zzlv.zza(obj, j);
                    jZzd = Double.doubleToLongBits(dZza);
                    byte[] bArr = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case 1:
                    i2 = i4 * 53;
                    fZzb = zzlv.zzb(obj, j);
                    iZzc = Float.floatToIntBits(fZzb);
                    i4 = i2 + iZzc;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i4 * 53;
                    jZzd = zzlv.zzd(obj, j);
                    byte[] bArr2 = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i2 = i4 * 53;
                    iZzc = zzlv.zzc(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case 7:
                    i2 = i4 * 53;
                    zZzw = zzlv.zzw(obj, j);
                    iZzc = zzjc.zza(zZzw);
                    i4 = i2 + iZzc;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iZzc = ((String) zzlv.zzf(obj, j)).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case 9:
                    i3 = i4 * 53;
                    objZzf = zzlv.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i4 = i3 + iHashCode;
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
                    i2 = i4 * 53;
                    iZzc = zzlv.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case 17:
                    i3 = i4 * 53;
                    objZzf = zzlv.zzf(obj, j);
                    if (objZzf != null) {
                    }
                    i4 = i3 + iHashCode;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zzR(obj, i7, i5)) {
                        i = i4 * 53;
                        dZza = zzn(obj, j);
                        jZzd = Double.doubleToLongBits(dZza);
                        byte[] bArr22 = zzjc.zzd;
                        i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        fZzb = zzo(obj, j);
                        iZzc = Float.floatToIntBits(fZzb);
                        i4 = i2 + iZzc;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzv(obj, j);
                    byte[] bArr222 = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzv(obj, j);
                    byte[] bArr2222 = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzp(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzv(obj, j);
                    byte[] bArr22222 = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzp(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzR(obj, i7, i5)) {
                        i2 = i4 * 53;
                        zZzw = zzS(obj, j);
                        iZzc = zzjc.zza(zZzw);
                        i4 = i2 + iZzc;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = ((String) zzlv.zzf(obj, j)).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzlv.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzlv.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzp(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzp(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case 64:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzp(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case 65:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzv(obj, j);
                    byte[] bArr222222 = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzp(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzv(obj, j);
                    byte[] bArr2222222 = zzjc.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zzR(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzlv.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
            }
        }
        int iHashCode2 = (i4 * 53) + this.zzn.zzd(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzo.zzb(obj).zza.hashCode() : iHashCode2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x055d, code lost:
    
        if (r1 == 0) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x055f, code lost:
    
        r13.add(com.google.android.recaptcha.internal.zzgw.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0565, code lost:
    
        r13.add(com.google.android.recaptcha.internal.zzgw.zzm(r15, r0, r1));
        r0 = r0 + r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x056d, code lost:
    
        if (r0 >= r14) goto L648;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x056f, code lost:
    
        r1 = com.google.android.recaptcha.internal.zzgk.zzi(r15, r0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0575, code lost:
    
        if (r37 != r8.zza) goto L649;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0577, code lost:
    
        r0 = com.google.android.recaptcha.internal.zzgk.zzi(r15, r1, r8);
        r1 = r8.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x057d, code lost:
    
        if (r1 < 0) goto L571;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0581, code lost:
    
        if (r1 > (r15.length - r0)) goto L572;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0583, code lost:
    
        if (r1 != 0) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x058a, code lost:
    
        throw com.google.android.recaptcha.internal.zzje.zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x058f, code lost:
    
        throw com.google.android.recaptcha.internal.zzje.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x06c6, code lost:
    
        if (r2.zzb != 0) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x06c8, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x06ca, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x06cb, code lost:
    
        r13.zze(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x06ce, code lost:
    
        if (r8 >= r1) goto L663;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x06d0, code lost:
    
        r9 = com.google.android.recaptcha.internal.zzgk.zzi(r15, r8, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x06d6, code lost:
    
        if (r3 != r2.zza) goto L664;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x06d8, code lost:
    
        r8 = com.google.android.recaptcha.internal.zzgk.zzl(r15, r9, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x06e0, code lost:
    
        if (r2.zzb == 0) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0ca0, code lost:
    
        if (r11 == 1048575) goto L533;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0ca2, code lost:
    
        r31.putInt(r7, r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0ca8, code lost:
    
        r11 = r6.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0cad, code lost:
    
        if (r11 >= r6.zzl) goto L641;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0caf, code lost:
    
        zzy(r35, r6.zzj[r11], null, r6.zzn, r35);
        r11 = r11 + r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0cc3, code lost:
    
        if (r9 != 0) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0cc5, code lost:
    
        if (r8 != r38) goto L541;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0ccc, code lost:
    
        throw com.google.android.recaptcha.internal.zzje.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0ccd, code lost:
    
        if (r8 > r38) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x0ccf, code lost:
    
        if (r13 != r9) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x0cd1, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x0cd7, code lost:
    
        throw com.google.android.recaptcha.internal.zzje.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x056d, code lost:
    
        r13.add(com.google.android.recaptcha.internal.zzgw.zzm(r15, r0, r1));
        r0 = r0 + r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x06cb, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:233:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x08ba A[PHI: r2 r3 r7 r8 r10 r14 r31
      0x08ba: PHI (r2v153 int) = (r2v113 int), (r2v114 int), (r2v115 int), (r2v117 int), (r2v127 int), (r2v147 int), (r2v159 int) binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]
      0x08ba: PHI (r3v76 int) = (r3v50 int), (r3v51 int), (r3v52 int), (r3v54 int), (r3v64 int), (r3v73 int), (r3v80 int) binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]
      0x08ba: PHI (r7v32 int) = (r7v12 int), (r7v13 int), (r7v14 int), (r7v15 int), (r7v20 int), (r7v28 int), (r7v38 int) binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]
      0x08ba: PHI (r8v150 int) = (r8v95 int), (r8v96 int), (r8v97 int), (r8v98 int), (r8v125 int), (r8v147 int), (r8v155 int) binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]
      0x08ba: PHI (r10v81 com.google.android.recaptcha.internal.zzgj) = 
      (r10v53 com.google.android.recaptcha.internal.zzgj)
      (r10v54 com.google.android.recaptcha.internal.zzgj)
      (r10v55 com.google.android.recaptcha.internal.zzgj)
      (r10v56 com.google.android.recaptcha.internal.zzgj)
      (r10v70 com.google.android.recaptcha.internal.zzgj)
      (r10v78 com.google.android.recaptcha.internal.zzgj)
      (r10v86 com.google.android.recaptcha.internal.zzgj)
     binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]
      0x08ba: PHI (r14v90 int) = (r14v69 int), (r14v70 int), (r14v71 int), (r14v72 int), (r14v76 int), (r14v86 int), (r14v97 int) binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]
      0x08ba: PHI (r31v28 sun.misc.Unsafe) = 
      (r31v8 sun.misc.Unsafe)
      (r31v9 sun.misc.Unsafe)
      (r31v10 sun.misc.Unsafe)
      (r31v11 sun.misc.Unsafe)
      (r31v16 sun.misc.Unsafe)
      (r31v24 sun.misc.Unsafe)
      (r31v32 sun.misc.Unsafe)
     binds: [B:377:0x0891, B:362:0x0839, B:345:0x07ec, B:335:0x07b8, B:270:0x067f, B:165:0x04cc, B:146:0x046e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:585:0x08bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0b6a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0b7c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:631:0x08d6 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:205:0x0583 -> B:196:0x055f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:237:0x060e -> B:229:0x05ed). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:257:0x0658 -> B:247:0x062f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:294:0x06e0 -> B:287:0x06c8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zzc(Object obj, byte[] bArr, int i, int i2, int i3, zzgj zzgjVar) throws IOException {
        int i4;
        Unsafe unsafe;
        int i5;
        int i6;
        int i7;
        int i8;
        zzgj zzgjVar2;
        int i9;
        int iZzl;
        int i10;
        int iZzh;
        zzie zzieVar;
        int i11;
        long jZzG;
        int iZzF;
        Object obj2;
        int i12;
        int i13;
        int i14;
        int i15;
        zzgj zzgjVar3;
        int iZzg;
        int i16;
        int iZzi;
        Unsafe unsafe2;
        int i17;
        zzgj zzgjVar4;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        long j;
        int i23;
        int iZzl2;
        Object objValueOf;
        int i24;
        long j2;
        Object objValueOf2;
        long j3;
        int i25;
        Object objValueOf3;
        int i26;
        int iZza;
        long j4;
        Object objValueOf4;
        long j5;
        int i27;
        int i28;
        int i29;
        int i30;
        zzgj zzgjVar5;
        int i31;
        int iZzi2;
        int i32;
        int i33;
        int i34;
        int i35;
        zzgj zzgjVar6;
        int iZzf;
        int iZzi3;
        int i36;
        int iZzk;
        int i37;
        zzkh<T> zzkhVar = this;
        Object obj3 = obj;
        byte[] bArr2 = bArr;
        int i38 = i2;
        int i39 = i3;
        zzgj zzgjVar7 = zzgjVar;
        int i40 = 3;
        zzD(obj);
        Unsafe unsafe3 = zzb;
        int i41 = -1;
        int iZzm = i;
        int i42 = -1;
        int iZzs = 0;
        int i43 = 1048575;
        int i44 = 0;
        int i45 = 0;
        while (true) {
            if (iZzm < i38) {
                int iZzj = iZzm + 1;
                int i46 = bArr2[iZzm];
                if (i46 < 0) {
                    iZzj = zzgk.zzj(i46, bArr2, iZzj, zzgjVar7);
                    i46 = zzgjVar7.zza;
                }
                int i47 = i46 >>> 3;
                iZzs = i47 > i42 ? (i47 < zzkhVar.zze || i47 > zzkhVar.zzf) ? -1 : zzkhVar.zzs(i47, iZzs / i40) : zzkhVar.zzq(i47);
                Object objValueOf5 = null;
                if (iZzs == i41) {
                    i4 = i39;
                    i7 = i46;
                    unsafe = unsafe3;
                    i8 = 0;
                    i5 = 1;
                    int i48 = iZzj;
                    zzgjVar2 = zzgjVar7;
                    i9 = i47;
                    iZzl = i48;
                } else {
                    int i49 = i46 & 7;
                    int[] iArr = zzkhVar.zzc;
                    int i50 = iArr[iZzs + 1];
                    int iZzt = zzt(i50);
                    long j6 = i50 & 1048575;
                    int i51 = i46;
                    if (iZzt <= 17) {
                        int i52 = iArr[iZzs + 2];
                        int i53 = 1 << (i52 >>> 20);
                        int i54 = 1048575;
                        int i55 = i52 & 1048575;
                        if (i55 != i43) {
                            if (i43 != 1048575) {
                                unsafe3.putInt(obj3, i43, i44);
                                i54 = 1048575;
                            }
                            i12 = i55 == i54 ? 0 : unsafe3.getInt(obj3, i55);
                            i13 = i55;
                        } else {
                            i12 = i44;
                            i13 = i43;
                        }
                        switch (iZzt) {
                            case 0:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 1) {
                                    iZzg = iZzj + 8;
                                    i12 |= i53;
                                    zzlv.zzo(obj3, j6, Double.longBitsToDouble(zzgk.zzp(bArr2, iZzj)));
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    iZzm = iZzg;
                                    i44 = i12;
                                    i40 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 1:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 5) {
                                    iZzg = iZzj + 4;
                                    i12 |= i53;
                                    zzlv.zzp(obj3, j6, Float.intBitsToFloat(zzgk.zzb(bArr2, iZzj)));
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    iZzm = iZzg;
                                    i44 = i12;
                                    i40 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 2:
                            case 3:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 0) {
                                    int i56 = i12 | i53;
                                    int iZzl3 = zzgk.zzl(bArr2, iZzj, zzgjVar3);
                                    unsafe3.putLong(obj, j6, zzgjVar3.zzb);
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    iZzm = iZzl3;
                                    i43 = i13;
                                    i40 = 3;
                                    i41 = -1;
                                    i44 = i56;
                                    i42 = i15;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 4:
                            case 11:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 0) {
                                    i16 = i12 | i53;
                                    iZzi = zzgk.zzi(bArr2, iZzj, zzgjVar3);
                                    unsafe3.putInt(obj3, j6, zzgjVar3.zza);
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    i44 = i16;
                                    iZzm = iZzi;
                                    i40 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 5:
                            case 14:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 1) {
                                    int i57 = i53 | i12;
                                    unsafe3.putLong(obj, j6, zzgk.zzp(bArr2, iZzj));
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    iZzm = iZzj + 8;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i40 = 3;
                                    i44 = i57;
                                    i41 = -1;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 6:
                            case 13:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 5) {
                                    iZzg = iZzj + 4;
                                    i12 |= i53;
                                    unsafe3.putInt(obj3, j6, zzgk.zzb(bArr2, iZzj));
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    iZzm = iZzg;
                                    i44 = i12;
                                    i40 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 7:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 0) {
                                    i16 = i12 | i53;
                                    iZzi = zzgk.zzl(bArr2, iZzj, zzgjVar3);
                                    zzlv.zzm(obj3, j6, zzgjVar3.zzb != 0);
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    i44 = i16;
                                    iZzm = iZzi;
                                    i40 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 8:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                if (i49 == 2) {
                                    if (zzM(i50)) {
                                        iZzg = zzgk.zzi(bArr2, iZzj, zzgjVar3);
                                        int i58 = zzgjVar3.zza;
                                        if (i58 < 0) {
                                            throw zzje.zzf();
                                        }
                                        i12 |= i53;
                                        if (i58 == 0) {
                                            zzgjVar3.zzc = "";
                                        } else {
                                            zzgjVar3.zzc = zzma.zzd(bArr2, iZzg, i58);
                                            iZzg += i58;
                                        }
                                    } else {
                                        i12 |= i53;
                                        iZzg = zzgk.zzg(bArr2, iZzj, zzgjVar3);
                                    }
                                    unsafe3.putObject(obj3, j6, zzgjVar3.zzc);
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    iZzm = iZzg;
                                    i44 = i12;
                                    i40 = 3;
                                    break;
                                } else {
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 9:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                unsafe2 = unsafe3;
                                i14 = i51;
                                if (i49 == 2) {
                                    int i59 = i12 | i53;
                                    Object objZzA = zzkhVar.zzA(obj3, iZzs);
                                    unsafe3 = unsafe2;
                                    i38 = i2;
                                    int iZzn = zzgk.zzn(objZzA, zzkhVar.zzx(iZzs), bArr, iZzj, i38, zzgjVar);
                                    zzkhVar.zzJ(obj3, iZzs, objZzA);
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i40 = 3;
                                    i41 = -1;
                                    iZzm = iZzn;
                                    i44 = i59;
                                    i42 = i15;
                                    break;
                                }
                                unsafe3 = unsafe2;
                                i4 = i3;
                                i7 = i14;
                                unsafe = unsafe3;
                                i43 = i13;
                                i9 = i15;
                                i44 = i12;
                                iZzl = iZzj;
                                zzgjVar2 = zzgjVar3;
                                i8 = iZzs;
                                i5 = 1;
                                break;
                            case 10:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                unsafe2 = unsafe3;
                                i14 = i51;
                                if (i49 == 2) {
                                    int i60 = i12 | i53;
                                    bArr2 = bArr;
                                    int iZza2 = zzgk.zza(bArr2, iZzj, zzgjVar3);
                                    unsafe2.putObject(obj3, j6, zzgjVar3.zzc);
                                    i38 = i2;
                                    i39 = i3;
                                    unsafe3 = unsafe2;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    i44 = i60;
                                    iZzm = iZza2;
                                    i40 = 3;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    unsafe3 = unsafe2;
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 12:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                unsafe2 = unsafe3;
                                i14 = i51;
                                if (i49 == 0) {
                                    iZzg = zzgk.zzi(bArr2, iZzj, zzgjVar3);
                                    int i61 = zzgjVar3.zza;
                                    zzix zzixVarZzw = zzkhVar.zzw(iZzs);
                                    if ((i50 & Integer.MIN_VALUE) == 0 || zzixVarZzw == null || zzixVarZzw.zza(i61)) {
                                        i12 |= i53;
                                        unsafe2.putInt(obj3, j6, i61);
                                    } else {
                                        zzd(obj).zzj(i14, Long.valueOf(i61));
                                    }
                                    bArr2 = bArr;
                                    i38 = i2;
                                    i39 = i3;
                                    unsafe3 = unsafe2;
                                    zzgjVar7 = zzgjVar3;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    iZzm = iZzg;
                                    i44 = i12;
                                    i40 = 3;
                                    break;
                                } else {
                                    bArr2 = bArr;
                                    unsafe3 = unsafe2;
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 15:
                                zzgjVar3 = zzgjVar;
                                i15 = i47;
                                i14 = i51;
                                Unsafe unsafe4 = unsafe3;
                                if (i49 == 0) {
                                    i16 = i12 | i53;
                                    iZzi = zzgk.zzi(bArr2, iZzj, zzgjVar3);
                                    unsafe4.putInt(obj3, j6, zzhc.zzF(zzgjVar3.zza));
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar3;
                                    unsafe3 = unsafe4;
                                    i45 = i14;
                                    i43 = i13;
                                    i42 = i15;
                                    i41 = -1;
                                    i44 = i16;
                                    iZzm = iZzi;
                                    i40 = 3;
                                    break;
                                } else {
                                    unsafe3 = unsafe4;
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            case 16:
                                i14 = i51;
                                Unsafe unsafe5 = unsafe3;
                                if (i49 == 0) {
                                    int i62 = i12 | i53;
                                    int iZzl4 = zzgk.zzl(bArr2, iZzj, zzgjVar);
                                    unsafe5.putLong(obj, j6, zzhc.zzG(zzgjVar.zzb));
                                    unsafe3 = unsafe5;
                                    i38 = i2;
                                    i39 = i3;
                                    zzgjVar7 = zzgjVar;
                                    i45 = i14;
                                    i42 = i47;
                                    i40 = 3;
                                    i41 = -1;
                                    int i63 = i13;
                                    i44 = i62;
                                    iZzm = iZzl4;
                                    i43 = i63;
                                    break;
                                } else {
                                    i15 = i47;
                                    unsafe3 = unsafe5;
                                    zzgjVar3 = zzgjVar;
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                            default:
                                if (i49 == 3) {
                                    int i64 = i12 | i53;
                                    Object objZzA2 = zzkhVar.zzA(obj3, iZzs);
                                    iZzm = zzgk.zzm(objZzA2, zzkhVar.zzx(iZzs), bArr, iZzj, i2, (i47 << 3) | 4, zzgjVar);
                                    zzkhVar.zzJ(obj3, iZzs, objZzA2);
                                    unsafe3 = unsafe3;
                                    zzgjVar7 = zzgjVar;
                                    i42 = i47;
                                    i45 = i51;
                                    iZzs = iZzs;
                                    i43 = i13;
                                    i40 = 3;
                                    i41 = -1;
                                    i38 = i2;
                                    i39 = i3;
                                    i44 = i64;
                                    break;
                                } else {
                                    zzgjVar3 = zzgjVar;
                                    i15 = i47;
                                    i14 = i51;
                                    i4 = i3;
                                    i7 = i14;
                                    unsafe = unsafe3;
                                    i43 = i13;
                                    i9 = i15;
                                    i44 = i12;
                                    iZzl = iZzj;
                                    zzgjVar2 = zzgjVar3;
                                    i8 = iZzs;
                                    i5 = 1;
                                    break;
                                }
                        }
                    } else {
                        zzgj zzgjVar8 = zzgjVar7;
                        if (iZzt != 27) {
                            i17 = i43;
                            Unsafe unsafe6 = unsafe3;
                            if (iZzt <= 49) {
                                long j7 = i50;
                                Unsafe unsafe7 = zzb;
                                zzjb zzjbVarZzd = (zzjb) unsafe7.getObject(obj3, j6);
                                if (zzjbVarZzd.zzc()) {
                                    j5 = j7;
                                } else {
                                    int size = zzjbVarZzd.size();
                                    if (size == 0) {
                                        j5 = j7;
                                        i37 = 10;
                                    } else {
                                        j5 = j7;
                                        i37 = size + size;
                                    }
                                    zzjbVarZzd = zzjbVarZzd.zzd(i37);
                                    unsafe7.putObject(obj3, j6, zzjbVarZzd);
                                }
                                zzjb zzjbVar = zzjbVarZzd;
                                switch (iZzt) {
                                    case 18:
                                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                                        unsafe = unsafe6;
                                        i27 = iZzj;
                                        i28 = iZzs;
                                        i29 = i47;
                                        i30 = i51;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i2;
                                        if (i49 == 2) {
                                            zzhy zzhyVar = (zzhy) zzjbVar;
                                            iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar5);
                                            int i65 = zzgjVar5.zza + iZzi2;
                                            while (iZzi2 < i65) {
                                                zzhyVar.zze(Double.longBitsToDouble(zzgk.zzp(bArr2, iZzi2)));
                                                iZzi2 += 8;
                                            }
                                            if (iZzi2 != i65) {
                                                throw zzje.zzj();
                                            }
                                        } else if (i49 == 1) {
                                            iZzi2 = i27 + 8;
                                            zzhy zzhyVar2 = (zzhy) zzjbVar;
                                            zzhyVar2.zze(Double.longBitsToDouble(zzgk.zzp(bArr2, i27)));
                                            while (iZzi2 < i31) {
                                                int iZzi4 = zzgk.zzi(bArr2, iZzi2, zzgjVar5);
                                                if (i30 == zzgjVar5.zza) {
                                                    zzhyVar2.zze(Double.longBitsToDouble(zzgk.zzp(bArr2, iZzi4)));
                                                    iZzi2 = iZzi4 + 8;
                                                }
                                            }
                                        } else {
                                            iZzi2 = i27;
                                        }
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                            obj3 = obj;
                                            i39 = i3;
                                            i42 = i29;
                                            i38 = i31;
                                            i45 = i30;
                                            i43 = i17;
                                            unsafe3 = unsafe;
                                            i40 = 3;
                                            i41 = -1;
                                            iZzm = iZzi2;
                                            zzgj zzgjVar9 = zzgjVar5;
                                            iZzs = i28;
                                            zzgjVar7 = zzgjVar9;
                                            break;
                                        } else {
                                            obj3 = obj;
                                            i4 = i3;
                                            iZzl = iZzi2;
                                            i8 = i28;
                                            i9 = i29;
                                            zzgjVar2 = zzgjVar5;
                                            i7 = i30;
                                            i43 = i17;
                                            i5 = 1;
                                            break;
                                        }
                                    case 19:
                                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                                        unsafe = unsafe6;
                                        i27 = iZzj;
                                        i28 = iZzs;
                                        i29 = i47;
                                        i30 = i51;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i2;
                                        if (i49 == 2) {
                                            zzil zzilVar = (zzil) zzjbVar;
                                            iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar5);
                                            int i66 = zzgjVar5.zza + iZzi2;
                                            while (iZzi2 < i66) {
                                                zzilVar.zze(Float.intBitsToFloat(zzgk.zzb(bArr2, iZzi2)));
                                                iZzi2 += 4;
                                            }
                                            if (iZzi2 != i66) {
                                                throw zzje.zzj();
                                            }
                                        } else if (i49 == 5) {
                                            iZzi2 = i27 + 4;
                                            zzil zzilVar2 = (zzil) zzjbVar;
                                            zzilVar2.zze(Float.intBitsToFloat(zzgk.zzb(bArr2, i27)));
                                            while (iZzi2 < i31) {
                                                int iZzi5 = zzgk.zzi(bArr2, iZzi2, zzgjVar5);
                                                if (i30 == zzgjVar5.zza) {
                                                    zzilVar2.zze(Float.intBitsToFloat(zzgk.zzb(bArr2, iZzi5)));
                                                    iZzi2 = iZzi5 + 4;
                                                }
                                            }
                                        }
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                                        unsafe = unsafe6;
                                        i27 = iZzj;
                                        i28 = iZzs;
                                        i29 = i47;
                                        i30 = i51;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i2;
                                        if (i49 == 2) {
                                            zzjt zzjtVar = (zzjt) zzjbVar;
                                            iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar5);
                                            int i67 = zzgjVar5.zza + iZzi2;
                                            while (iZzi2 < i67) {
                                                iZzi2 = zzgk.zzl(bArr2, iZzi2, zzgjVar5);
                                                zzjtVar.zzg(zzgjVar5.zzb);
                                            }
                                            if (iZzi2 != i67) {
                                                throw zzje.zzj();
                                            }
                                        } else if (i49 == 0) {
                                            zzjt zzjtVar2 = (zzjt) zzjbVar;
                                            iZzi2 = zzgk.zzl(bArr2, i27, zzgjVar5);
                                            while (true) {
                                                zzjtVar2.zzg(zzgjVar5.zzb);
                                                if (iZzi2 < i31) {
                                                    int iZzi6 = zzgk.zzi(bArr2, iZzi2, zzgjVar5);
                                                    if (i30 == zzgjVar5.zza) {
                                                        iZzi2 = zzgk.zzl(bArr2, iZzi6, zzgjVar5);
                                                    }
                                                }
                                            }
                                        }
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                                        unsafe = unsafe6;
                                        i32 = i2;
                                        i27 = iZzj;
                                        i33 = iZzs;
                                        i34 = i47;
                                        i35 = i51;
                                        zzgjVar6 = zzgjVar8;
                                        if (i49 == 2) {
                                            iZzf = zzgk.zzf(bArr2, i27, zzjbVar, zzgjVar6);
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = iZzf;
                                            i31 = i32;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        } else if (i49 == 0) {
                                            i31 = i32;
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            iZzi2 = zzgk.zzk(i35, bArr, i27, i2, zzjbVar, zzgjVar);
                                            i29 = i34;
                                            i28 = i33;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        } else {
                                            i31 = i32;
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                                        unsafe = unsafe6;
                                        i32 = i2;
                                        i27 = iZzj;
                                        i33 = iZzs;
                                        i34 = i47;
                                        i35 = i51;
                                        zzgjVar6 = zzgjVar8;
                                        if (i49 == 2) {
                                            zzjt zzjtVar3 = (zzjt) zzjbVar;
                                            iZzi3 = zzgk.zzi(bArr2, i27, zzgjVar6);
                                            int i68 = zzgjVar6.zza + iZzi3;
                                            while (iZzi3 < i68) {
                                                zzjtVar3.zzg(zzgk.zzp(bArr2, iZzi3));
                                                iZzi3 += 8;
                                            }
                                            if (iZzi3 != i68) {
                                                throw zzje.zzj();
                                            }
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = iZzi3;
                                            i31 = i32;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        } else if (i49 == 1) {
                                            iZzf = i27 + 8;
                                            zzjt zzjtVar4 = (zzjt) zzjbVar;
                                            zzjtVar4.zzg(zzgk.zzp(bArr2, i27));
                                            while (iZzf < i32) {
                                                int iZzi7 = zzgk.zzi(bArr2, iZzf, zzgjVar6);
                                                if (i35 == zzgjVar6.zza) {
                                                    zzjtVar4.zzg(zzgk.zzp(bArr2, iZzi7));
                                                    iZzf = iZzi7 + 8;
                                                } else {
                                                    zzgjVar5 = zzgjVar6;
                                                    i30 = i35;
                                                    i29 = i34;
                                                    i28 = i33;
                                                    iZzi2 = iZzf;
                                                    i31 = i32;
                                                    zzkhVar = this;
                                                    if (iZzi2 == i27) {
                                                    }
                                                }
                                            }
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = iZzf;
                                            i31 = i32;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        } else {
                                            i31 = i32;
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                                        unsafe = unsafe6;
                                        i32 = i2;
                                        i27 = iZzj;
                                        i33 = iZzs;
                                        i34 = i47;
                                        i35 = i51;
                                        zzgjVar6 = zzgjVar8;
                                        if (i49 == 2) {
                                            zziu zziuVar = (zziu) zzjbVar;
                                            iZzi3 = zzgk.zzi(bArr2, i27, zzgjVar6);
                                            int i69 = zzgjVar6.zza + iZzi3;
                                            while (iZzi3 < i69) {
                                                zziuVar.zzg(zzgk.zzb(bArr2, iZzi3));
                                                iZzi3 += 4;
                                            }
                                            if (iZzi3 != i69) {
                                                throw zzje.zzj();
                                            }
                                        } else {
                                            if (i49 == 5) {
                                                iZzi3 = i27 + 4;
                                                zziu zziuVar2 = (zziu) zzjbVar;
                                                zziuVar2.zzg(zzgk.zzb(bArr2, i27));
                                                while (iZzi3 < i32) {
                                                    int iZzi8 = zzgk.zzi(bArr2, iZzi3, zzgjVar6);
                                                    if (i35 == zzgjVar6.zza) {
                                                        zziuVar2.zzg(zzgk.zzb(bArr2, iZzi8));
                                                        iZzi3 = iZzi8 + 4;
                                                    }
                                                }
                                            }
                                            i31 = i32;
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        zzgjVar5 = zzgjVar6;
                                        i30 = i35;
                                        i29 = i34;
                                        i28 = i33;
                                        iZzi2 = iZzi3;
                                        i31 = i32;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case 25:
                                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                                        unsafe = unsafe6;
                                        i32 = i2;
                                        i27 = iZzj;
                                        i33 = iZzs;
                                        i34 = i47;
                                        i35 = i51;
                                        zzgjVar6 = zzgjVar8;
                                        if (i49 == 2) {
                                            zzgl zzglVar = (zzgl) zzjbVar;
                                            iZzi3 = zzgk.zzi(bArr2, i27, zzgjVar6);
                                            int i70 = zzgjVar6.zza + iZzi3;
                                            while (iZzi3 < i70) {
                                                iZzi3 = zzgk.zzl(bArr2, iZzi3, zzgjVar6);
                                                zzglVar.zze(zzgjVar6.zzb != 0);
                                            }
                                            if (iZzi3 != i70) {
                                                throw zzje.zzj();
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                zzgl zzglVar2 = (zzgl) zzjbVar;
                                                iZzi3 = zzgk.zzl(bArr2, i27, zzgjVar6);
                                                break;
                                            }
                                            i31 = i32;
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        zzgjVar5 = zzgjVar6;
                                        i30 = i35;
                                        i29 = i34;
                                        i28 = i33;
                                        iZzi2 = iZzi3;
                                        i31 = i32;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case 26:
                                        unsafe = unsafe6;
                                        i32 = i2;
                                        i27 = iZzj;
                                        i33 = iZzs;
                                        i34 = i47;
                                        i35 = i51;
                                        zzgjVar6 = zzgjVar8;
                                        if (i49 == 2) {
                                            if ((j5 & 536870912) == 0) {
                                                iZzi3 = zzgk.zzi(bArr2, i27, zzgjVar6);
                                                int i71 = zzgjVar6.zza;
                                                if (i71 < 0) {
                                                    throw zzje.zzf();
                                                }
                                                if (i71 == 0) {
                                                    zzjbVar.add("");
                                                } else {
                                                    zzjbVar.add(new String(bArr2, iZzi3, i71, zzjc.zzb));
                                                    iZzi3 += i71;
                                                }
                                                while (iZzi3 < i32) {
                                                    int iZzi9 = zzgk.zzi(bArr2, iZzi3, zzgjVar6);
                                                    if (i35 == zzgjVar6.zza) {
                                                        iZzi3 = zzgk.zzi(bArr2, iZzi9, zzgjVar6);
                                                        int i72 = zzgjVar6.zza;
                                                        if (i72 < 0) {
                                                            throw zzje.zzf();
                                                        }
                                                        if (i72 == 0) {
                                                            zzjbVar.add("");
                                                            while (iZzi3 < i32) {
                                                            }
                                                        } else {
                                                            zzjbVar.add(new String(bArr2, iZzi3, i72, zzjc.zzb));
                                                            iZzi3 += i72;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iZzi3 = zzgk.zzi(bArr2, i27, zzgjVar6);
                                                int i73 = zzgjVar6.zza;
                                                if (i73 < 0) {
                                                    throw zzje.zzf();
                                                }
                                                if (i73 == 0) {
                                                    zzjbVar.add("");
                                                } else {
                                                    int i74 = iZzi3 + i73;
                                                    if (!zzma.zzf(bArr2, iZzi3, i74)) {
                                                        throw zzje.zzd();
                                                    }
                                                    zzjbVar.add(new String(bArr2, iZzi3, i73, zzjc.zzb));
                                                    iZzi3 = i74;
                                                }
                                                while (iZzi3 < i32) {
                                                    int iZzi10 = zzgk.zzi(bArr2, iZzi3, zzgjVar6);
                                                    if (i35 == zzgjVar6.zza) {
                                                        iZzi3 = zzgk.zzi(bArr2, iZzi10, zzgjVar6);
                                                        int i75 = zzgjVar6.zza;
                                                        if (i75 < 0) {
                                                            throw zzje.zzf();
                                                        }
                                                        if (i75 == 0) {
                                                            zzjbVar.add("");
                                                            while (iZzi3 < i32) {
                                                            }
                                                        } else {
                                                            int i76 = iZzi3 + i75;
                                                            if (!zzma.zzf(bArr2, iZzi3, i76)) {
                                                                throw zzje.zzd();
                                                            }
                                                            zzjbVar.add(new String(bArr2, iZzi3, i75, zzjc.zzb));
                                                            iZzi3 = i76;
                                                        }
                                                    }
                                                }
                                            }
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = iZzi3;
                                            i31 = i32;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        i31 = i32;
                                        zzgjVar5 = zzgjVar6;
                                        i30 = i35;
                                        i29 = i34;
                                        i28 = i33;
                                        iZzi2 = i27;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case 27:
                                        unsafe = unsafe6;
                                        i27 = iZzj;
                                        if (i49 == 2) {
                                            i33 = iZzs;
                                            i34 = i47;
                                            i35 = i51;
                                            zzgjVar6 = zzgjVar8;
                                            i32 = i2;
                                            iZzi3 = zzgk.zze(zzkhVar.zzx(iZzs), i51, bArr, i27, i2, zzjbVar, zzgjVar);
                                            zzgjVar5 = zzgjVar6;
                                            i30 = i35;
                                            i29 = i34;
                                            i28 = i33;
                                            iZzi2 = iZzi3;
                                            i31 = i32;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        } else {
                                            i28 = iZzs;
                                            i29 = i47;
                                            zzgjVar5 = zzgjVar8;
                                            i31 = i2;
                                            i30 = i51;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        break;
                                    case 28:
                                        unsafe = unsafe6;
                                        i36 = i2;
                                        i27 = iZzj;
                                        if (i49 == 2) {
                                            iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar8);
                                            int i77 = zzgjVar8.zza;
                                            if (i77 < 0) {
                                                throw zzje.zzf();
                                            }
                                            if (i77 > bArr2.length - iZzi2) {
                                                throw zzje.zzj();
                                            }
                                        }
                                        i28 = iZzs;
                                        i29 = i47;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i36;
                                        i30 = i51;
                                        iZzi2 = i27;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case 30:
                                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                                        unsafe = unsafe6;
                                        i36 = i2;
                                        i27 = iZzj;
                                        if (i49 == 2) {
                                            iZzk = zzgk.zzf(bArr2, i27, zzjbVar, zzgjVar8);
                                        } else {
                                            if (i49 == 0) {
                                                iZzk = zzgk.zzk(i51, bArr, i27, i2, zzjbVar, zzgjVar);
                                            }
                                            i28 = iZzs;
                                            i29 = i47;
                                            zzgjVar5 = zzgjVar8;
                                            i31 = i36;
                                            i30 = i51;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        int i78 = iZzk;
                                        zzkt.zzo(obj, i47, zzjbVar, zzkhVar.zzw(iZzs), null, zzkhVar.zzn);
                                        i28 = iZzs;
                                        iZzi2 = i78;
                                        i29 = i47;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i36;
                                        i30 = i51;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                                        unsafe = unsafe6;
                                        i36 = i2;
                                        i27 = iZzj;
                                        if (i49 == 2) {
                                            zziu zziuVar3 = (zziu) zzjbVar;
                                            iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar8);
                                            int i79 = zzgjVar8.zza + iZzi2;
                                            while (iZzi2 < i79) {
                                                iZzi2 = zzgk.zzi(bArr2, iZzi2, zzgjVar8);
                                                zziuVar3.zzg(zzhc.zzF(zzgjVar8.zza));
                                            }
                                            if (iZzi2 != i79) {
                                                throw zzje.zzj();
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                zziu zziuVar4 = (zziu) zzjbVar;
                                                iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar8);
                                                while (true) {
                                                    zziuVar4.zzg(zzhc.zzF(zzgjVar8.zza));
                                                    if (iZzi2 < i36) {
                                                        int iZzi11 = zzgk.zzi(bArr2, iZzi2, zzgjVar8);
                                                        if (i51 == zzgjVar8.zza) {
                                                            iZzi2 = zzgk.zzi(bArr2, iZzi11, zzgjVar8);
                                                        }
                                                    }
                                                }
                                            }
                                            i28 = iZzs;
                                            i29 = i47;
                                            zzgjVar5 = zzgjVar8;
                                            i31 = i36;
                                            i30 = i51;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        i28 = iZzs;
                                        i29 = i47;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i36;
                                        i30 = i51;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                        unsafe = unsafe6;
                                        i36 = i2;
                                        i27 = iZzj;
                                        if (i49 == 2) {
                                            zzjt zzjtVar5 = (zzjt) zzjbVar;
                                            iZzi2 = zzgk.zzi(bArr2, i27, zzgjVar8);
                                            int i80 = zzgjVar8.zza + iZzi2;
                                            while (iZzi2 < i80) {
                                                iZzi2 = zzgk.zzl(bArr2, iZzi2, zzgjVar8);
                                                zzjtVar5.zzg(zzhc.zzG(zzgjVar8.zzb));
                                            }
                                            if (iZzi2 != i80) {
                                                throw zzje.zzj();
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                zzjt zzjtVar6 = (zzjt) zzjbVar;
                                                iZzi2 = zzgk.zzl(bArr2, i27, zzgjVar8);
                                                while (true) {
                                                    zzjtVar6.zzg(zzhc.zzG(zzgjVar8.zzb));
                                                    if (iZzi2 < i36) {
                                                        int iZzi12 = zzgk.zzi(bArr2, iZzi2, zzgjVar8);
                                                        if (i51 == zzgjVar8.zza) {
                                                            iZzi2 = zzgk.zzl(bArr2, iZzi12, zzgjVar8);
                                                        }
                                                    }
                                                }
                                            }
                                            i28 = iZzs;
                                            i29 = i47;
                                            zzgjVar5 = zzgjVar8;
                                            i31 = i36;
                                            i30 = i51;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        i28 = iZzs;
                                        i29 = i47;
                                        zzgjVar5 = zzgjVar8;
                                        i31 = i36;
                                        i30 = i51;
                                        zzkhVar = this;
                                        if (iZzi2 == i27) {
                                        }
                                        break;
                                    default:
                                        if (i49 == 3) {
                                            int i81 = (i51 & (-8)) | 4;
                                            zzkr zzkrVarZzx = zzkhVar.zzx(iZzs);
                                            i27 = iZzj;
                                            unsafe = unsafe6;
                                            iZzi2 = zzgk.zzc(zzkrVarZzx, bArr, iZzj, i2, i81, zzgjVar);
                                            zzjbVar.add(zzgjVar8.zzc);
                                            for (int i82 = i2; iZzi2 < i82; i82 = i82) {
                                                int iZzi13 = zzgk.zzi(bArr2, iZzi2, zzgjVar8);
                                                if (i51 == zzgjVar8.zza) {
                                                    iZzi2 = zzgk.zzc(zzkrVarZzx, bArr, iZzi13, i2, i81, zzgjVar);
                                                    zzjbVar.add(zzgjVar8.zzc);
                                                } else {
                                                    i36 = i82;
                                                    i28 = iZzs;
                                                    i29 = i47;
                                                    zzgjVar5 = zzgjVar8;
                                                    i31 = i36;
                                                    i30 = i51;
                                                    zzkhVar = this;
                                                    if (iZzi2 == i27) {
                                                    }
                                                }
                                            }
                                            i36 = i82;
                                            i28 = iZzs;
                                            i29 = i47;
                                            zzgjVar5 = zzgjVar8;
                                            i31 = i36;
                                            i30 = i51;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        } else {
                                            unsafe = unsafe6;
                                            i27 = iZzj;
                                            i28 = iZzs;
                                            i29 = i47;
                                            i30 = i51;
                                            zzgjVar5 = zzgjVar8;
                                            i31 = i2;
                                            iZzi2 = i27;
                                            zzkhVar = this;
                                            if (iZzi2 == i27) {
                                            }
                                        }
                                        break;
                                }
                            } else {
                                unsafe = unsafe6;
                                int i83 = iZzj;
                                i18 = iZzs;
                                i20 = i47;
                                i19 = i51;
                                zzgjVar4 = zzgjVar8;
                                if (iZzt != 50) {
                                    zzkhVar = this;
                                    obj3 = obj;
                                    Unsafe unsafe8 = zzb;
                                    long j8 = iArr[i18 + 2] & 1048575;
                                    switch (iZzt) {
                                        case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j = j6;
                                            i23 = i19;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 1) {
                                                iZzl2 = i22 + 8;
                                                objValueOf = Double.valueOf(Double.longBitsToDouble(zzgk.zzp(bArr2, i22)));
                                                unsafe8.putObject(obj3, j, objValueOf);
                                                unsafe8.putInt(obj3, j8, i9);
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                    iZzs = i21;
                                                    i38 = i2;
                                                    i39 = i3;
                                                    i42 = i9;
                                                    zzgjVar7 = zzgjVar2;
                                                    i45 = i23;
                                                    i43 = i17;
                                                    unsafe3 = unsafe;
                                                    i40 = 3;
                                                    i41 = -1;
                                                    break;
                                                } else {
                                                    i4 = i3;
                                                    iZzl = iZzm;
                                                    i7 = i23;
                                                    i43 = i17;
                                                    i8 = i21;
                                                    break;
                                                }
                                            }
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                        case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j = j6;
                                            i23 = i19;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 5) {
                                                iZzl2 = i22 + 4;
                                                objValueOf = Float.valueOf(Float.intBitsToFloat(zzgk.zzb(bArr2, i22)));
                                                unsafe8.putObject(obj3, j, objValueOf);
                                                unsafe8.putInt(obj3, j8, i9);
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                        case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j = j6;
                                            i24 = i19;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 0) {
                                                iZzl2 = zzgk.zzl(bArr2, i22, zzgjVar2);
                                                i23 = i24;
                                                objValueOf = Long.valueOf(zzgjVar2.zzb);
                                                unsafe8.putObject(obj3, j, objValueOf);
                                                unsafe8.putInt(obj3, j8, i9);
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i23 = i24;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                        case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j2 = j6;
                                            i24 = i19;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 0) {
                                                iZzl2 = zzgk.zzi(bArr2, i22, zzgjVar2);
                                                objValueOf2 = Integer.valueOf(zzgjVar2.zza);
                                                unsafe8.putObject(obj3, j2, objValueOf2);
                                                unsafe8.putInt(obj3, j8, i9);
                                                i23 = i24;
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i23 = i24;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_colorError /* 56 */:
                                        case 65:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j2 = j6;
                                            i24 = i19;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 1) {
                                                iZzl2 = i22 + 8;
                                                objValueOf2 = Long.valueOf(zzgk.zzp(bArr2, i22));
                                                unsafe8.putObject(obj3, j2, objValueOf2);
                                                unsafe8.putInt(obj3, j8, i9);
                                                i23 = i24;
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i23 = i24;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                        case 64:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j3 = j6;
                                            i25 = i19;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 5) {
                                                iZzl2 = i22 + 4;
                                                objValueOf3 = Integer.valueOf(zzgk.zzb(bArr2, i22));
                                                unsafe8.putObject(obj3, j3, objValueOf3);
                                                unsafe8.putInt(obj3, j8, i9);
                                                i23 = i25;
                                                i5 = 1;
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i23 = i25;
                                            i5 = 1;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            j3 = j6;
                                            i25 = i19;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 0) {
                                                iZzl2 = zzgk.zzl(bArr2, i22, zzgjVar2);
                                                objValueOf3 = Boolean.valueOf(zzgjVar2.zzb != 0);
                                                unsafe8.putObject(obj3, j3, objValueOf3);
                                                unsafe8.putInt(obj3, j8, i9);
                                                i23 = i25;
                                                i5 = 1;
                                                iZzm = iZzl2;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i23 = i25;
                                            i5 = 1;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            i25 = i19;
                                            zzgjVar2 = zzgjVar4;
                                            if (i49 == 2) {
                                                int iZzi14 = zzgk.zzi(bArr2, i22, zzgjVar2);
                                                int i84 = zzgjVar2.zza;
                                                if (i84 == 0) {
                                                    unsafe8.putObject(obj3, j6, "");
                                                } else {
                                                    int i85 = iZzi14 + i84;
                                                    if ((i50 & 536870912) != 0 && !zzma.zzf(bArr2, iZzi14, i85)) {
                                                        throw zzje.zzd();
                                                    }
                                                    unsafe8.putObject(obj3, j6, new String(bArr2, iZzi14, i84, zzjc.zzb));
                                                    iZzi14 = i85;
                                                }
                                                unsafe8.putInt(obj3, j8, i9);
                                                i23 = i25;
                                                iZzm = iZzi14;
                                                i5 = 1;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i23 = i25;
                                            i5 = 1;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                                            i22 = i83;
                                            i26 = i19;
                                            if (i49 == 2) {
                                                Object objZzB = zzkhVar.zzB(obj3, i20, i18);
                                                int iZzn2 = zzgk.zzn(objZzB, zzkhVar.zzx(i18), bArr, i22, i2, zzgjVar);
                                                zzkhVar.zzK(obj3, i20, i18, objZzB);
                                                zzgjVar2 = zzgjVar4;
                                                i21 = i18;
                                                i9 = i20;
                                                i23 = i26;
                                                iZzm = iZzn2;
                                                i22 = i22;
                                                i5 = 1;
                                                if (iZzm == i22) {
                                                }
                                            } else {
                                                i21 = i18;
                                                i9 = i20;
                                                i23 = i26;
                                                i5 = 1;
                                                zzgjVar2 = zzgjVar4;
                                                iZzm = i22;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                                            i22 = i83;
                                            i26 = i19;
                                            if (i49 == 2) {
                                                iZza = zzgk.zza(bArr2, i22, zzgjVar4);
                                                unsafe8.putObject(obj3, j6, zzgjVar4.zzc);
                                                unsafe8.putInt(obj3, j8, i20);
                                                i21 = i18;
                                                i9 = i20;
                                                i23 = i26;
                                                iZzm = iZza;
                                                i5 = 1;
                                                zzgjVar2 = zzgjVar4;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i21 = i18;
                                            i9 = i20;
                                            i23 = i26;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                                            i22 = i83;
                                            i26 = i19;
                                            if (i49 == 0) {
                                                iZza = zzgk.zzi(bArr2, i22, zzgjVar4);
                                                int i86 = zzgjVar4.zza;
                                                zzix zzixVarZzw2 = zzkhVar.zzw(i18);
                                                if (zzixVarZzw2 == null || zzixVarZzw2.zza(i86)) {
                                                    unsafe8.putObject(obj3, j6, Integer.valueOf(i86));
                                                    unsafe8.putInt(obj3, j8, i20);
                                                    i21 = i18;
                                                    i9 = i20;
                                                    i23 = i26;
                                                    iZzm = iZza;
                                                    i5 = 1;
                                                    zzgjVar2 = zzgjVar4;
                                                    if (iZzm == i22) {
                                                    }
                                                } else {
                                                    zzd(obj).zzj(i26, Long.valueOf(i86));
                                                    i21 = i18;
                                                    i9 = i20;
                                                    i23 = i26;
                                                    iZzm = iZza;
                                                    i5 = 1;
                                                    zzgjVar2 = zzgjVar4;
                                                    if (iZzm == i22) {
                                                    }
                                                }
                                            }
                                            i21 = i18;
                                            i9 = i20;
                                            i23 = i26;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                                            i22 = i83;
                                            j4 = j6;
                                            i26 = i19;
                                            if (i49 == 0) {
                                                iZza = zzgk.zzi(bArr2, i22, zzgjVar4);
                                                objValueOf4 = Integer.valueOf(zzhc.zzF(zzgjVar4.zza));
                                                unsafe8.putObject(obj3, j4, objValueOf4);
                                                unsafe8.putInt(obj3, j8, i20);
                                                i21 = i18;
                                                i9 = i20;
                                                i23 = i26;
                                                iZzm = iZza;
                                                i5 = 1;
                                                zzgjVar2 = zzgjVar4;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i21 = i18;
                                            i9 = i20;
                                            i23 = i26;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                                            i22 = i83;
                                            i26 = i19;
                                            if (i49 == 0) {
                                                iZza = zzgk.zzl(bArr2, i22, zzgjVar4);
                                                objValueOf4 = Long.valueOf(zzhc.zzG(zzgjVar4.zzb));
                                                j4 = j6;
                                                unsafe8.putObject(obj3, j4, objValueOf4);
                                                unsafe8.putInt(obj3, j8, i20);
                                                i21 = i18;
                                                i9 = i20;
                                                i23 = i26;
                                                iZzm = iZza;
                                                i5 = 1;
                                                zzgjVar2 = zzgjVar4;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            i21 = i18;
                                            i9 = i20;
                                            i23 = i26;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                        case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                                            if (i49 == 3) {
                                                Object objZzB2 = zzkhVar.zzB(obj3, i20, i18);
                                                i22 = i83;
                                                iZzm = zzgk.zzm(objZzB2, zzkhVar.zzx(i18), bArr, i83, i2, (i19 & (-8)) | 4, zzgjVar);
                                                zzkhVar.zzK(obj3, i20, i18, objZzB2);
                                                i21 = i18;
                                                i9 = i20;
                                                i23 = i19;
                                                i5 = 1;
                                                zzgjVar2 = zzgjVar4;
                                                if (iZzm == i22) {
                                                }
                                            } else {
                                                i21 = i18;
                                                i9 = i20;
                                                i22 = i83;
                                                i23 = i19;
                                                i5 = 1;
                                                zzgjVar2 = zzgjVar4;
                                                iZzm = i22;
                                                if (iZzm == i22) {
                                                }
                                            }
                                            break;
                                        default:
                                            i21 = i18;
                                            i9 = i20;
                                            i22 = i83;
                                            i23 = i19;
                                            i5 = 1;
                                            zzgjVar2 = zzgjVar4;
                                            iZzm = i22;
                                            if (iZzm == i22) {
                                            }
                                            break;
                                    }
                                } else {
                                    if (i49 == 2) {
                                        Unsafe unsafe9 = zzb;
                                        Object objZzz = zzz(i18);
                                        Object object = unsafe9.getObject(obj, j6);
                                        if (zzjz.zza(object)) {
                                            zzjy zzjyVarZzb = zzjy.zza().zzb();
                                            zzjz.zzb(zzjyVarZzb, object);
                                            unsafe9.putObject(obj, j6, zzjyVarZzb);
                                        }
                                        throw null;
                                    }
                                    zzkhVar = this;
                                    iZzl = i83;
                                    obj3 = obj;
                                }
                            }
                        } else if (i49 == 2) {
                            zzjb zzjbVarZzd2 = (zzjb) unsafe3.getObject(obj3, j6);
                            if (!zzjbVarZzd2.zzc()) {
                                int size2 = zzjbVarZzd2.size();
                                zzjbVarZzd2 = zzjbVarZzd2.zzd(size2 == 0 ? 10 : size2 + size2);
                                unsafe3.putObject(obj3, j6, zzjbVarZzd2);
                            }
                            iZzm = zzgk.zze(zzkhVar.zzx(iZzs), i51, bArr, iZzj, i2, zzjbVarZzd2, zzgjVar);
                            iZzs = iZzs;
                            unsafe3 = unsafe3;
                            i45 = i51;
                            i42 = i47;
                            i43 = i43;
                            i41 = -1;
                            i38 = i2;
                            i39 = i3;
                            zzgjVar7 = zzgjVar8;
                            i40 = 3;
                        } else {
                            i17 = i43;
                            unsafe = unsafe3;
                            zzgjVar4 = zzgjVar8;
                            i18 = iZzs;
                            i19 = i51;
                            iZzl = iZzj;
                            i20 = i47;
                        }
                        i4 = i3;
                        i8 = i18;
                        i9 = i20;
                        i43 = i17;
                        i7 = i19;
                        i5 = 1;
                        zzgjVar2 = zzgjVar4;
                    }
                }
                if (i7 != i4 || i4 == 0) {
                    if (zzkhVar.zzh && (zzieVar = zzgjVar2.zzd) != zzie.zza) {
                        zzir zzirVarZza = zzieVar.zza(zzkhVar.zzg, i9);
                        if (zzirVarZza != null) {
                            i10 = i9;
                            zzgj zzgjVar10 = zzgjVar2;
                            zzip zzipVar = (zzip) obj3;
                            zzipVar.zzi();
                            zzij zzijVar = zzipVar.zzb;
                            zzmb zzmbVar = zzirVarZza.zzb.zzb;
                            if (zzmbVar == zzmb.zzn) {
                                zzgk.zzi(bArr2, iZzl, zzgjVar10);
                                throw null;
                            }
                            switch (zzmbVar.ordinal()) {
                                case 0:
                                    i11 = iZzl + 8;
                                    objValueOf5 = Double.valueOf(Double.longBitsToDouble(zzgk.zzp(bArr2, iZzl)));
                                    iZzl = i11;
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 1:
                                    i11 = iZzl + 4;
                                    objValueOf5 = Float.valueOf(Float.intBitsToFloat(zzgk.zzb(bArr2, iZzl)));
                                    iZzl = i11;
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 2:
                                case 3:
                                    iZzl = zzgk.zzl(bArr2, iZzl, zzgjVar10);
                                    jZzG = zzgjVar10.zzb;
                                    objValueOf5 = Long.valueOf(jZzG);
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 4:
                                case 12:
                                    iZzl = zzgk.zzi(bArr2, iZzl, zzgjVar10);
                                    iZzF = zzgjVar10.zza;
                                    objValueOf5 = Integer.valueOf(iZzF);
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 5:
                                case 15:
                                    i11 = iZzl + 8;
                                    objValueOf5 = Long.valueOf(zzgk.zzp(bArr2, iZzl));
                                    iZzl = i11;
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 6:
                                case 14:
                                    i11 = iZzl + 4;
                                    objValueOf5 = Integer.valueOf(zzgk.zzb(bArr2, iZzl));
                                    iZzl = i11;
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 7:
                                    iZzl = zzgk.zzl(bArr2, iZzl, zzgjVar10);
                                    objValueOf5 = Boolean.valueOf(zzgjVar10.zzb != 0);
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 8:
                                    iZzl = zzgk.zzg(bArr2, iZzl, zzgjVar10);
                                    obj2 = zzgjVar10.zzc;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 9:
                                    int i87 = zzkn.zza;
                                    throw null;
                                case 10:
                                    int i88 = zzkn.zza;
                                    throw null;
                                case 11:
                                    iZzl = zzgk.zza(bArr2, iZzl, zzgjVar10);
                                    obj2 = zzgjVar10.zzc;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 13:
                                    throw new IllegalStateException("Shouldn't reach here.");
                                case 16:
                                    iZzl = zzgk.zzi(bArr2, iZzl, zzgjVar10);
                                    iZzF = zzhc.zzF(zzgjVar10.zza);
                                    objValueOf5 = Integer.valueOf(iZzF);
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                case 17:
                                    iZzl = zzgk.zzl(bArr2, iZzl, zzgjVar10);
                                    jZzG = zzhc.zzG(zzgjVar10.zzb);
                                    objValueOf5 = Long.valueOf(jZzG);
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                                default:
                                    obj2 = objValueOf5;
                                    zzijVar.zzi(zzirVarZza.zzb, obj2);
                                    iZzh = iZzl;
                                    break;
                            }
                        } else {
                            i10 = i9;
                            iZzh = zzgk.zzh(i7, bArr, iZzl, i2, zzd(obj), zzgjVar);
                        }
                    } else {
                        i10 = i9;
                        iZzh = zzgk.zzh(i7, bArr, iZzl, i2, zzd(obj), zzgjVar);
                    }
                    i38 = i2;
                    zzgjVar7 = zzgjVar;
                    iZzs = i8;
                    i39 = i4;
                    i45 = i7;
                    i42 = i10;
                    unsafe3 = unsafe;
                    i40 = 3;
                    i41 = -1;
                    iZzm = iZzh;
                } else {
                    iZzm = iZzl;
                    i6 = i44;
                }
            } else {
                i4 = i39;
                unsafe = unsafe3;
                i5 = 1;
                i6 = i44;
                i7 = i45;
            }
        }
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final Object zze() {
        return ((zzit) this.zzg).zzs();
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
    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzf(java.lang.Object r8) {
        /*
            r7 = this;
            boolean r0 = zzQ(r8)
            if (r0 != 0) goto L8
            goto L85
        L8:
            boolean r0 = r8 instanceof com.google.android.recaptcha.internal.zzit
            r1 = 0
            if (r0 == 0) goto L1b
            r0 = r8
            com.google.android.recaptcha.internal.zzit r0 = (com.google.android.recaptcha.internal.zzit) r0
            r2 = 2147483647(0x7fffffff, float:NaN)
            r0.zzE(r2)
            r0.zza = r1
            r0.zzC()
        L1b:
            int[] r0 = r7.zzc
        L1d:
            int r2 = r0.length
            if (r1 >= r2) goto L77
            int r2 = r7.zzu(r1)
            r3 = 1048575(0xfffff, float:1.469367E-39)
            r3 = r3 & r2
            int r2 = zzt(r2)
            long r3 = (long) r3
            r5 = 9
            if (r2 == r5) goto L6d
            r5 = 60
            if (r2 == r5) goto L55
            r5 = 68
            if (r2 == r5) goto L55
            switch(r2) {
                case 17: goto L6d;
                case 18: goto L4f;
                case 19: goto L4f;
                case 20: goto L4f;
                case 21: goto L4f;
                case 22: goto L4f;
                case 23: goto L4f;
                case 24: goto L4f;
                case 25: goto L4f;
                case 26: goto L4f;
                case 27: goto L4f;
                case 28: goto L4f;
                case 29: goto L4f;
                case 30: goto L4f;
                case 31: goto L4f;
                case 32: goto L4f;
                case 33: goto L4f;
                case 34: goto L4f;
                case 35: goto L4f;
                case 36: goto L4f;
                case 37: goto L4f;
                case 38: goto L4f;
                case 39: goto L4f;
                case 40: goto L4f;
                case 41: goto L4f;
                case 42: goto L4f;
                case 43: goto L4f;
                case 44: goto L4f;
                case 45: goto L4f;
                case 46: goto L4f;
                case 47: goto L4f;
                case 48: goto L4f;
                case 49: goto L4f;
                case 50: goto L3d;
                default: goto L3c;
            }
        L3c:
            goto L74
        L3d:
            sun.misc.Unsafe r2 = com.google.android.recaptcha.internal.zzkh.zzb
            java.lang.Object r5 = r2.getObject(r8, r3)
            if (r5 == 0) goto L74
            r6 = r5
            com.google.android.recaptcha.internal.zzjy r6 = (com.google.android.recaptcha.internal.zzjy) r6
            r6.zzc()
            r2.putObject(r8, r3, r5)
            goto L74
        L4f:
            com.google.android.recaptcha.internal.zzjs r2 = r7.zzm
            r2.zzb(r8, r3)
            goto L74
        L55:
            int[] r2 = r7.zzc
            r2 = r2[r1]
            boolean r2 = r7.zzR(r8, r2, r1)
            if (r2 == 0) goto L74
        L5f:
            com.google.android.recaptcha.internal.zzkr r2 = r7.zzx(r1)
            sun.misc.Unsafe r5 = com.google.android.recaptcha.internal.zzkh.zzb
            java.lang.Object r3 = r5.getObject(r8, r3)
            r2.zzf(r3)
            goto L74
        L6d:
            boolean r2 = r7.zzN(r8, r1)
            if (r2 == 0) goto L74
            goto L5f
        L74:
            int r1 = r1 + 3
            goto L1d
        L77:
            com.google.android.recaptcha.internal.zzll r0 = r7.zzn
            r0.zzm(r8)
            boolean r0 = r7.zzh
            if (r0 == 0) goto L85
            com.google.android.recaptcha.internal.zzif r0 = r7.zzo
            r0.zzf(r8)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzkh.zzf(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            int i2 = 1048575 & iZzu;
            int[] iArr = this.zzc;
            int iZzt = zzt(iZzu);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzt) {
                case 0:
                    if (zzN(obj2, i)) {
                        zzlv.zzo(obj, j, zzlv.zza(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzN(obj2, i)) {
                        zzlv.zzp(obj, j, zzlv.zzb(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzr(obj, j, zzlv.zzd(obj2, j));
                    zzH(obj, i);
                    break;
                case 3:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzr(obj, j, zzlv.zzd(obj2, j));
                    zzH(obj, i);
                    break;
                case 4:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzq(obj, j, zzlv.zzc(obj2, j));
                    zzH(obj, i);
                    break;
                case 5:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzr(obj, j, zzlv.zzd(obj2, j));
                    zzH(obj, i);
                    break;
                case 6:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzq(obj, j, zzlv.zzc(obj2, j));
                    zzH(obj, i);
                    break;
                case 7:
                    if (zzN(obj2, i)) {
                        zzlv.zzm(obj, j, zzlv.zzw(obj2, j));
                        zzH(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzs(obj, j, zzlv.zzf(obj2, j));
                    zzH(obj, i);
                    break;
                case 9:
                case 17:
                    zzE(obj, obj2, i);
                    break;
                case 10:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzs(obj, j, zzlv.zzf(obj2, j));
                    zzH(obj, i);
                    break;
                case 11:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzq(obj, j, zzlv.zzc(obj2, j));
                    zzH(obj, i);
                    break;
                case 12:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzq(obj, j, zzlv.zzc(obj2, j));
                    zzH(obj, i);
                    break;
                case 13:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzq(obj, j, zzlv.zzc(obj2, j));
                    zzH(obj, i);
                    break;
                case 14:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzr(obj, j, zzlv.zzd(obj2, j));
                    zzH(obj, i);
                    break;
                case 15:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzq(obj, j, zzlv.zzc(obj2, j));
                    zzH(obj, i);
                    break;
                case 16:
                    if (!zzN(obj2, i)) {
                        break;
                    }
                    zzlv.zzr(obj, j, zzlv.zzd(obj2, j));
                    zzH(obj, i);
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
                    this.zzm.zzc(obj, obj2, j);
                    break;
                case 50:
                    int i4 = zzkt.zza;
                    zzlv.zzs(obj, j, zzjz.zzb(zzlv.zzf(obj, j), zzlv.zzf(obj2, j)));
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
                    if (zzR(obj2, i3, i)) {
                        zzlv.zzs(obj, j, zzlv.zzf(obj2, j));
                        zzI(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    zzF(obj, obj2, i);
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case 64:
                case 65:
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzR(obj2, i3, i)) {
                        break;
                    }
                    break;
            }
        }
        zzkt.zzr(this.zzn, obj, obj2);
        if (this.zzh) {
            zzkt.zzq(this.zzo, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x059e A[Catch: all -> 0x00fc, TryCatch #6 {all -> 0x00fc, blocks: (B:57:0x00da, B:177:0x0599, B:179:0x059e, B:180:0x05a3, B:110:0x02ad, B:112:0x02b6, B:113:0x02c2, B:114:0x02c6, B:115:0x02d2, B:116:0x02d6, B:117:0x02e2, B:118:0x02e6, B:119:0x02f2, B:120:0x02f6, B:121:0x0302, B:122:0x0306, B:123:0x0312, B:124:0x0316, B:125:0x0322, B:126:0x0326, B:127:0x0332, B:128:0x0337, B:129:0x0343, B:130:0x0348, B:131:0x0359, B:132:0x036a, B:133:0x037b, B:134:0x038c, B:135:0x03a8, B:136:0x03b6, B:137:0x03c7, B:138:0x03dc, B:140:0x03e5, B:141:0x03f7, B:142:0x0409, B:143:0x0417, B:144:0x0425, B:145:0x0433, B:146:0x0441, B:147:0x044f, B:148:0x045d, B:149:0x046b, B:150:0x0479, B:151:0x0489, B:152:0x048e, B:153:0x049b, B:154:0x04a0, B:155:0x04ae, B:156:0x04bc, B:157:0x04ca, B:159:0x04d7, B:162:0x04de, B:163:0x04e4, B:164:0x04eb, B:165:0x04f9, B:166:0x0507, B:167:0x0519, B:168:0x0521, B:169:0x0530, B:170:0x053f, B:171:0x054e, B:172:0x055d, B:173:0x056c, B:174:0x057b, B:175:0x058a), top: B:200:0x00da }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05c3  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x05ce A[LOOP:3: B:190:0x05ca->B:192:0x05ce, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:233:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh(Object obj, zzkq zzkqVar, zzie zzieVar) throws Throwable {
        zzll zzllVar;
        Object obj2;
        int i;
        Object obj3;
        zzie zzieVar2;
        zzif zzifVar;
        zzke zzkeVar;
        List listZza;
        List listZza2;
        List listZza3;
        List listZza4;
        List listZza5;
        List listZza6;
        List listZza7;
        List listZza8;
        List listZza9;
        zzke zzkeVar2;
        Object obj4 = obj;
        zzie zzieVar3 = zzieVar;
        zzieVar.getClass();
        zzD(obj);
        zzll zzllVar2 = this.zzn;
        zzif zzifVar2 = this.zzo;
        zzij zzijVar = null;
        Object objZzc = null;
        while (true) {
            try {
                int iZzc = zzkqVar.zzc();
                int iZzq = zzq(iZzc);
                if (iZzq >= 0) {
                    obj3 = objZzc;
                    zzllVar = zzllVar2;
                    obj2 = obj4;
                    try {
                        int iZzu = zzu(iZzq);
                        try {
                        } catch (zzjd unused) {
                            objZzc = obj3;
                        }
                        switch (zzt(iZzu)) {
                            case 0:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzo(obj2, iZzu & 1048575, zzkqVar.zza());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 1:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzp(obj2, iZzu & 1048575, zzkqVar.zzb());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 2:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzr(obj2, iZzu & 1048575, zzkqVar.zzl());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 3:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzr(obj2, iZzu & 1048575, zzkqVar.zzo());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 4:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzq(obj2, iZzu & 1048575, zzkqVar.zzg());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 5:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzr(obj2, iZzu & 1048575, zzkqVar.zzk());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 6:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzq(obj2, iZzu & 1048575, zzkqVar.zzf());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 7:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzm(obj2, iZzu & 1048575, zzkqVar.zzN());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 8:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzG(obj2, iZzu, zzkqVar);
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 9:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkeVar = (zzke) zzA(obj2, iZzq);
                                zzkqVar.zzu(zzkeVar, zzx(iZzq), zzieVar2);
                                zzJ(obj2, iZzq, zzkeVar);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 10:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzs(obj2, iZzu & 1048575, zzkqVar.zzp());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 11:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzq(obj2, iZzu & 1048575, zzkqVar.zzj());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 12:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                int iZze = zzkqVar.zze();
                                zzix zzixVarZzw = zzw(iZzq);
                                if (zzixVarZzw != null && !zzixVarZzw.zza(iZze)) {
                                    objZzc = zzkt.zzp(obj2, iZzc, iZze, objZzc, zzllVar);
                                    obj4 = obj2;
                                    zzifVar2 = zzifVar;
                                    zzieVar3 = zzieVar2;
                                    zzllVar2 = zzllVar;
                                }
                                zzlv.zzq(obj2, iZzu & 1048575, iZze);
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                                break;
                            case 13:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzq(obj2, iZzu & 1048575, zzkqVar.zzh());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 14:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzr(obj2, iZzu & 1048575, zzkqVar.zzm());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 15:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzq(obj2, iZzu & 1048575, zzkqVar.zzi());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 16:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzlv.zzr(obj2, iZzu & 1048575, zzkqVar.zzn());
                                zzH(obj2, iZzq);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 17:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkeVar = (zzke) zzA(obj2, iZzq);
                                zzkqVar.zzt(zzkeVar, zzx(iZzq), zzieVar2);
                                zzJ(obj2, iZzq, zzkeVar);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 18:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzx(listZza);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 19:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza2 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzB(listZza2);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 20:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza3 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzE(listZza3);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 21:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza4 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzM(listZza4);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 22:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza5 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzD(listZza5);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 23:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza6 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzA(listZza6);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 24:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza7 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzz(listZza7);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 25:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza8 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzv(listZza8);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 26:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                if (zzM(iZzu)) {
                                    ((zzhd) zzkqVar).zzK(this.zzm.zza(obj2, iZzu & 1048575), true);
                                } else {
                                    ((zzhd) zzkqVar).zzK(this.zzm.zza(obj2, iZzu & 1048575), false);
                                }
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 27:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkqVar.zzF(this.zzm.zza(obj2, iZzu & 1048575), zzx(iZzq), zzieVar2);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 28:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkqVar.zzw(this.zzm.zza(obj2, iZzu & 1048575));
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 29:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza9 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzL(listZza9);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 30:
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                List listZza10 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzy(listZza10);
                                objZzc = zzkt.zzo(obj, iZzc, listZza10, zzw(iZzq), obj3, zzllVar);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 31:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkqVar.zzG(this.zzm.zza(obj2, iZzu & 1048575));
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 32:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkqVar.zzH(this.zzm.zza(obj2, iZzu & 1048575));
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkqVar.zzI(this.zzm.zza(obj2, iZzu & 1048575));
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                zzkqVar.zzJ(this.zzm.zza(obj2, iZzu & 1048575));
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzx(listZza);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza2 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzB(listZza2);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza3 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzE(listZza3);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza4 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzM(listZza4);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza5 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzD(listZza5);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza6 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzA(listZza6);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza7 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzz(listZza7);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza8 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzv(listZza8);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                listZza9 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzL(listZza9);
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                                List listZza11 = this.zzm.zza(obj2, iZzu & 1048575);
                                zzkqVar.zzy(listZza11);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                try {
                                    objZzc = zzkt.zzo(obj, iZzc, listZza11, zzw(iZzq), objZzc, zzllVar);
                                } catch (zzjd unused2) {
                                    zzllVar.zzs(zzkqVar);
                                    if (objZzc == null) {
                                    }
                                    if (!zzllVar.zzr(objZzc, zzkqVar)) {
                                    }
                                    obj4 = obj2;
                                    zzifVar2 = zzifVar;
                                    zzieVar3 = zzieVar2;
                                    zzllVar2 = zzllVar;
                                }
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                                break;
                            case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                                zzkqVar.zzG(this.zzm.zza(obj2, iZzu & 1048575));
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                                zzkqVar.zzH(this.zzm.zza(obj2, iZzu & 1048575));
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                                zzkqVar.zzI(this.zzm.zza(obj2, iZzu & 1048575));
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                zzkqVar.zzJ(this.zzm.zza(obj2, iZzu & 1048575));
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                zzkqVar.zzC(this.zzm.zza(obj2, iZzu & 1048575), zzx(iZzq), zzieVar3);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 50:
                                Object objZzz = zzz(iZzq);
                                long jZzu = zzu(iZzq) & 1048575;
                                Object objZzf = zzlv.zzf(obj2, jZzu);
                                if (objZzf == null) {
                                    objZzf = zzjy.zza().zzb();
                                    zzlv.zzs(obj2, jZzu, objZzf);
                                } else if (zzjz.zza(objZzf)) {
                                    Object objZzb = zzjy.zza().zzb();
                                    zzjz.zzb(objZzb, objZzf);
                                    zzlv.zzs(obj2, jZzu, objZzb);
                                    objZzf = objZzb;
                                }
                                throw null;
                                break;
                            case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Double.valueOf(zzkqVar.zza()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Float.valueOf(zzkqVar.zzb()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Long.valueOf(zzkqVar.zzl()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Long.valueOf(zzkqVar.zzo()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Integer.valueOf(zzkqVar.zzg()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorError /* 56 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Long.valueOf(zzkqVar.zzk()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Integer.valueOf(zzkqVar.zzf()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Boolean.valueOf(zzkqVar.zzN()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                                zzG(obj2, iZzu, zzkqVar);
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                                zzkeVar2 = (zzke) zzB(obj2, iZzc, iZzq);
                                zzkqVar.zzu(zzkeVar2, zzx(iZzq), zzieVar3);
                                zzK(obj2, iZzc, iZzq, zzkeVar2);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                                zzlv.zzs(obj2, iZzu & 1048575, zzkqVar.zzp());
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Integer.valueOf(zzkqVar.zzj()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                                int iZze2 = zzkqVar.zze();
                                zzix zzixVarZzw2 = zzw(iZzq);
                                if (zzixVarZzw2 != null && !zzixVarZzw2.zza(iZze2)) {
                                    objZzc = zzkt.zzp(obj2, iZzc, iZze2, obj3, zzllVar);
                                    obj4 = obj2;
                                    zzllVar2 = zzllVar;
                                }
                                zzlv.zzs(obj2, iZzu & 1048575, Integer.valueOf(iZze2));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                                break;
                            case 64:
                                zzlv.zzs(obj2, iZzu & 1048575, Integer.valueOf(zzkqVar.zzh()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case 65:
                                zzlv.zzs(obj2, iZzu & 1048575, Long.valueOf(zzkqVar.zzm()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Integer.valueOf(zzkqVar.zzi()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                                zzlv.zzs(obj2, iZzu & 1048575, Long.valueOf(zzkqVar.zzn()));
                                zzI(obj2, iZzc, iZzq);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                                zzkeVar2 = (zzke) zzB(obj2, iZzc, iZzq);
                                zzkqVar.zzt(zzkeVar2, zzx(iZzq), zzieVar3);
                                zzK(obj2, iZzc, iZzq, zzkeVar2);
                                objZzc = obj3;
                                zzifVar = zzifVar2;
                                zzieVar2 = zzieVar3;
                                obj4 = obj2;
                                zzifVar2 = zzifVar;
                                zzieVar3 = zzieVar2;
                                zzllVar2 = zzllVar;
                            default:
                                objZzc = obj3 == null ? zzllVar.zzc(obj2) : obj3;
                                try {
                                    try {
                                        if (!zzllVar.zzr(objZzc, zzkqVar)) {
                                            for (int i2 = this.zzk; i2 < this.zzl; i2++) {
                                                zzy(obj, this.zzj[i2], objZzc, zzllVar, obj);
                                            }
                                        }
                                        obj4 = obj2;
                                    } catch (zzjd unused3) {
                                        zzifVar = zzifVar2;
                                        zzieVar2 = zzieVar3;
                                        zzllVar.zzs(zzkqVar);
                                        if (objZzc == null) {
                                            objZzc = zzllVar.zzc(obj2);
                                        }
                                        if (!zzllVar.zzr(objZzc, zzkqVar)) {
                                            for (int i3 = this.zzk; i3 < this.zzl; i3++) {
                                                zzy(obj, this.zzj[i3], objZzc, zzllVar, obj);
                                            }
                                            if (objZzc == null) {
                                            }
                                        }
                                        obj4 = obj2;
                                        zzifVar2 = zzifVar;
                                        zzieVar3 = zzieVar2;
                                        zzllVar2 = zzllVar;
                                    }
                                    zzllVar2 = zzllVar;
                                } catch (Throwable th) {
                                    th = th;
                                    break;
                                }
                                break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        objZzc = obj3;
                        while (i < this.zzl) {
                        }
                        if (objZzc != null) {
                        }
                        throw th;
                    }
                } else if (iZzc == Integer.MAX_VALUE) {
                    for (int i4 = this.zzk; i4 < this.zzl; i4++) {
                        zzy(obj, this.zzj[i4], objZzc, zzllVar2, obj);
                    }
                    zzllVar = zzllVar2;
                    obj2 = obj4;
                } else {
                    try {
                        Object objZzd = !this.zzh ? null : zzifVar2.zzd(zzieVar3, this.zzg, iZzc);
                        if (objZzd != null) {
                            zzij zzijVarZzc = zzijVar == null ? zzifVar2.zzc(obj4) : zzijVar;
                            obj3 = objZzc;
                            zzll zzllVar3 = zzllVar2;
                            Object obj5 = obj4;
                            try {
                                zzifVar2.zze(obj, zzkqVar, objZzd, zzieVar, zzijVarZzc, obj3, zzllVar3);
                                zzijVar = zzijVarZzc;
                                obj4 = obj5;
                                zzllVar2 = zzllVar3;
                                objZzc = obj3;
                            } catch (Throwable th3) {
                                th = th3;
                                obj2 = obj5;
                                zzllVar = zzllVar3;
                                objZzc = obj3;
                                while (i < this.zzl) {
                                }
                                if (objZzc != null) {
                                }
                                throw th;
                            }
                        } else {
                            Object obj6 = objZzc;
                            zzll zzllVar4 = zzllVar2;
                            Object obj7 = obj4;
                            zzllVar4.zzs(zzkqVar);
                            objZzc = obj6 == null ? zzllVar4.zzc(obj7) : obj6;
                            try {
                                if (zzllVar4.zzr(objZzc, zzkqVar)) {
                                    obj4 = obj7;
                                    zzllVar2 = zzllVar4;
                                } else {
                                    int i5 = this.zzk;
                                    while (i5 < this.zzl) {
                                        zzll zzllVar5 = zzllVar4;
                                        zzy(obj, this.zzj[i5], objZzc, zzllVar5, obj);
                                        i5++;
                                        obj7 = obj7;
                                        zzllVar4 = zzllVar5;
                                    }
                                    obj2 = obj7;
                                    zzllVar = zzllVar4;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                obj2 = obj7;
                                zzllVar = zzllVar4;
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        zzllVar = zzllVar2;
                        obj2 = obj4;
                        while (i < this.zzl) {
                        }
                        if (objZzc != null) {
                        }
                        throw th;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
            }
            for (i = this.zzk; i < this.zzl; i++) {
                zzy(obj, this.zzj[i], objZzc, zzllVar, obj);
            }
            if (objZzc != null) {
                zzllVar.zzn(obj2, objZzc);
            }
            throw th;
        }
        if (objZzc == null) {
            zzllVar.zzn(obj2, objZzc);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgj zzgjVar) throws IOException {
        zzc(obj, bArr, i, i2, 0, zzgjVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzj(Object obj, zzmd zzmdVar) throws IOException {
        Map.Entry entry;
        Iterator it;
        int i;
        int i2;
        Map.Entry entry2;
        int i3;
        int i4;
        Iterator it2;
        int[] iArr;
        Map.Entry entry3;
        int i5;
        if (this.zzh) {
            zzij zzijVarZzb = this.zzo.zzb(obj);
            if (zzijVarZzb.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzf = zzijVarZzb.zzf();
                entry = (Map.Entry) itZzf.next();
                it = itZzf;
            }
        }
        int[] iArr2 = this.zzc;
        Unsafe unsafe = zzb;
        int i6 = 1048575;
        int i7 = 1048575;
        int i8 = 0;
        int i9 = 0;
        while (i9 < iArr2.length) {
            int iZzu = zzu(i9);
            int[] iArr3 = this.zzc;
            int iZzt = zzt(iZzu);
            int i10 = iArr3[i9];
            if (iZzt <= 17) {
                int i11 = iArr3[i9 + 2];
                int i12 = i11 & i6;
                i = iZzt;
                if (i12 != i7) {
                    i8 = i12 == i6 ? 0 : unsafe.getInt(obj, i12);
                    i7 = i12;
                }
                i2 = i7;
                entry2 = entry;
                i3 = i8;
                i4 = 1 << (i11 >>> 20);
            } else {
                i = iZzt;
                i2 = i7;
                entry2 = entry;
                i3 = i8;
                i4 = 0;
            }
            while (entry2 != null && this.zzo.zza(entry2) <= i10) {
                this.zzo.zzi(zzmdVar, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzu & 1048575;
            switch (i) {
                case 0:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzf(i10, zzlv.zza(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 1:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzo(i10, zzlv.zzb(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 2:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzt(i10, unsafe.getLong(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 3:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzK(i10, unsafe.getLong(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 4:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzr(i10, unsafe.getInt(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 5:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzm(i10, unsafe.getLong(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 6:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzk(i10, unsafe.getInt(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 7:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzb(i10, zzlv.zzw(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 8:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzT(i10, unsafe.getObject(obj, j), zzmdVar);
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 9:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzv(i10, unsafe.getObject(obj, j), zzx(i5));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 10:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzd(i10, (zzgw) unsafe.getObject(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 11:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzI(i10, unsafe.getInt(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 12:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzi(i10, unsafe.getInt(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 13:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzx(i10, unsafe.getInt(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 14:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzz(i10, unsafe.getLong(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 15:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzB(i10, unsafe.getInt(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 16:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i5, i2, i3, i4)) {
                        zzmdVar.zzD(i10, unsafe.getLong(obj, j));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 17:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    if (zzO(obj, i9, i2, i3, i4)) {
                        zzmdVar.zzq(i10, unsafe.getObject(obj, j), zzx(i5));
                    }
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 18:
                    zzkt.zzu(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 19:
                    zzkt.zzy(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 20:
                    zzkt.zzA(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 21:
                    zzkt.zzG(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 22:
                    zzkt.zzz(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 23:
                    zzkt.zzx(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 24:
                    zzkt.zzw(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 25:
                    zzkt.zzt(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 26:
                    int i13 = this.zzc[i9];
                    List list = (List) unsafe.getObject(obj, j);
                    int i14 = zzkt.zza;
                    if (list != null && !list.isEmpty()) {
                        zzmdVar.zzH(i13, list);
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                    break;
                case 27:
                    int i15 = this.zzc[i9];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzkr zzkrVarZzx = zzx(i9);
                    int i16 = zzkt.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i17 = 0; i17 < list2.size(); i17++) {
                            ((zzhi) zzmdVar).zzv(i15, list2.get(i17), zzkrVarZzx);
                        }
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                    break;
                case 28:
                    int i18 = this.zzc[i9];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i19 = zzkt.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzmdVar.zze(i18, list3);
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                    break;
                case 29:
                    zzkt.zzF(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 30:
                    zzkt.zzv(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 31:
                    zzkt.zzB(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 32:
                    zzkt.zzC(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzkt.zzD(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzkt.zzE(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, false);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzkt.zzu(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzkt.zzy(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzkt.zzA(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzkt.zzG(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzkt.zzz(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzkt.zzx(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzkt.zzw(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzkt.zzt(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzkt.zzF(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzkt.zzv(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzkt.zzB(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzkt.zzC(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzkt.zzD(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzkt.zzE(this.zzc[i9], (List) unsafe.getObject(obj, j), zzmdVar, true);
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    int i20 = this.zzc[i9];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzkr zzkrVarZzx2 = zzx(i9);
                    int i21 = zzkt.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i22 = 0; i22 < list4.size(); i22++) {
                            ((zzhi) zzmdVar).zzq(i20, list4.get(i22), zzkrVarZzx2);
                        }
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        throw null;
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzf(i10, zzn(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzo(i10, zzo(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzt(i10, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzK(i10, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzr(i10, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzm(i10, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzk(i10, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzb(i10, zzS(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzR(obj, i10, i9)) {
                        zzT(i10, unsafe.getObject(obj, j), zzmdVar);
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzv(i10, unsafe.getObject(obj, j), zzx(i9));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzd(i10, (zzgw) unsafe.getObject(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzI(i10, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzi(i10, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 64:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzx(i10, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case 65:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzz(i10, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzB(i10, zzp(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzD(i10, zzv(obj, j));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zzR(obj, i10, i9)) {
                        zzmdVar.zzq(i10, unsafe.getObject(obj, j), zzx(i9));
                    }
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
                default:
                    it2 = it;
                    iArr = iArr2;
                    entry3 = entry2;
                    i5 = i9;
                    i9 = i5 + 3;
                    i7 = i2;
                    i8 = i3;
                    it = it2;
                    iArr2 = iArr;
                    entry = entry3;
                    i6 = 1048575;
            }
        }
        Iterator it3 = it;
        while (entry != null) {
            this.zzo.zzi(zzmdVar, entry);
            entry = it3.hasNext() ? (Map.Entry) it3.next() : null;
        }
        zzll zzllVar = this.zzn;
        zzllVar.zzq(zzllVar.zzd(obj), zzmdVar);
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final boolean zzk(Object obj, Object obj2) {
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzu = zzu(i);
            long j = iZzu & 1048575;
            switch (zzt(iZzu)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzlv.zza(obj, j)) != Double.doubleToLongBits(zzlv.zza(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzlv.zzb(obj, j)) != Float.floatToIntBits(zzlv.zzb(obj2, j))) {
                        return false;
                    }
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzlv.zzd(obj, j) != zzlv.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzlv.zzd(obj, j) != zzlv.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzlv.zzc(obj, j) != zzlv.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzlv.zzd(obj, j) != zzlv.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzlv.zzc(obj, j) != zzlv.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzlv.zzw(obj, j) != zzlv.zzw(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzkt.zzH(zzlv.zzf(obj, j), zzlv.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzkt.zzH(zzlv.zzf(obj, j), zzlv.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzkt.zzH(zzlv.zzf(obj, j), zzlv.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzlv.zzc(obj, j) != zzlv.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzlv.zzc(obj, j) != zzlv.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzlv.zzc(obj, j) != zzlv.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzlv.zzd(obj, j) != zzlv.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzlv.zzc(obj, j) != zzlv.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzlv.zzd(obj, j) != zzlv.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzkt.zzH(zzlv.zzf(obj, j), zzlv.zzf(obj2, j))) {
                        return false;
                    }
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
                    if (!zzkt.zzH(zzlv.zzf(obj, j), zzlv.zzf(obj2, j))) {
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
                    long jZzr = zzr(i) & 1048575;
                    if (zzlv.zzc(obj, jZzr) != zzlv.zzc(obj2, jZzr) || !zzkt.zzH(zzlv.zzf(obj, j), zzlv.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
            }
        }
        if (!this.zzn.zzd(obj).equals(this.zzn.zzd(obj2))) {
            return false;
        }
        if (this.zzh) {
            return this.zzo.zzb(obj).equals(this.zzo.zzb(obj2));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009d  */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i5];
            int i7 = iArr2[i6];
            int iZzu = zzu(i6);
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
            if ((268435456 & iZzu) != 0 && !zzO(obj, i6, i, i2, i10)) {
                return false;
            }
            int iZzt = zzt(iZzu);
            if (iZzt == 9 || iZzt == 17) {
                if (zzO(obj, i6, i, i2, i10) && !zzP(obj, iZzu, zzx(i6))) {
                    return false;
                }
            } else if (iZzt == 27) {
                List list = (List) zzlv.zzf(obj, iZzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzkr zzkrVarZzx = zzx(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzkrVarZzx.zzl(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (iZzt == 60 || iZzt == 68) {
                if (zzR(obj, i7, i6) && !zzP(obj, iZzu, zzx(i6))) {
                    return false;
                }
            } else if (iZzt != 49) {
                if (iZzt == 50 && !((zzjy) zzlv.zzf(obj, iZzu & 1048575)).isEmpty()) {
                    throw null;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.zzh || this.zzo.zzb(obj).zzk();
    }
}
