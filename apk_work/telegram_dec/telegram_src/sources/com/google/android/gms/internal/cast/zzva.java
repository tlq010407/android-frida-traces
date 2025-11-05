package com.google.android.gms.internal.cast;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.CharacterCompat;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.R;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzva implements zzvi {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzwj.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final zzux zze;
    private final boolean zzf;
    private final int[] zzg;
    private final int zzh;
    private final zzul zzi;
    private final zzvz zzj;
    private final zztf zzk;
    private final zzvc zzl;
    private final zzus zzm;

    private zzva(int[] iArr, Object[] objArr, int i, int i2, zzux zzuxVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzvc zzvcVar, zzul zzulVar, zzvz zzvzVar, zztf zztfVar, zzus zzusVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        boolean z2 = false;
        if (zztfVar != null && zztfVar.zzc(zzuxVar)) {
            z2 = true;
        }
        this.zzf = z2;
        this.zzg = iArr2;
        this.zzh = i4;
        this.zzl = zzvcVar;
        this.zzi = zzulVar;
        this.zzj = zzvzVar;
        this.zzk = zztfVar;
        this.zze = zzuxVar;
        this.zzm = zzusVar;
    }

    private static boolean zzA(Object obj, int i, zzvi zzviVar) {
        return zzviVar.zzh(zzwj.zzf(obj, i & 1048575));
    }

    private static boolean zzB(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zztp) {
            return ((zztp) obj).zzK();
        }
        return true;
    }

    private final boolean zzC(Object obj, int i, int i2) {
        return zzwj.zzc(obj, (long) (zzm(i2) & 1048575)) == i;
    }

    private static boolean zzD(Object obj, long j) {
        return ((Boolean) zzwj.zzf(obj, j)).booleanValue();
    }

    private static final void zzE(int i, Object obj, zzwq zzwqVar) {
        if (obj instanceof String) {
            zzwqVar.zzD(i, (String) obj);
        } else {
            zzwqVar.zzd(i, (zzsu) obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0283  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzva zzi(Class cls, zzuu zzuuVar, zzvc zzvcVar, zzul zzulVar, zzvz zzvzVar, zztf zztfVar, zzus zzusVar) {
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
        zzvh zzvhVar;
        int iObjectFieldOffset;
        String str;
        int i19;
        int i20;
        int i21;
        int iObjectFieldOffset2;
        Field fieldZzs;
        char cCharAt9;
        int i22;
        int i23;
        int i24;
        int i25;
        Object obj;
        Field fieldZzs2;
        Object obj2;
        Field fieldZzs3;
        int i26;
        char cCharAt10;
        int i27;
        char cCharAt11;
        int i28;
        char cCharAt12;
        int i29;
        char cCharAt13;
        if (!(zzuuVar instanceof zzvh)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzuuVar);
            throw null;
        }
        zzvh zzvhVar2 = (zzvh) zzuuVar;
        String strZzd = zzvhVar2.zzd();
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
        Object[] objArrZze = zzvhVar2.zze();
        Class<?> cls2 = zzvhVar2.zza().getClass();
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
                        if (zzvhVar2.zzc() == 1 || i73 != 0) {
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
                        fieldZzs2 = zzs(cls2, (String) obj);
                        objArrZze[i83] = fieldZzs2;
                    } else {
                        fieldZzs2 = (Field) obj;
                    }
                    i17 = i3;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzs2);
                    int i84 = i83 + 1;
                    obj2 = objArrZze[i84];
                    if (obj2 instanceof Field) {
                        fieldZzs3 = zzs(cls2, (String) obj2);
                        objArrZze[i84] = fieldZzs3;
                    } else {
                        fieldZzs3 = (Field) obj2;
                    }
                    zzvhVar = zzvhVar2;
                    str = strZzd;
                    i21 = i2;
                    i19 = i79;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzs3);
                    i20 = 0;
                }
                i2 = i25;
                int i832 = iCharAt12 + iCharAt12;
                obj = objArrZze[i832];
                if (obj instanceof Field) {
                }
                i17 = i3;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzs2);
                int i842 = i832 + 1;
                obj2 = objArrZze[i842];
                if (obj2 instanceof Field) {
                }
                zzvhVar = zzvhVar2;
                str = strZzd;
                i21 = i2;
                i19 = i79;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzs3);
                i20 = 0;
            } else {
                i17 = i3;
                i18 = i6;
                int i85 = i2 + 1;
                Field fieldZzs4 = zzs(cls2, (String) objArrZze[i2]);
                if (i72 == 9 || i72 == 17) {
                    zzvhVar = zzvhVar2;
                    int i86 = i63 / 3;
                    objArr[i86 + i86 + 1] = fieldZzs4.getType();
                } else {
                    if (i72 == 27) {
                        zzvhVar = zzvhVar2;
                        i22 = 1;
                        i23 = i2 + 2;
                    } else if (i72 == 49) {
                        i23 = i2 + 2;
                        zzvhVar = zzvhVar2;
                        i22 = 1;
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        zzvhVar = zzvhVar2;
                        if (zzvhVar2.zzc() == 1 || i73 != 0) {
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
                        zzvhVar = zzvhVar2;
                    }
                    int i92 = i63 / 3;
                    objArr[i92 + i92 + i22] = objArrZze[i85];
                    i85 = i23;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzs4);
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
                        fieldZzs = (Field) obj3;
                    } else {
                        fieldZzs = zzs(cls2, (String) obj3);
                        objArrZze[i96] = fieldZzs;
                    }
                    i20 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzs);
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
            zzvhVar2 = zzvhVar;
            strZzd = str;
            i6 = i18;
            i3 = i17;
            c = CharacterCompat.MIN_HIGH_SURROGATE;
        }
        zzvh zzvhVar3 = zzvhVar2;
        return new zzva(iArr2, objArr, i3, i6, zzvhVar3.zza(), zzvhVar3.zzc(), false, iArr, i4, i58, zzvcVar, zzulVar, zzvzVar, zztfVar, zzusVar);
    }

    private static double zzj(Object obj, long j) {
        return ((Double) zzwj.zzf(obj, j)).doubleValue();
    }

    private static float zzk(Object obj, long j) {
        return ((Float) zzwj.zzf(obj, j)).floatValue();
    }

    private static int zzl(Object obj, long j) {
        return ((Integer) zzwj.zzf(obj, j)).intValue();
    }

    private final int zzm(int i) {
        return this.zzc[i + 2];
    }

    private static int zzn(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzo(int i) {
        return this.zzc[i + 1];
    }

    private static long zzp(Object obj, long j) {
        return ((Long) zzwj.zzf(obj, j)).longValue();
    }

    private final zzvi zzq(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzvi zzviVar = (zzvi) objArr[i3];
        if (zzviVar != null) {
            return zzviVar;
        }
        zzvi zzviVarZzb = zzvf.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzviVarZzb;
        return zzviVarZzb;
    }

    private final Object zzr(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzs(Class cls, String str) {
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

    private final void zzt(Object obj, Object obj2, int i) {
        if (zzy(obj2, i)) {
            int iZzo = zzo(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzo;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzvi zzviVarZzq = zzq(i);
            if (!zzy(obj, i)) {
                if (zzB(object)) {
                    Object objZzc = zzviVarZzq.zzc();
                    zzviVarZzq.zze(objZzc, object);
                    unsafe.putObject(obj, j, objZzc);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzv(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzB(object2)) {
                Object objZzc2 = zzviVarZzq.zzc();
                zzviVarZzq.zze(objZzc2, object2);
                unsafe.putObject(obj, j, objZzc2);
                object2 = objZzc2;
            }
            zzviVarZzq.zze(object2, object);
        }
    }

    private final void zzu(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzC(obj2, i2, i)) {
            int iZzo = zzo(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzo;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzvi zzviVarZzq = zzq(i);
            if (!zzC(obj, i2, i)) {
                if (zzB(object)) {
                    Object objZzc = zzviVarZzq.zzc();
                    zzviVarZzq.zze(objZzc, object);
                    unsafe.putObject(obj, j, objZzc);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzw(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzB(object2)) {
                Object objZzc2 = zzviVarZzq.zzc();
                zzviVarZzq.zze(objZzc2, object2);
                unsafe.putObject(obj, j, objZzc2);
                object2 = objZzc2;
            }
            zzviVarZzq.zze(object2, object);
        }
    }

    private final void zzv(Object obj, int i) {
        int iZzm = zzm(i);
        long j = 1048575 & iZzm;
        if (j == 1048575) {
            return;
        }
        zzwj.zzq(obj, j, (1 << (iZzm >>> 20)) | zzwj.zzc(obj, j));
    }

    private final void zzw(Object obj, int i, int i2) {
        zzwj.zzq(obj, zzm(i2) & 1048575, i);
    }

    private final boolean zzx(Object obj, Object obj2, int i) {
        return zzy(obj, i) == zzy(obj2, i);
    }

    private final boolean zzy(Object obj, int i) {
        int iZzm = zzm(i);
        long j = iZzm & 1048575;
        if (j != 1048575) {
            return (zzwj.zzc(obj, j) & (1 << (iZzm >>> 20))) != 0;
        }
        int iZzo = zzo(i);
        long j2 = iZzo & 1048575;
        switch (zzn(iZzo)) {
            case 0:
                return Double.doubleToRawLongBits(zzwj.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzwj.zzb(obj, j2)) != 0;
            case 2:
                return zzwj.zzd(obj, j2) != 0;
            case 3:
                return zzwj.zzd(obj, j2) != 0;
            case 4:
                return zzwj.zzc(obj, j2) != 0;
            case 5:
                return zzwj.zzd(obj, j2) != 0;
            case 6:
                return zzwj.zzc(obj, j2) != 0;
            case 7:
                return zzwj.zzw(obj, j2);
            case 8:
                Object objZzf = zzwj.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzsu) {
                    return !zzsu.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzwj.zzf(obj, j2) != null;
            case 10:
                return !zzsu.zzb.equals(zzwj.zzf(obj, j2));
            case 11:
                return zzwj.zzc(obj, j2) != 0;
            case 12:
                return zzwj.zzc(obj, j2) != 0;
            case 13:
                return zzwj.zzc(obj, j2) != 0;
            case 14:
                return zzwj.zzd(obj, j2) != 0;
            case 15:
                return zzwj.zzc(obj, j2) != 0;
            case 16:
                return zzwj.zzd(obj, j2) != 0;
            case 17:
                return zzwj.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzz(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzy(obj, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ad, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00af, code lost:
    
        r0 = com.google.android.gms.internal.cast.zztc.zzx(r15 << 3) + 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bc, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00be, code lost:
    
        r0 = com.google.android.gms.internal.cast.zztc.zzx(r15 << 3) + 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cb, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cd, code lost:
    
        r0 = r15 << 3;
        r1 = com.google.android.gms.internal.cast.zztc.zzu(zzl(r21, r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014c, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0154, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x015c, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0164, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0166, code lost:
    
        r0 = r15 << 3;
        r1 = com.google.android.gms.internal.cast.zztc.zzy(zzp(r21, r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0176, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x017d, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0185, code lost:
    
        if (zzC(r21, r15, r12) != false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01cc A[PHI: r0
      0x01cc: PHI (r0v181 int) = 
      (r0v144 int)
      (r0v147 int)
      (r0v150 int)
      (r0v153 int)
      (r0v156 int)
      (r0v159 int)
      (r0v162 int)
      (r0v165 int)
      (r0v168 int)
      (r0v171 int)
      (r0v174 int)
      (r0v177 int)
      (r0v180 int)
      (r0v184 int)
     binds: [B:131:0x0287, B:128:0x0279, B:125:0x026b, B:122:0x025d, B:119:0x024f, B:116:0x0242, B:113:0x0235, B:110:0x0228, B:107:0x0219, B:104:0x020c, B:101:0x01ff, B:98:0x01f2, B:95:0x01e5, B:92:0x01ca] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.cast.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(Object obj) {
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        int iZzy;
        int iZzx;
        int i6;
        int iZzx2;
        int i7;
        int iZzx3;
        int iZzx4;
        int iZzd;
        int size;
        int i8;
        int iZzl;
        int iZzx5;
        boolean z;
        List list;
        List list2;
        boolean z2;
        int iZzx6;
        int iZzx7;
        int size2;
        int i9;
        int iZzk;
        int iZzx8;
        int iZze;
        int i10;
        Object object;
        Unsafe unsafe = zzb;
        int i11 = 1048575;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        int iZzh = 0;
        while (i14 < this.zzc.length) {
            int iZzo = zzo(i14);
            int iZzn = zzn(iZzo);
            int[] iArr = this.zzc;
            int i15 = iArr[i14];
            int i16 = iArr[i14 + 2];
            int i17 = i16 & i11;
            if (iZzn <= 17) {
                if (i17 != i12) {
                    i13 = i17 == i11 ? 0 : unsafe.getInt(obj, i17);
                    i12 = i17;
                }
                i3 = 1 << (i16 >>> 20);
                i = i12;
                i2 = i13;
            } else {
                i = i12;
                i2 = i13;
                i3 = 0;
            }
            int i18 = iZzo & i11;
            if (iZzn >= zztk.zzJ.zza()) {
                zztk.zzW.zza();
            }
            long j2 = i18;
            switch (iZzn) {
                case 0:
                    i4 = i14;
                    if (!zzz(obj, i4, i, i2, i3)) {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzx = zztc.zzx(i15 << 3) + 8;
                    iZzh += iZzx;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 1:
                    i4 = i14;
                    if (!zzz(obj, i4, i, i2, i3)) {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzx = zztc.zzx(i15 << 3) + 4;
                    iZzh += iZzx;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 2:
                    i4 = i14;
                    j = j2;
                    if (!zzz(obj, i4, i, i2, i3)) {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    i5 = i15 << 3;
                    iZzy = zztc.zzy(unsafe.getLong(obj, j));
                    iZzx = zztc.zzx(i5) + iZzy;
                    iZzh += iZzx;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 3:
                    i4 = i14;
                    j = j2;
                    if (!zzz(obj, i4, i, i2, i3)) {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    i5 = i15 << 3;
                    iZzy = zztc.zzy(unsafe.getLong(obj, j));
                    iZzx = zztc.zzx(i5) + iZzy;
                    iZzh += iZzx;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 4:
                    i4 = i14;
                    if (zzz(obj, i4, i, i2, i3)) {
                        i5 = i15 << 3;
                        iZzy = zztc.zzu(unsafe.getInt(obj, j2));
                        iZzx = zztc.zzx(i5) + iZzy;
                        iZzh += iZzx;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    } else {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                case 5:
                    i4 = i14;
                    if (!zzz(obj, i4, i, i2, i3)) {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzx = zztc.zzx(i15 << 3) + 8;
                    iZzh += iZzx;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 6:
                    i4 = i14;
                    if (!zzz(obj, i4, i, i2, i3)) {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzx = zztc.zzx(i15 << 3) + 4;
                    iZzh += iZzx;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 7:
                    i4 = i14;
                    if (zzz(obj, i4, i, i2, i3)) {
                        iZzx = zztc.zzx(i15 << 3) + 1;
                        iZzh += iZzx;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    } else {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                case 8:
                    int i19 = i14;
                    i4 = i19;
                    if (zzz(obj, i19, i, i2, i3)) {
                        i5 = i15 << 3;
                        Object object2 = unsafe.getObject(obj, j2);
                        if (object2 instanceof zzsu) {
                            int i20 = zztc.$r8$clinit;
                            int iZzd2 = ((zzsu) object2).zzd();
                            iZzx = zztc.zzx(i5) + zztc.zzx(iZzd2) + iZzd2;
                            iZzh += iZzx;
                            i14 = i4 + 3;
                            i12 = i;
                            i13 = i2;
                            i11 = 1048575;
                        } else {
                            iZzy = zztc.zzw((String) object2);
                            iZzx = zztc.zzx(i5) + iZzy;
                            iZzh += iZzx;
                            i14 = i4 + 3;
                            i12 = i;
                            i13 = i2;
                            i11 = 1048575;
                        }
                    } else {
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                case 9:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        iZzh += zzvk.zzh(i15, unsafe.getObject(obj, j2), zzq(i6));
                        i4 = i6;
                    } else {
                        i4 = i6;
                    }
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 10:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        zzsu zzsuVar = (zzsu) unsafe.getObject(obj, j2);
                        int i21 = zztc.$r8$clinit;
                        int iZzd3 = zzsuVar.zzd();
                        iZzx2 = zztc.zzx(i15 << 3) + zztc.zzx(iZzd3) + iZzd3;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 11:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        i7 = i15 << 3;
                        iZzx3 = zztc.zzx(unsafe.getInt(obj, j2));
                        iZzx4 = zztc.zzx(i7);
                        iZzx2 = iZzx4 + iZzx3;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 12:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        i7 = i15 << 3;
                        iZzx3 = zztc.zzu(unsafe.getInt(obj, j2));
                        iZzx4 = zztc.zzx(i7);
                        iZzx2 = iZzx4 + iZzx3;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 13:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        iZzx2 = zztc.zzx(i15 << 3) + 4;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 14:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        iZzx2 = zztc.zzx(i15 << 3) + 8;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 15:
                    i6 = i14;
                    if (zzz(obj, i6, i, i2, i3)) {
                        int i22 = unsafe.getInt(obj, j2);
                        iZzx4 = zztc.zzx(i15 << 3);
                        iZzx3 = zztc.zzx((i22 >> 31) ^ (i22 + i22));
                        iZzx2 = iZzx4 + iZzx3;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 16:
                    i6 = i14;
                    if (zzz(obj, i14, i, i2, i3)) {
                        long j3 = unsafe.getLong(obj, j2);
                        iZzx4 = zztc.zzx(i15 << 3);
                        iZzx3 = zztc.zzy((j3 >> 63) ^ (j3 + j3));
                        iZzx2 = iZzx4 + iZzx3;
                        iZzh += iZzx2;
                    }
                    i4 = i6;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 17:
                    if (zzz(obj, i14, i, i2, i3)) {
                        iZzh += zztc.zzt(i15, (zzux) unsafe.getObject(obj, j2), zzq(i14));
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 18:
                    iZzd = zzvk.zzd(i15, (List) unsafe.getObject(obj, j2), false);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 19:
                    iZzd = zzvk.zzb(i15, (List) unsafe.getObject(obj, j2), false);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 20:
                    List list3 = (List) unsafe.getObject(obj, j2);
                    int i23 = zzvk.$r8$clinit;
                    iZzx5 = list3.size() == 0 ? 0 : zzvk.zzg(list3) + (list3.size() * zztc.zzx(i15 << 3));
                    iZzh += iZzx5;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 21:
                    List list4 = (List) unsafe.getObject(obj, j2);
                    int i24 = zzvk.$r8$clinit;
                    size = list4.size();
                    if (size != 0) {
                        i8 = i15 << 3;
                        iZzl = zzvk.zzl(list4);
                        iZzx5 = iZzl + (size * zztc.zzx(i8));
                        iZzh += iZzx5;
                        i4 = i14;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzh += iZzx5;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 22:
                    List list5 = (List) unsafe.getObject(obj, j2);
                    int i25 = zzvk.$r8$clinit;
                    size = list5.size();
                    if (size != 0) {
                        i8 = i15 << 3;
                        iZzl = zzvk.zzf(list5);
                        iZzx5 = iZzl + (size * zztc.zzx(i8));
                        iZzh += iZzx5;
                        i4 = i14;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzh += iZzx5;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 23:
                    z = false;
                    list = (List) unsafe.getObject(obj, j2);
                    iZzd = zzvk.zzd(i15, list, z);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 24:
                    list2 = (List) unsafe.getObject(obj, j2);
                    z2 = false;
                    iZzd = zzvk.zzb(i15, list2, z2);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 25:
                    List list6 = (List) unsafe.getObject(obj, j2);
                    int i26 = zzvk.$r8$clinit;
                    int size3 = list6.size();
                    iZzd = size3 == 0 ? 0 : size3 * (zztc.zzx(i15 << 3) + 1);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 26:
                    List list7 = (List) unsafe.getObject(obj, j2);
                    int i27 = zzvk.$r8$clinit;
                    int size4 = list7.size();
                    if (size4 != 0) {
                        boolean z3 = list7 instanceof zzuf;
                        int iZzx9 = zztc.zzx(i15 << 3) * size4;
                        if (z3) {
                            zzuf zzufVar = (zzuf) list7;
                            iZzx5 = iZzx9;
                            for (int i28 = 0; i28 < size4; i28++) {
                                Object objZze = zzufVar.zze(i28);
                                if (objZze instanceof zzsu) {
                                    int iZzd4 = ((zzsu) objZze).zzd();
                                    iZzx5 += zztc.zzx(iZzd4) + iZzd4;
                                } else {
                                    iZzx5 += zztc.zzw((String) objZze);
                                }
                            }
                        } else {
                            iZzx5 = iZzx9;
                            for (int i29 = 0; i29 < size4; i29++) {
                                Object obj2 = list7.get(i29);
                                if (obj2 instanceof zzsu) {
                                    int iZzd5 = ((zzsu) obj2).zzd();
                                    iZzx5 += zztc.zzx(iZzd5) + iZzd5;
                                } else {
                                    iZzx5 += zztc.zzw((String) obj2);
                                }
                            }
                        }
                    }
                    iZzh += iZzx5;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case 27:
                    List list8 = (List) unsafe.getObject(obj, j2);
                    zzvi zzviVarZzq = zzq(i14);
                    int i30 = zzvk.$r8$clinit;
                    int size5 = list8.size();
                    if (size5 == 0) {
                        iZzx6 = 0;
                    } else {
                        iZzx6 = zztc.zzx(i15 << 3) * size5;
                        for (int i31 = 0; i31 < size5; i31++) {
                            iZzx6 += zztc.zzv((zzux) list8.get(i31), zzviVarZzq);
                        }
                    }
                    iZzh += iZzx6;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 28:
                    List list9 = (List) unsafe.getObject(obj, j2);
                    int i32 = zzvk.$r8$clinit;
                    int size6 = list9.size();
                    if (size6 == 0) {
                        iZzx7 = 0;
                    } else {
                        iZzx7 = size6 * zztc.zzx(i15 << 3);
                        for (int i33 = 0; i33 < list9.size(); i33++) {
                            int iZzd6 = ((zzsu) list9.get(i33)).zzd();
                            iZzx7 += zztc.zzx(iZzd6) + iZzd6;
                        }
                    }
                    iZzh += iZzx7;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 29:
                    List list10 = (List) unsafe.getObject(obj, j2);
                    int i34 = zzvk.$r8$clinit;
                    size2 = list10.size();
                    if (size2 != 0) {
                        i9 = i15 << 3;
                        iZzk = zzvk.zzk(list10);
                        iZzx8 = size2 * zztc.zzx(i9);
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                        i4 = i14;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 30:
                    List list11 = (List) unsafe.getObject(obj, j2);
                    int i35 = zzvk.$r8$clinit;
                    size2 = list11.size();
                    if (size2 != 0) {
                        i9 = i15 << 3;
                        iZzk = zzvk.zza(list11);
                        iZzx8 = size2 * zztc.zzx(i9);
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                        i4 = i14;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 31:
                    z2 = false;
                    list2 = (List) unsafe.getObject(obj, j2);
                    iZzd = zzvk.zzb(i15, list2, z2);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case 32:
                    list = (List) unsafe.getObject(obj, j2);
                    z = false;
                    iZzd = zzvk.zzd(i15, list, z);
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    List list12 = (List) unsafe.getObject(obj, j2);
                    int i36 = zzvk.$r8$clinit;
                    size2 = list12.size();
                    if (size2 != 0) {
                        i9 = i15 << 3;
                        iZzk = zzvk.zzi(list12);
                        iZzx8 = size2 * zztc.zzx(i9);
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                        i4 = i14;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    List list13 = (List) unsafe.getObject(obj, j2);
                    int i37 = zzvk.$r8$clinit;
                    size2 = list13.size();
                    if (size2 != 0) {
                        i9 = i15 << 3;
                        iZzk = zzvk.zzj(list13);
                        iZzx8 = size2 * zztc.zzx(i9);
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                        i4 = i14;
                        i14 = i4 + 3;
                        i12 = i;
                        i13 = i2;
                        i11 = 1048575;
                    }
                    iZzh += iZzd;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZze = zzvk.zze((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                        iZzh += zztc.zzx(i15 << 3) + zztc.zzx(iZze) + iZze;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZze = zzvk.zzc((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZze = zzvk.zzg((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZze = zzvk.zzl((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZze = zzvk.zzf((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZze = zzvk.zze((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZze = zzvk.zzc((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    List list14 = (List) unsafe.getObject(obj, j2);
                    int i38 = zzvk.$r8$clinit;
                    iZze = list14.size();
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZze = zzvk.zzk((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZze = zzvk.zza((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZze = zzvk.zzc((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZze = zzvk.zze((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZze = zzvk.zzi((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZze = zzvk.zzj((List) unsafe.getObject(obj, j2));
                    if (iZze > 0) {
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    List list15 = (List) unsafe.getObject(obj, j2);
                    zzvi zzviVarZzq2 = zzq(i14);
                    int i39 = zzvk.$r8$clinit;
                    int size7 = list15.size();
                    if (size7 != 0) {
                        iZzx6 = 0;
                        for (int i40 = 0; i40 < size7; i40++) {
                            iZzx6 += zztc.zzt(i15, (zzux) list15.get(i40), zzviVarZzq2);
                        }
                    }
                    iZzh += iZzx6;
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                    break;
                case 50:
                    Object object3 = unsafe.getObject(obj, j2);
                    Object objZzr = zzr(i14);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(object3);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(objZzr);
                    throw null;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzC(obj, i15, i14)) {
                        iZzd = zztc.zzx(i15 << 3) + 1;
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzC(obj, i15, i14)) {
                        i10 = i15 << 3;
                        object = unsafe.getObject(obj, j2);
                        if (!(object instanceof zzsu)) {
                            iZzx8 = zztc.zzw((String) object);
                            iZzk = zztc.zzx(i10);
                            iZzd = iZzk + iZzx8;
                            iZzh += iZzd;
                        }
                        int i41 = zztc.$r8$clinit;
                        int iZzd7 = ((zzsu) object).zzd();
                        iZzd = zztc.zzx(i10) + zztc.zzx(iZzd7) + iZzd7;
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zzC(obj, i15, i14)) {
                        iZzd = zzvk.zzh(i15, unsafe.getObject(obj, j2), zzq(i14));
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zzC(obj, i15, i14)) {
                        i10 = i15 << 3;
                        object = unsafe.getObject(obj, j2);
                        int i412 = zztc.$r8$clinit;
                        int iZzd72 = ((zzsu) object).zzd();
                        iZzd = zztc.zzx(i10) + zztc.zzx(iZzd72) + iZzd72;
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zzC(obj, i15, i14)) {
                        i10 = i15 << 3;
                        iZzx8 = zztc.zzx(zzl(obj, j2));
                        iZzk = zztc.zzx(i10);
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    break;
                case 64:
                    break;
                case 65:
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zzC(obj, i15, i14)) {
                        int iZzl2 = zzl(obj, j2);
                        iZzk = zztc.zzx(i15 << 3);
                        iZzx8 = zztc.zzx((iZzl2 >> 31) ^ (iZzl2 + iZzl2));
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzC(obj, i15, i14)) {
                        long jZzp = zzp(obj, j2);
                        iZzk = zztc.zzx(i15 << 3);
                        iZzx8 = zztc.zzy((jZzp >> 63) ^ (jZzp + jZzp));
                        iZzd = iZzk + iZzx8;
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zzC(obj, i15, i14)) {
                        iZzd = zztc.zzt(i15, (zzux) unsafe.getObject(obj, j2), zzq(i14));
                        iZzh += iZzd;
                    }
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
                default:
                    i4 = i14;
                    i14 = i4 + 3;
                    i12 = i;
                    i13 = i2;
                    i11 = 1048575;
            }
        }
        zzvz zzvzVar = this.zzj;
        int iZza = iZzh + zzvzVar.zza(zzvzVar.zzc(obj));
        if (!this.zzf) {
            return iZza;
        }
        this.zzk.zza(obj);
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f5 A[PHI: r1 r2
      0x00f5: PHI (r1v12 int) = (r1v7 int), (r1v13 int) binds: [B:74:0x0111, B:68:0x00f3] A[DONT_GENERATE, DONT_INLINE]
      0x00f5: PHI (r2v10 java.lang.Object) = (r2v7 java.lang.Object), (r2v11 java.lang.Object) binds: [B:74:0x0111, B:68:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.cast.zzvi
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
            int iZzo = zzo(i5);
            int[] iArr = this.zzc;
            int i6 = 1048575 & iZzo;
            int iZzn = zzn(iZzo);
            int i7 = iArr[i5];
            long j = i6;
            int iHashCode = 37;
            switch (iZzn) {
                case 0:
                    i = i4 * 53;
                    dZza = zzwj.zza(obj, j);
                    jZzd = Double.doubleToLongBits(dZza);
                    byte[] bArr = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case 1:
                    i2 = i4 * 53;
                    fZzb = zzwj.zzb(obj, j);
                    iZzc = Float.floatToIntBits(fZzb);
                    i4 = i2 + iZzc;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i4 * 53;
                    jZzd = zzwj.zzd(obj, j);
                    byte[] bArr2 = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i2 = i4 * 53;
                    iZzc = zzwj.zzc(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case 7:
                    i2 = i4 * 53;
                    zZzw = zzwj.zzw(obj, j);
                    iZzc = zzty.zza(zZzw);
                    i4 = i2 + iZzc;
                    break;
                case 8:
                    i2 = i4 * 53;
                    iZzc = ((String) zzwj.zzf(obj, j)).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case 9:
                    i3 = i4 * 53;
                    objZzf = zzwj.zzf(obj, j);
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
                    iZzc = zzwj.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case 17:
                    i3 = i4 * 53;
                    objZzf = zzwj.zzf(obj, j);
                    if (objZzf != null) {
                    }
                    i4 = i3 + iHashCode;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zzC(obj, i7, i5)) {
                        i = i4 * 53;
                        dZza = zzj(obj, j);
                        jZzd = Double.doubleToLongBits(dZza);
                        byte[] bArr22 = zzty.zzd;
                        i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zzC(obj, i7, i5)) {
                        i2 = i4 * 53;
                        fZzb = zzk(obj, j);
                        iZzc = Float.floatToIntBits(fZzb);
                        i4 = i2 + iZzc;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzp(obj, j);
                    byte[] bArr222 = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzp(obj, j);
                    byte[] bArr2222 = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzl(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzp(obj, j);
                    byte[] bArr22222 = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzl(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzC(obj, i7, i5)) {
                        i2 = i4 * 53;
                        zZzw = zzD(obj, j);
                        iZzc = zzty.zza(zZzw);
                        i4 = i2 + iZzc;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = ((String) zzwj.zzf(obj, j)).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzwj.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzwj.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzl(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzl(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case 64:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzl(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case 65:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzp(obj, j);
                    byte[] bArr222222 = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzl(obj, j);
                    i4 = i2 + iZzc;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i = i4 * 53;
                    jZzd = zzp(obj, j);
                    byte[] bArr2222222 = zzty.zzd;
                    i4 = i + ((int) (jZzd ^ (jZzd >>> 32)));
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zzC(obj, i7, i5)) {
                        break;
                    }
                    i2 = i4 * 53;
                    iZzc = zzwj.zzf(obj, j).hashCode();
                    i4 = i2 + iZzc;
                    break;
            }
        }
        int iHashCode2 = (i4 * 53) + this.zzj.zzc(obj).hashCode();
        if (!this.zzf) {
            return iHashCode2;
        }
        this.zzk.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final Object zzc() {
        return ((zztp) this.zze).zzx();
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
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    @Override // com.google.android.gms.internal.cast.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = zzB(r7)
            if (r0 != 0) goto L8
            goto L81
        L8:
            boolean r0 = r7 instanceof com.google.android.gms.internal.cast.zztp
            r1 = 0
            if (r0 == 0) goto L1b
            r0 = r7
            com.google.android.gms.internal.cast.zztp r0 = (com.google.android.gms.internal.cast.zztp) r0
            r2 = 2147483647(0x7fffffff, float:NaN)
            r0.zzI(r2)
            r0.zza = r1
            r0.zzG()
        L1b:
            int[] r0 = r6.zzc
        L1d:
            int r2 = r0.length
            if (r1 >= r2) goto L73
            int r2 = r6.zzo(r1)
            r3 = 1048575(0xfffff, float:1.469367E-39)
            r3 = r3 & r2
            int r2 = zzn(r2)
            long r3 = (long) r3
            r5 = 9
            if (r2 == r5) goto L69
            r5 = 60
            if (r2 == r5) goto L51
            r5 = 68
            if (r2 == r5) goto L51
            switch(r2) {
                case 17: goto L69;
                case 18: goto L4b;
                case 19: goto L4b;
                case 20: goto L4b;
                case 21: goto L4b;
                case 22: goto L4b;
                case 23: goto L4b;
                case 24: goto L4b;
                case 25: goto L4b;
                case 26: goto L4b;
                case 27: goto L4b;
                case 28: goto L4b;
                case 29: goto L4b;
                case 30: goto L4b;
                case 31: goto L4b;
                case 32: goto L4b;
                case 33: goto L4b;
                case 34: goto L4b;
                case 35: goto L4b;
                case 36: goto L4b;
                case 37: goto L4b;
                case 38: goto L4b;
                case 39: goto L4b;
                case 40: goto L4b;
                case 41: goto L4b;
                case 42: goto L4b;
                case 43: goto L4b;
                case 44: goto L4b;
                case 45: goto L4b;
                case 46: goto L4b;
                case 47: goto L4b;
                case 48: goto L4b;
                case 49: goto L4b;
                case 50: goto L3d;
                default: goto L3c;
            }
        L3c:
            goto L70
        L3d:
            sun.misc.Unsafe r2 = com.google.android.gms.internal.cast.zzva.zzb
            java.lang.Object r2 = r2.getObject(r7, r3)
            if (r2 != 0) goto L46
            goto L70
        L46:
            androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(r2)
            r7 = 0
            throw r7
        L4b:
            com.google.android.gms.internal.cast.zzul r2 = r6.zzi
            r2.zza(r7, r3)
            goto L70
        L51:
            int[] r2 = r6.zzc
            r2 = r2[r1]
            boolean r2 = r6.zzC(r7, r2, r1)
            if (r2 == 0) goto L70
        L5b:
            com.google.android.gms.internal.cast.zzvi r2 = r6.zzq(r1)
            sun.misc.Unsafe r5 = com.google.android.gms.internal.cast.zzva.zzb
            java.lang.Object r3 = r5.getObject(r7, r3)
            r2.zzd(r3)
            goto L70
        L69:
            boolean r2 = r6.zzy(r7, r1)
            if (r2 == 0) goto L70
            goto L5b
        L70:
            int r1 = r1 + 3
            goto L1d
        L73:
            com.google.android.gms.internal.cast.zzvz r0 = r6.zzj
            r0.zze(r7)
            boolean r0 = r6.zzf
            if (r0 == 0) goto L81
            com.google.android.gms.internal.cast.zztf r0 = r6.zzk
            r0.zzb(r7)
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzva.zzd(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    @Override // com.google.android.gms.internal.cast.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zze(Object obj, Object obj2) {
        int i;
        if (!zzB(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        while (i < this.zzc.length) {
            int iZzo = zzo(i);
            int i2 = 1048575 & iZzo;
            int[] iArr = this.zzc;
            int iZzn = zzn(iZzo);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzn) {
                case 0:
                    if (zzy(obj2, i)) {
                        zzwj.zzo(obj, j, zzwj.zza(obj2, j));
                        zzv(obj, i);
                    }
                case 1:
                    if (zzy(obj2, i)) {
                        zzwj.zzp(obj, j, zzwj.zzb(obj2, j));
                        zzv(obj, i);
                    }
                case 2:
                    i = zzy(obj2, i) ? 0 : i + 3;
                    zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                    zzv(obj, i);
                case 3:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                    zzv(obj, i);
                case 4:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                    zzv(obj, i);
                case 5:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                    zzv(obj, i);
                case 6:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                    zzv(obj, i);
                case 7:
                    if (zzy(obj2, i)) {
                        zzwj.zzm(obj, j, zzwj.zzw(obj2, j));
                        zzv(obj, i);
                    }
                case 8:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                    zzv(obj, i);
                case 9:
                case 17:
                    zzt(obj, obj2, i);
                case 10:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                    zzv(obj, i);
                case 11:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                    zzv(obj, i);
                case 12:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                    zzv(obj, i);
                case 13:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                    zzv(obj, i);
                case 14:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                    zzv(obj, i);
                case 15:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                    zzv(obj, i);
                case 16:
                    if (!zzy(obj2, i)) {
                    }
                    zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                    zzv(obj, i);
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
                    this.zzi.zzb(obj, obj2, j);
                case 50:
                    int i4 = zzvk.$r8$clinit;
                    Object objZzf = zzwj.zzf(obj, j);
                    Object objZzf2 = zzwj.zzf(obj2, j);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(objZzf);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(objZzf2);
                    throw null;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzC(obj2, i3, i)) {
                        zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                        zzw(obj, i3, i);
                    }
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    zzu(obj, obj2, i);
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case 64:
                case 65:
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzC(obj2, i3, i)) {
                    }
                    break;
                default:
            }
        }
        zzvk.zzo(this.zzj, obj, obj2);
        if (this.zzf) {
            this.zzk.zza(obj2);
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zzf(Object obj, zzwq zzwqVar) throws Throwable {
        int i;
        int i2;
        int i3;
        ?? r9 = 1;
        Throwable th = null;
        if (this.zzf) {
            this.zzk.zza(obj);
            throw null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        while (i7 < iArr.length) {
            int iZzo = zzo(i7);
            int[] iArr2 = this.zzc;
            int iZzn = zzn(iZzo);
            int i8 = iArr2[i7];
            if (iZzn <= 17) {
                int i9 = iArr2[i7 + 2];
                int i10 = i9 & i4;
                if (i10 != i5) {
                    i6 = i10 == i4 ? 0 : unsafe.getInt(obj, i10);
                    i5 = i10;
                }
                i = i5;
                i2 = i6;
                i3 = r9 << (i9 >>> 20);
            } else {
                i = i5;
                i2 = i6;
                i3 = 0;
            }
            long j = iZzo & i4;
            switch (iZzn) {
                case 0:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzf(i8, zzwj.zza(obj, j));
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 1:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzn(i8, zzwj.zzb(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 2:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzs(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 3:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzH(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 4:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzq(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 5:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzl(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 6:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzj(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 7:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzb(i8, zzwj.zzw(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 8:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzE(i8, unsafe.getObject(obj, j), zzwqVar);
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 9:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzu(i8, unsafe.getObject(obj, j), zzq(i7));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 10:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzd(i8, (zzsu) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 11:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzF(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 12:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzh(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 13:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzv(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 14:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzx(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 15:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzz(i8, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 16:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzB(i8, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 17:
                    if (zzz(obj, i7, i, i2, i3)) {
                        zzwqVar.zzp(i8, unsafe.getObject(obj, j), zzq(i7));
                    } else {
                        continue;
                    }
                    i7 += 3;
                    i5 = i;
                    i6 = i2;
                    r9 = 1;
                    th = null;
                    i4 = 1048575;
                case 18:
                    zzvk.zzr(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 19:
                    zzvk.zzv(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 20:
                    zzvk.zzx(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 21:
                    zzvk.zzD(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 22:
                    zzvk.zzw(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 23:
                    zzvk.zzu(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 24:
                    zzvk.zzt(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 25:
                    zzvk.zzq(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 26:
                    int i11 = this.zzc[i7];
                    List list = (List) unsafe.getObject(obj, j);
                    int i12 = zzvk.$r8$clinit;
                    if (list != null && !list.isEmpty()) {
                        zzwqVar.zzE(i11, list);
                        break;
                    }
                    break;
                case 27:
                    int i13 = this.zzc[i7];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzvi zzviVarZzq = zzq(i7);
                    int i14 = zzvk.$r8$clinit;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i15 = 0; i15 < list2.size(); i15 += r9) {
                            ((zztd) zzwqVar).zzu(i13, list2.get(i15), zzviVarZzq);
                        }
                        break;
                    }
                    break;
                case 28:
                    int i16 = this.zzc[i7];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i17 = zzvk.$r8$clinit;
                    if (list3 != null && !list3.isEmpty()) {
                        zzwqVar.zze(i16, list3);
                        break;
                    }
                    break;
                case 29:
                    zzvk.zzC(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 30:
                    zzvk.zzs(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 31:
                    zzvk.zzy(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case 32:
                    zzvk.zzz(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzvk.zzA(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzvk.zzB(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzvk.zzr(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzvk.zzv(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzvk.zzx(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzvk.zzD(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzvk.zzw(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzvk.zzu(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzvk.zzt(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzvk.zzq(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzvk.zzC(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzvk.zzs(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzvk.zzy(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzvk.zzz(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzvk.zzA(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzvk.zzB(this.zzc[i7], (List) unsafe.getObject(obj, j), zzwqVar, r9);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    int i18 = this.zzc[i7];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzvi zzviVarZzq2 = zzq(i7);
                    int i19 = zzvk.$r8$clinit;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i20 = 0; i20 < list4.size(); i20 += r9) {
                            ((zztd) zzwqVar).zzp(i18, list4.get(i20), zzviVarZzq2);
                        }
                        break;
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzr(i7));
                        throw th;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzf(i8, zzj(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzn(i8, zzk(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzs(i8, zzp(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzH(i8, zzp(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzq(i8, zzl(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzl(i8, zzp(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzj(i8, zzl(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzb(i8, zzD(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzC(obj, i8, i7)) {
                        zzE(i8, unsafe.getObject(obj, j), zzwqVar);
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzu(i8, unsafe.getObject(obj, j), zzq(i7));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzd(i8, (zzsu) unsafe.getObject(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzF(i8, zzl(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzh(i8, zzl(obj, j));
                        break;
                    }
                    break;
                case 64:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzv(i8, zzl(obj, j));
                        break;
                    }
                    break;
                case 65:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzx(i8, zzp(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzz(i8, zzl(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzB(i8, zzp(obj, j));
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zzC(obj, i8, i7)) {
                        zzwqVar.zzp(i8, unsafe.getObject(obj, j), zzq(i7));
                        break;
                    }
                    break;
            }
            i7 += 3;
            i5 = i;
            i6 = i2;
            r9 = 1;
            th = null;
            i4 = 1048575;
        }
        zzvz zzvzVar = this.zzj;
        zzvzVar.zzg(zzvzVar.zzc(obj), zzwqVar);
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final boolean zzg(Object obj, Object obj2) {
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzo = zzo(i);
            long j = iZzo & 1048575;
            switch (zzn(iZzo)) {
                case 0:
                    if (!zzx(obj, obj2, i) || Double.doubleToLongBits(zzwj.zza(obj, j)) != Double.doubleToLongBits(zzwj.zza(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 1:
                    if (!zzx(obj, obj2, i) || Float.floatToIntBits(zzwj.zzb(obj, j)) != Float.floatToIntBits(zzwj.zzb(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 2:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                case 3:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 4:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 5:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 6:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 7:
                    if (!zzx(obj, obj2, i) || zzwj.zzw(obj, j) != zzwj.zzw(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 8:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                case 9:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 10:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
                case 11:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 12:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 13:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 14:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                    break;
                case 15:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    break;
                case 16:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    break;
                case 17:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
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
                    if (!zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
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
                    long jZzm = zzm(i) & 1048575;
                    if (zzwj.zzc(obj, jZzm) != zzwj.zzc(obj2, jZzm) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    break;
                    break;
            }
        }
        if (!this.zzj.zzc(obj).equals(this.zzj.zzc(obj2))) {
            return false;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzk.zza(obj);
        this.zzk.zza(obj2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0093  */
    @Override // com.google.android.gms.internal.cast.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzh(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzh) {
            int[] iArr = this.zzg;
            int[] iArr2 = this.zzc;
            int i6 = iArr[i5];
            int i7 = iArr2[i6];
            int iZzo = zzo(i6);
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
            if ((268435456 & iZzo) != 0 && !zzz(obj, i6, i, i2, i10)) {
                return false;
            }
            int iZzn = zzn(iZzo);
            if (iZzn == 9 || iZzn == 17) {
                if (zzz(obj, i6, i, i2, i10) && !zzA(obj, iZzo, zzq(i6))) {
                    return false;
                }
            } else if (iZzn == 27) {
                List list = (List) zzwj.zzf(obj, iZzo & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzvi zzviVarZzq = zzq(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzviVarZzq.zzh(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (iZzn == 60 || iZzn == 68) {
                if (zzC(obj, i7, i6) && !zzA(obj, iZzo, zzq(i6))) {
                    return false;
                }
            } else if (iZzn != 49) {
                if (iZzn == 50) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzwj.zzf(obj, iZzo & 1048575));
                    throw null;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzk.zza(obj);
        throw null;
    }
}
