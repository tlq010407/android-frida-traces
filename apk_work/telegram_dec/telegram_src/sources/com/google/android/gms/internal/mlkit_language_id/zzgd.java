package com.google.android.gms.internal.mlkit_language_id;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
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
final class zzgd implements zzgp {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhn.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzfz zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzge zzo;
    private final zzfj zzp;
    private final zzhh zzq;
    private final zzee zzr;
    private final zzfs zzs;

    private zzgd(int[] iArr, Object[] objArr, int i, int i2, zzfz zzfzVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzge zzgeVar, zzfj zzfjVar, zzhh zzhhVar, zzee zzeeVar, zzfs zzfsVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzfzVar instanceof zzeo;
        this.zzj = z;
        this.zzh = zzeeVar != null && zzeeVar.zza(zzfzVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzgeVar;
        this.zzp = zzfjVar;
        this.zzq = zzhhVar;
        this.zzr = zzeeVar;
        this.zzg = zzfzVar;
        this.zzs = zzfsVar;
    }

    private static int zza(zzhh zzhhVar, Object obj) {
        return zzhhVar.zzd(zzhhVar.zza(obj));
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x038c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzgd zza(Class cls, zzfx zzfxVar, zzge zzgeVar, zzfj zzfjVar, zzhh zzhhVar, zzee zzeeVar, zzfs zzfsVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int iCharAt5;
        int i2;
        int[] iArr;
        int i3;
        char cCharAt;
        int i4;
        char cCharAt2;
        int i5;
        char cCharAt3;
        int i6;
        char cCharAt4;
        int i7;
        char cCharAt5;
        int i8;
        char cCharAt6;
        int i9;
        char cCharAt7;
        int i10;
        char cCharAt8;
        int i11;
        int i12;
        int i13;
        int i14;
        zzgm zzgmVar;
        int i15;
        int iObjectFieldOffset;
        int i16;
        String str;
        int iObjectFieldOffset2;
        int i17;
        int i18;
        Field fieldZza;
        char cCharAt9;
        int i19;
        int i20;
        Field fieldZza2;
        Field fieldZza3;
        int i21;
        char cCharAt10;
        int i22;
        char cCharAt11;
        int i23;
        char cCharAt12;
        int i24;
        char cCharAt13;
        if (!(zzfxVar instanceof zzgm)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzfxVar);
            throw null;
        }
        zzgm zzgmVar2 = (zzgm) zzfxVar;
        int i25 = 0;
        boolean z = zzgmVar2.zza() == zzgl.zzb;
        String strZzd = zzgmVar2.zzd();
        int length = strZzd.length();
        if (strZzd.charAt(0) >= 55296) {
            int i26 = 1;
            while (true) {
                i = i26 + 1;
                if (strZzd.charAt(i26) < 55296) {
                    break;
                }
                i26 = i;
            }
        } else {
            i = 1;
        }
        int i27 = i + 1;
        int iCharAt6 = strZzd.charAt(i);
        if (iCharAt6 >= 55296) {
            int i28 = iCharAt6 & 8191;
            int i29 = 13;
            while (true) {
                i24 = i27 + 1;
                cCharAt13 = strZzd.charAt(i27);
                if (cCharAt13 < 55296) {
                    break;
                }
                i28 |= (cCharAt13 & 8191) << i29;
                i29 += 13;
                i27 = i24;
            }
            iCharAt6 = i28 | (cCharAt13 << i29);
            i27 = i24;
        }
        if (iCharAt6 == 0) {
            iArr = zza;
            i2 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            iCharAt4 = 0;
            iCharAt5 = 0;
        } else {
            int i30 = i27 + 1;
            int iCharAt7 = strZzd.charAt(i27);
            if (iCharAt7 >= 55296) {
                int i31 = iCharAt7 & 8191;
                int i32 = 13;
                while (true) {
                    i10 = i30 + 1;
                    cCharAt8 = strZzd.charAt(i30);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i31 |= (cCharAt8 & 8191) << i32;
                    i32 += 13;
                    i30 = i10;
                }
                iCharAt7 = i31 | (cCharAt8 << i32);
                i30 = i10;
            }
            int i33 = i30 + 1;
            int iCharAt8 = strZzd.charAt(i30);
            if (iCharAt8 >= 55296) {
                int i34 = iCharAt8 & 8191;
                int i35 = 13;
                while (true) {
                    i9 = i33 + 1;
                    cCharAt7 = strZzd.charAt(i33);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt7 & 8191) << i35;
                    i35 += 13;
                    i33 = i9;
                }
                iCharAt8 = i34 | (cCharAt7 << i35);
                i33 = i9;
            }
            int i36 = i33 + 1;
            iCharAt = strZzd.charAt(i33);
            if (iCharAt >= 55296) {
                int i37 = iCharAt & 8191;
                int i38 = 13;
                while (true) {
                    i8 = i36 + 1;
                    cCharAt6 = strZzd.charAt(i36);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt6 & 8191) << i38;
                    i38 += 13;
                    i36 = i8;
                }
                iCharAt = i37 | (cCharAt6 << i38);
                i36 = i8;
            }
            int i39 = i36 + 1;
            iCharAt2 = strZzd.charAt(i36);
            if (iCharAt2 >= 55296) {
                int i40 = iCharAt2 & 8191;
                int i41 = 13;
                while (true) {
                    i7 = i39 + 1;
                    cCharAt5 = strZzd.charAt(i39);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt5 & 8191) << i41;
                    i41 += 13;
                    i39 = i7;
                }
                iCharAt2 = i40 | (cCharAt5 << i41);
                i39 = i7;
            }
            int i42 = i39 + 1;
            iCharAt3 = strZzd.charAt(i39);
            if (iCharAt3 >= 55296) {
                int i43 = iCharAt3 & 8191;
                int i44 = 13;
                while (true) {
                    i6 = i42 + 1;
                    cCharAt4 = strZzd.charAt(i42);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt4 & 8191) << i44;
                    i44 += 13;
                    i42 = i6;
                }
                iCharAt3 = i43 | (cCharAt4 << i44);
                i42 = i6;
            }
            int i45 = i42 + 1;
            iCharAt4 = strZzd.charAt(i42);
            if (iCharAt4 >= 55296) {
                int i46 = iCharAt4 & 8191;
                int i47 = 13;
                while (true) {
                    i5 = i45 + 1;
                    cCharAt3 = strZzd.charAt(i45);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt3 & 8191) << i47;
                    i47 += 13;
                    i45 = i5;
                }
                iCharAt4 = i46 | (cCharAt3 << i47);
                i45 = i5;
            }
            int i48 = i45 + 1;
            int iCharAt9 = strZzd.charAt(i45);
            if (iCharAt9 >= 55296) {
                int i49 = iCharAt9 & 8191;
                int i50 = 13;
                while (true) {
                    i4 = i48 + 1;
                    cCharAt2 = strZzd.charAt(i48);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt2 & 8191) << i50;
                    i50 += 13;
                    i48 = i4;
                }
                iCharAt9 = i49 | (cCharAt2 << i50);
                i48 = i4;
            }
            int i51 = i48 + 1;
            iCharAt5 = strZzd.charAt(i48);
            if (iCharAt5 >= 55296) {
                int i52 = iCharAt5 & 8191;
                int i53 = i51;
                int i54 = 13;
                while (true) {
                    i3 = i53 + 1;
                    cCharAt = strZzd.charAt(i53);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i52 |= (cCharAt & 8191) << i54;
                    i54 += 13;
                    i53 = i3;
                }
                iCharAt5 = i52 | (cCharAt << i54);
                i51 = i3;
            }
            i2 = (iCharAt7 << 1) + iCharAt8;
            iArr = new int[iCharAt5 + iCharAt4 + iCharAt9];
            i25 = iCharAt7;
            i27 = i51;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzgmVar2.zze();
        Class<?> cls2 = zzgmVar2.zzc().getClass();
        int i55 = i27;
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 << 1];
        int i56 = iCharAt5 + iCharAt4;
        int i57 = i2;
        int i58 = iCharAt5;
        int i59 = i55;
        int i60 = i56;
        int i61 = 0;
        int i62 = 0;
        while (i59 < length) {
            int i63 = i59 + 1;
            int iCharAt10 = strZzd.charAt(i59);
            if (iCharAt10 >= 55296) {
                int i64 = iCharAt10 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i23 = i65 + 1;
                    cCharAt12 = strZzd.charAt(i65);
                    i11 = length;
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt12 & 8191) << i66;
                    i66 += 13;
                    i65 = i23;
                    length = i11;
                }
                iCharAt10 = i64 | (cCharAt12 << i66);
                i12 = i23;
            } else {
                i11 = length;
                i12 = i63;
            }
            int i67 = i12 + 1;
            int iCharAt11 = strZzd.charAt(i12);
            if (iCharAt11 >= 55296) {
                int i68 = iCharAt11 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i22 = i69 + 1;
                    cCharAt11 = strZzd.charAt(i69);
                    i13 = iCharAt5;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i68 |= (cCharAt11 & 8191) << i70;
                    i70 += 13;
                    i69 = i22;
                    iCharAt5 = i13;
                }
                iCharAt11 = i68 | (cCharAt11 << i70);
                i14 = i22;
            } else {
                i13 = iCharAt5;
                i14 = i67;
            }
            int i71 = iCharAt11 & 255;
            int i72 = iCharAt2;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i61] = i62;
                i61++;
            }
            int i73 = iCharAt;
            if (i71 >= 51) {
                int i74 = i14 + 1;
                int iCharAt12 = strZzd.charAt(i14);
                char c = CharacterCompat.MIN_HIGH_SURROGATE;
                if (iCharAt12 >= 55296) {
                    int i75 = iCharAt12 & 8191;
                    int i76 = 13;
                    while (true) {
                        i21 = i74 + 1;
                        cCharAt10 = strZzd.charAt(i74);
                        if (cCharAt10 < c) {
                            break;
                        }
                        i75 |= (cCharAt10 & 8191) << i76;
                        i76 += 13;
                        i74 = i21;
                        c = CharacterCompat.MIN_HIGH_SURROGATE;
                    }
                    iCharAt12 = i75 | (cCharAt10 << i76);
                    i74 = i21;
                }
                int i77 = i71 - 51;
                int i78 = i74;
                if (i77 == 9 || i77 == 17) {
                    i20 = 1;
                    objArr[((i62 / 3) << 1) + 1] = objArrZze[i57];
                    i57++;
                } else {
                    if (i77 == 12 && !z) {
                        objArr[((i62 / 3) << 1) + 1] = objArrZze[i57];
                        i57++;
                    }
                    i20 = 1;
                }
                int i79 = iCharAt12 << i20;
                Object obj = objArrZze[i79];
                if (obj instanceof Field) {
                    fieldZza2 = (Field) obj;
                } else {
                    fieldZza2 = zza((Class) cls2, (String) obj);
                    objArrZze[i79] = fieldZza2;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZza2);
                int i80 = i79 + 1;
                Object obj2 = objArrZze[i80];
                if (obj2 instanceof Field) {
                    fieldZza3 = (Field) obj2;
                } else {
                    fieldZza3 = zza((Class) cls2, (String) obj2);
                    objArrZze[i80] = fieldZza3;
                }
                i16 = i57;
                iObjectFieldOffset = iObjectFieldOffset3;
                i17 = i78;
                zzgmVar = zzgmVar2;
                str = strZzd;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza3);
                i18 = 0;
            } else {
                int i81 = i57 + 1;
                Field fieldZza4 = zza((Class) cls2, (String) objArrZze[i57]);
                zzgmVar = zzgmVar2;
                if (i71 == 9 || i71 == 17) {
                    objArr[((i62 / 3) << 1) + 1] = fieldZza4.getType();
                } else {
                    if (i71 == 27 || i71 == 49) {
                        i19 = i57 + 2;
                        objArr[((i62 / 3) << 1) + 1] = objArrZze[i81];
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        if (!z) {
                            i19 = i57 + 2;
                            objArr[((i62 / 3) << 1) + 1] = objArrZze[i81];
                        }
                    } else if (i71 == 50) {
                        int i82 = i58 + 1;
                        iArr[i58] = i62;
                        int i83 = (i62 / 3) << 1;
                        int i84 = i57 + 2;
                        objArr[i83] = objArrZze[i81];
                        if ((iCharAt11 & 2048) != 0) {
                            i81 = i57 + 3;
                            objArr[i83 + 1] = objArrZze[i84];
                            i58 = i82;
                        } else {
                            i58 = i82;
                            i15 = i84;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                            if ((iCharAt11 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 4096 || i71 > 17) {
                                i16 = i15;
                                str = strZzd;
                                iObjectFieldOffset2 = 1048575;
                                i17 = i14;
                                i18 = 0;
                            } else {
                                int i85 = i14 + 1;
                                int iCharAt13 = strZzd.charAt(i14);
                                if (iCharAt13 >= 55296) {
                                    int i86 = iCharAt13 & 8191;
                                    int i87 = 13;
                                    while (true) {
                                        i17 = i85 + 1;
                                        cCharAt9 = strZzd.charAt(i85);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i86 |= (cCharAt9 & 8191) << i87;
                                        i87 += 13;
                                        i85 = i17;
                                    }
                                    iCharAt13 = i86 | (cCharAt9 << i87);
                                } else {
                                    i17 = i85;
                                }
                                int i88 = (i25 << 1) + (iCharAt13 / 32);
                                Object obj3 = objArrZze[i88];
                                if (obj3 instanceof Field) {
                                    fieldZza = (Field) obj3;
                                } else {
                                    fieldZza = zza((Class) cls2, (String) obj3);
                                    objArrZze[i88] = fieldZza;
                                }
                                i16 = i15;
                                str = strZzd;
                                i18 = iCharAt13 % 32;
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza);
                            }
                            if (i71 >= 18 && i71 <= 49) {
                                iArr[i60] = iObjectFieldOffset;
                                i60++;
                            }
                        }
                    }
                    i15 = i19;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                    if ((iCharAt11 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 4096) {
                        i16 = i15;
                        str = strZzd;
                        iObjectFieldOffset2 = 1048575;
                        i17 = i14;
                        i18 = 0;
                        if (i71 >= 18) {
                            iArr[i60] = iObjectFieldOffset;
                            i60++;
                        }
                    }
                }
                i15 = i81;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                if ((iCharAt11 & LiteMode.FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM) != 4096) {
                }
            }
            int i89 = i62 + 1;
            iArr2[i62] = iCharAt10;
            int i90 = i62 + 2;
            iArr2[i89] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & LiteMode.FLAG_CALLS_ANIMATIONS) != 0 ? 536870912 : 0) | (i71 << 20) | iObjectFieldOffset;
            i62 += 3;
            iArr2[i90] = iObjectFieldOffset2 | (i18 << 20);
            strZzd = str;
            i57 = i16;
            iCharAt2 = i72;
            i59 = i17;
            length = i11;
            iCharAt5 = i13;
            iCharAt = i73;
            zzgmVar2 = zzgmVar;
        }
        return new zzgd(iArr2, objArr, iCharAt, iCharAt2, zzgmVar2.zzc(), z, false, iArr, iCharAt5, i56, zzgeVar, zzfjVar, zzhhVar, zzeeVar, zzfsVar);
    }

    private final zzgp zza(int i) {
        int i2 = (i / 3) << 1;
        zzgp zzgpVar = (zzgp) this.zzd[i2];
        if (zzgpVar != null) {
            return zzgpVar;
        }
        zzgp zzgpVarZza = zzgk.zza().zza((Class) this.zzd[i2 + 1]);
        this.zzd[i2] = zzgpVarZza;
        return zzgpVarZza;
    }

    private static Field zza(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    private static List zza(Object obj, long j) {
        return (List) zzhn.zzf(obj, j);
    }

    private static void zza(int i, Object obj, zzib zzibVar) {
        if (obj instanceof String) {
            zzibVar.zza(i, (String) obj);
        } else {
            zzibVar.zza(i, (zzdn) obj);
        }
    }

    private static void zza(zzhh zzhhVar, Object obj, zzib zzibVar) {
        zzhhVar.zza(zzhhVar.zza(obj), zzibVar);
    }

    private final void zza(zzib zzibVar, int i, Object obj, int i2) {
        if (obj != null) {
            this.zzs.zzc(zzb(i2));
            zzibVar.zza(i, (zzfq) null, this.zzs.zza(obj));
        }
    }

    private final void zza(Object obj, Object obj2, int i) {
        long jZzc = zzc(i) & 1048575;
        if (zza(obj2, i)) {
            Object objZzf = zzhn.zzf(obj, jZzc);
            Object objZzf2 = zzhn.zzf(obj2, jZzc);
            if (objZzf != null && objZzf2 != null) {
                zzhn.zza(obj, jZzc, zzeq.zza(objZzf, objZzf2));
                zzb(obj, i);
            } else if (objZzf2 != null) {
                zzhn.zza(obj, jZzc, objZzf2);
                zzb(obj, i);
            }
        }
    }

    private final boolean zza(Object obj, int i) {
        int iZzd = zzd(i);
        long j = iZzd & 1048575;
        if (j != 1048575) {
            return (zzhn.zza(obj, j) & (1 << (iZzd >>> 20))) != 0;
        }
        int iZzc = zzc(i);
        long j2 = iZzc & 1048575;
        switch ((iZzc & 267386880) >>> 20) {
            case 0:
                return zzhn.zze(obj, j2) != 0.0d;
            case 1:
                return zzhn.zzd(obj, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return zzhn.zzb(obj, j2) != 0;
            case 3:
                return zzhn.zzb(obj, j2) != 0;
            case 4:
                return zzhn.zza(obj, j2) != 0;
            case 5:
                return zzhn.zzb(obj, j2) != 0;
            case 6:
                return zzhn.zza(obj, j2) != 0;
            case 7:
                return zzhn.zzc(obj, j2);
            case 8:
                Object objZzf = zzhn.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzdn) {
                    return !zzdn.zza.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhn.zzf(obj, j2) != null;
            case 10:
                return !zzdn.zza.equals(zzhn.zzf(obj, j2));
            case 11:
                return zzhn.zza(obj, j2) != 0;
            case 12:
                return zzhn.zza(obj, j2) != 0;
            case 13:
                return zzhn.zza(obj, j2) != 0;
            case 14:
                return zzhn.zzb(obj, j2) != 0;
            case 15:
                return zzhn.zza(obj, j2) != 0;
            case 16:
                return zzhn.zzb(obj, j2) != 0;
            case 17:
                return zzhn.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(Object obj, int i, int i2) {
        return zzhn.zza(obj, (long) (zzd(i2) & 1048575)) == i;
    }

    private final boolean zza(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zza(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zza(Object obj, int i, zzgp zzgpVar) {
        return zzgpVar.zzc(zzhn.zzf(obj, i & 1048575));
    }

    private static double zzb(Object obj, long j) {
        return ((Double) zzhn.zzf(obj, j)).doubleValue();
    }

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private final void zzb(Object obj, int i) {
        int iZzd = zzd(i);
        long j = 1048575 & iZzd;
        if (j == 1048575) {
            return;
        }
        zzhn.zza(obj, j, (1 << (iZzd >>> 20)) | zzhn.zza(obj, j));
    }

    private final void zzb(Object obj, int i, int i2) {
        zzhn.zza(obj, zzd(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzb(Object obj, zzib zzibVar) {
        Iterator itZzd;
        Map.Entry entry;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        int i6;
        boolean z6;
        int i7;
        boolean z7;
        int i8;
        int i9;
        List list;
        boolean z8;
        boolean z9;
        int i10;
        boolean z10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        int i13;
        boolean z13;
        int i14;
        int i15;
        List list2;
        boolean z14;
        if (this.zzh) {
            zzej zzejVarZza = this.zzr.zza(obj);
            if (zzejVarZza.zza.isEmpty()) {
                itZzd = null;
                entry = null;
            } else {
                itZzd = zzejVarZza.zzd();
                entry = (Map.Entry) itZzd.next();
            }
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i16 = 1048575;
        int i17 = 0;
        for (int i18 = 0; i18 < length; i18 += 3) {
            int iZzc = zzc(i18);
            int[] iArr = this.zzc;
            int i19 = iArr[i18];
            int i20 = (iZzc & 267386880) >>> 20;
            if (this.zzj || i20 > 17) {
                i = 0;
            } else {
                int i21 = iArr[i18 + 2];
                int i22 = i21 & 1048575;
                if (i22 != i16) {
                    i17 = unsafe.getInt(obj, i22);
                    i16 = i22;
                }
                i = 1 << (i21 >>> 20);
            }
            while (entry != null && this.zzr.zza(entry) <= i19) {
                this.zzr.zza(zzibVar, entry);
                entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
            }
            long j = iZzc & 1048575;
            switch (i20) {
                case 0:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, zzhn.zze(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, zzhn.zzd(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i & i17) != 0) {
                        zzibVar.zzc(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i & i17) != 0) {
                        zzibVar.zzc(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i & i17) != 0) {
                        zzibVar.zzd(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i & i17) != 0) {
                        zzibVar.zzd(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, zzhn.zzc(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i & i17) != 0) {
                        zza(i19, unsafe.getObject(obj, j), zzibVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, unsafe.getObject(obj, j), zza(i18));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, (zzdn) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i & i17) != 0) {
                        zzibVar.zze(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i & i17) != 0) {
                        zzibVar.zzb(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i & i17) != 0) {
                        zzibVar.zza(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i & i17) != 0) {
                        zzibVar.zzb(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i & i17) != 0) {
                        zzibVar.zzf(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i & i17) != 0) {
                        zzibVar.zze(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i & i17) != 0) {
                        zzibVar.zzb(i19, unsafe.getObject(obj, j), zza(i18));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    z = false;
                    i2 = this.zzc[i18];
                    zzgr.zza(i2, (List) unsafe.getObject(obj, j), zzibVar, z);
                    break;
                case 19:
                    z2 = false;
                    i3 = this.zzc[i18];
                    zzgr.zzb(i3, (List) unsafe.getObject(obj, j), zzibVar, z2);
                    break;
                case 20:
                    z3 = false;
                    i4 = this.zzc[i18];
                    zzgr.zzc(i4, (List) unsafe.getObject(obj, j), zzibVar, z3);
                    break;
                case 21:
                    z4 = false;
                    i5 = this.zzc[i18];
                    zzgr.zzd(i5, (List) unsafe.getObject(obj, j), zzibVar, z4);
                    break;
                case 22:
                    z5 = false;
                    i6 = this.zzc[i18];
                    zzgr.zzh(i6, (List) unsafe.getObject(obj, j), zzibVar, z5);
                    break;
                case 23:
                    z6 = false;
                    i7 = this.zzc[i18];
                    zzgr.zzf(i7, (List) unsafe.getObject(obj, j), zzibVar, z6);
                    break;
                case 24:
                    z7 = false;
                    i8 = this.zzc[i18];
                    zzgr.zzk(i8, (List) unsafe.getObject(obj, j), zzibVar, z7);
                    break;
                case 25:
                    i9 = this.zzc[i18];
                    list = (List) unsafe.getObject(obj, j);
                    z8 = false;
                    zzgr.zzn(i9, list, zzibVar, z8);
                    break;
                case 26:
                    zzgr.zza(this.zzc[i18], (List) unsafe.getObject(obj, j), zzibVar);
                    break;
                case 27:
                    zzgr.zza(this.zzc[i18], (List) unsafe.getObject(obj, j), zzibVar, zza(i18));
                    break;
                case 28:
                    zzgr.zzb(this.zzc[i18], (List) unsafe.getObject(obj, j), zzibVar);
                    break;
                case 29:
                    z9 = false;
                    i10 = this.zzc[i18];
                    zzgr.zzi(i10, (List) unsafe.getObject(obj, j), zzibVar, z9);
                    break;
                case 30:
                    z10 = false;
                    i11 = this.zzc[i18];
                    zzgr.zzm(i11, (List) unsafe.getObject(obj, j), zzibVar, z10);
                    break;
                case 31:
                    z11 = false;
                    i12 = this.zzc[i18];
                    zzgr.zzl(i12, (List) unsafe.getObject(obj, j), zzibVar, z11);
                    break;
                case 32:
                    z12 = false;
                    i13 = this.zzc[i18];
                    zzgr.zzg(i13, (List) unsafe.getObject(obj, j), zzibVar, z12);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    z13 = false;
                    i14 = this.zzc[i18];
                    zzgr.zzj(i14, (List) unsafe.getObject(obj, j), zzibVar, z13);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i15 = this.zzc[i18];
                    list2 = (List) unsafe.getObject(obj, j);
                    z14 = false;
                    zzgr.zze(i15, list2, zzibVar, z14);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    z = true;
                    i2 = this.zzc[i18];
                    zzgr.zza(i2, (List) unsafe.getObject(obj, j), zzibVar, z);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    z2 = true;
                    i3 = this.zzc[i18];
                    zzgr.zzb(i3, (List) unsafe.getObject(obj, j), zzibVar, z2);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    z3 = true;
                    i4 = this.zzc[i18];
                    zzgr.zzc(i4, (List) unsafe.getObject(obj, j), zzibVar, z3);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    z4 = true;
                    i5 = this.zzc[i18];
                    zzgr.zzd(i5, (List) unsafe.getObject(obj, j), zzibVar, z4);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    z5 = true;
                    i6 = this.zzc[i18];
                    zzgr.zzh(i6, (List) unsafe.getObject(obj, j), zzibVar, z5);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    z6 = true;
                    i7 = this.zzc[i18];
                    zzgr.zzf(i7, (List) unsafe.getObject(obj, j), zzibVar, z6);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    z7 = true;
                    i8 = this.zzc[i18];
                    zzgr.zzk(i8, (List) unsafe.getObject(obj, j), zzibVar, z7);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    z8 = true;
                    i9 = this.zzc[i18];
                    list = (List) unsafe.getObject(obj, j);
                    zzgr.zzn(i9, list, zzibVar, z8);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    z9 = true;
                    i10 = this.zzc[i18];
                    zzgr.zzi(i10, (List) unsafe.getObject(obj, j), zzibVar, z9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    z10 = true;
                    i11 = this.zzc[i18];
                    zzgr.zzm(i11, (List) unsafe.getObject(obj, j), zzibVar, z10);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    z11 = true;
                    i12 = this.zzc[i18];
                    zzgr.zzl(i12, (List) unsafe.getObject(obj, j), zzibVar, z11);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    z12 = true;
                    i13 = this.zzc[i18];
                    zzgr.zzg(i13, (List) unsafe.getObject(obj, j), zzibVar, z12);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    z13 = true;
                    i14 = this.zzc[i18];
                    zzgr.zzj(i14, (List) unsafe.getObject(obj, j), zzibVar, z13);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    i15 = this.zzc[i18];
                    list2 = (List) unsafe.getObject(obj, j);
                    z14 = true;
                    zzgr.zze(i15, list2, zzibVar, z14);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzgr.zzb(this.zzc[i18], (List) unsafe.getObject(obj, j), zzibVar, zza(i18));
                    break;
                case 50:
                    zza(zzibVar, i19, unsafe.getObject(obj, j), i18);
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, zzb(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, zzc(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzc(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzc(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzd(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzd(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, zzf(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zza(obj, i19, i18)) {
                        zza(i19, unsafe.getObject(obj, j), zzibVar);
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, unsafe.getObject(obj, j), zza(i18));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, (zzdn) unsafe.getObject(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zze(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzb(i19, zzd(obj, j));
                    }
                    break;
                case 64:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zza(i19, zzd(obj, j));
                    }
                    break;
                case 65:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzb(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzf(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zze(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zza(obj, i19, i18)) {
                        zzibVar.zzb(i19, unsafe.getObject(obj, j), zza(i18));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzr.zza(zzibVar, entry);
            entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
        }
        zza(this.zzq, obj, zzibVar);
    }

    private final void zzb(Object obj, Object obj2, int i) {
        int iZzc = zzc(i);
        int i2 = this.zzc[i];
        long j = iZzc & 1048575;
        if (zza(obj2, i2, i)) {
            Object objZzf = zzhn.zzf(obj, j);
            Object objZzf2 = zzhn.zzf(obj2, j);
            if (objZzf != null && objZzf2 != null) {
                zzhn.zza(obj, j, zzeq.zza(objZzf, objZzf2));
                zzb(obj, i2, i);
            } else if (objZzf2 != null) {
                zzhn.zza(obj, j, objZzf2);
                zzb(obj, i2, i);
            }
        }
    }

    private static float zzc(Object obj, long j) {
        return ((Float) zzhn.zzf(obj, j)).floatValue();
    }

    private final int zzc(int i) {
        return this.zzc[i + 1];
    }

    private final boolean zzc(Object obj, Object obj2, int i) {
        return zza(obj, i) == zza(obj2, i);
    }

    private final int zzd(int i) {
        return this.zzc[i + 2];
    }

    private static int zzd(Object obj, long j) {
        return ((Integer) zzhn.zzf(obj, j)).intValue();
    }

    private static long zze(Object obj, long j) {
        return ((Long) zzhn.zzf(obj, j)).longValue();
    }

    private static boolean zzf(Object obj, long j) {
        return ((Boolean) zzhn.zzf(obj, j)).booleanValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f4 A[PHI: r3
      0x00f4: PHI (r3v9 java.lang.Object) = (r3v6 java.lang.Object), (r3v10 java.lang.Object) binds: [B:74:0x0110, B:68:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(Object obj) {
        int i;
        double dZze;
        float fZzd;
        boolean zZzc;
        Object objZzf;
        int iZza;
        long jZzb;
        Object objZzf2;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzc = zzc(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzc;
            int iHashCode = 37;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    dZze = zzhn.zze(obj, j);
                    jZzb = Double.doubleToLongBits(dZze);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case 1:
                    i = i2 * 53;
                    fZzd = zzhn.zzd(obj, j);
                    iZza = Float.floatToIntBits(fZzd);
                    i2 = i + iZza;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i2 * 53;
                    jZzb = zzhn.zzb(obj, j);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i = i2 * 53;
                    iZza = zzhn.zza(obj, j);
                    i2 = i + iZza;
                    break;
                case 7:
                    i = i2 * 53;
                    zZzc = zzhn.zzc(obj, j);
                    iZza = zzeq.zza(zZzc);
                    i2 = i + iZza;
                    break;
                case 8:
                    i = i2 * 53;
                    iZza = ((String) zzhn.zzf(obj, j)).hashCode();
                    i2 = i + iZza;
                    break;
                case 9:
                    objZzf = zzhn.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
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
                    i = i2 * 53;
                    objZzf2 = zzhn.zzf(obj, j);
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
                case 17:
                    objZzf = zzhn.zzf(obj, j);
                    if (objZzf != null) {
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        dZze = zzb(obj, j);
                        jZzb = Double.doubleToLongBits(dZze);
                        iZza = zzeq.zza(jZzb);
                        i2 = i + iZza;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        fZzd = zzc(obj, j);
                        iZza = Float.floatToIntBits(fZzd);
                        i2 = i + iZza;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzb = zze(obj, j);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzb = zze(obj, j);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = zzd(obj, j);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzb = zze(obj, j);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = zzd(obj, j);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        zZzc = zzf(obj, j);
                        iZza = zzeq.zza(zZzc);
                        i2 = i + iZza;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = ((String) zzhn.zzf(obj, j)).hashCode();
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    objZzf2 = zzhn.zzf(obj, j);
                    i = i2 * 53;
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    objZzf2 = zzhn.zzf(obj, j);
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = zzd(obj, j);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = zzd(obj, j);
                    i2 = i + iZza;
                    break;
                case 64:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = zzd(obj, j);
                    i2 = i + iZza;
                    break;
                case 65:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzb = zze(obj, j);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZza = zzd(obj, j);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzb = zze(obj, j);
                    iZza = zzeq.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    objZzf2 = zzhn.zzf(obj, j);
                    i = i2 * 53;
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzq.zza(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzr.zza(obj).hashCode() : iHashCode2;
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05da  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, zzib zzibVar) {
        Iterator itZzd;
        Map.Entry entry;
        double dZze;
        float fZzd;
        long jZzb;
        long jZzb2;
        int iZza;
        long jZzb3;
        int iZza2;
        boolean zZzc;
        int iZza3;
        int iZza4;
        int iZza5;
        long jZzb4;
        int iZza6;
        long jZzb5;
        Iterator itZze;
        Map.Entry entry2;
        double dZze2;
        float fZzd2;
        long jZzb6;
        long jZzb7;
        int iZza7;
        long jZzb8;
        int iZza8;
        boolean zZzc2;
        int iZza9;
        int iZza10;
        int iZza11;
        long jZzb9;
        int iZza12;
        long jZzb10;
        if (zzibVar.zza() == zzia.zzb) {
            zza(this.zzq, obj, zzibVar);
            if (this.zzh) {
                zzej zzejVarZza = this.zzr.zza(obj);
                if (zzejVarZza.zza.isEmpty()) {
                    itZze = null;
                    entry2 = null;
                } else {
                    itZze = zzejVarZza.zze();
                    entry2 = (Map.Entry) itZze.next();
                }
            }
            for (int length = this.zzc.length - 3; length >= 0; length -= 3) {
                int iZzc = zzc(length);
                int i = this.zzc[length];
                while (entry2 != null && this.zzr.zza(entry2) > i) {
                    this.zzr.zza(zzibVar, entry2);
                    entry2 = itZze.hasNext() ? (Map.Entry) itZze.next() : null;
                }
                switch ((iZzc & 267386880) >>> 20) {
                    case 0:
                        if (zza(obj, length)) {
                            dZze2 = zzhn.zze(obj, iZzc & 1048575);
                            zzibVar.zza(i, dZze2);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza(obj, length)) {
                            fZzd2 = zzhn.zzd(obj, iZzc & 1048575);
                            zzibVar.zza(i, fZzd2);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza(obj, length)) {
                            jZzb6 = zzhn.zzb(obj, iZzc & 1048575);
                            zzibVar.zza(i, jZzb6);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza(obj, length)) {
                            jZzb7 = zzhn.zzb(obj, iZzc & 1048575);
                            zzibVar.zzc(i, jZzb7);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza(obj, length)) {
                            iZza7 = zzhn.zza(obj, iZzc & 1048575);
                            zzibVar.zzc(i, iZza7);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza(obj, length)) {
                            jZzb8 = zzhn.zzb(obj, iZzc & 1048575);
                            zzibVar.zzd(i, jZzb8);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza(obj, length)) {
                            iZza8 = zzhn.zza(obj, iZzc & 1048575);
                            zzibVar.zzd(i, iZza8);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza(obj, length)) {
                            zZzc2 = zzhn.zzc(obj, iZzc & 1048575);
                            zzibVar.zza(i, zZzc2);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza(obj, length)) {
                            zza(i, zzhn.zzf(obj, iZzc & 1048575), zzibVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zza(obj, length)) {
                            zzibVar.zza(i, zzhn.zzf(obj, iZzc & 1048575), zza(length));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zza(obj, length)) {
                            zzibVar.zza(i, (zzdn) zzhn.zzf(obj, iZzc & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza(obj, length)) {
                            iZza9 = zzhn.zza(obj, iZzc & 1048575);
                            zzibVar.zze(i, iZza9);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza(obj, length)) {
                            iZza10 = zzhn.zza(obj, iZzc & 1048575);
                            zzibVar.zzb(i, iZza10);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza(obj, length)) {
                            iZza11 = zzhn.zza(obj, iZzc & 1048575);
                            zzibVar.zza(i, iZza11);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza(obj, length)) {
                            jZzb9 = zzhn.zzb(obj, iZzc & 1048575);
                            zzibVar.zzb(i, jZzb9);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza(obj, length)) {
                            iZza12 = zzhn.zza(obj, iZzc & 1048575);
                            zzibVar.zzf(i, iZza12);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza(obj, length)) {
                            jZzb10 = zzhn.zzb(obj, iZzc & 1048575);
                            zzibVar.zze(i, jZzb10);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zza(obj, length)) {
                            zzibVar.zzb(i, zzhn.zzf(obj, iZzc & 1048575), zza(length));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzgr.zza(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 19:
                        zzgr.zzb(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 20:
                        zzgr.zzc(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 21:
                        zzgr.zzd(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 22:
                        zzgr.zzh(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 23:
                        zzgr.zzf(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 24:
                        zzgr.zzk(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 25:
                        zzgr.zzn(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 26:
                        zzgr.zza(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar);
                        break;
                    case 27:
                        zzgr.zza(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, zza(length));
                        break;
                    case 28:
                        zzgr.zzb(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar);
                        break;
                    case 29:
                        zzgr.zzi(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 30:
                        zzgr.zzm(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 31:
                        zzgr.zzl(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case 32:
                        zzgr.zzg(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzgr.zzj(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzgr.zze(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, false);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzgr.zza(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzgr.zzb(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzgr.zzc(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzgr.zzd(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzgr.zzh(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzgr.zzf(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzgr.zzk(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzgr.zzn(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzgr.zzi(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzgr.zzm(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzgr.zzl(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzgr.zzg(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzgr.zzj(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzgr.zze(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzgr.zzb(this.zzc[length], (List) zzhn.zzf(obj, iZzc & 1048575), zzibVar, zza(length));
                        break;
                    case 50:
                        zza(zzibVar, i, zzhn.zzf(obj, iZzc & 1048575), length);
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zza(obj, i, length)) {
                            dZze2 = zzb(obj, iZzc & 1048575);
                            zzibVar.zza(i, dZze2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zza(obj, i, length)) {
                            fZzd2 = zzc(obj, iZzc & 1048575);
                            zzibVar.zza(i, fZzd2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zza(obj, i, length)) {
                            jZzb6 = zze(obj, iZzc & 1048575);
                            zzibVar.zza(i, jZzb6);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zza(obj, i, length)) {
                            jZzb7 = zze(obj, iZzc & 1048575);
                            zzibVar.zzc(i, jZzb7);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zza(obj, i, length)) {
                            iZza7 = zzd(obj, iZzc & 1048575);
                            zzibVar.zzc(i, iZza7);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zza(obj, i, length)) {
                            jZzb8 = zze(obj, iZzc & 1048575);
                            zzibVar.zzd(i, jZzb8);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zza(obj, i, length)) {
                            iZza8 = zzd(obj, iZzc & 1048575);
                            zzibVar.zzd(i, iZza8);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zza(obj, i, length)) {
                            zZzc2 = zzf(obj, iZzc & 1048575);
                            zzibVar.zza(i, zZzc2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                    case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zza(obj, i, length)) {
                            iZza9 = zzd(obj, iZzc & 1048575);
                            zzibVar.zze(i, iZza9);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zza(obj, i, length)) {
                            iZza10 = zzd(obj, iZzc & 1048575);
                            zzibVar.zzb(i, iZza10);
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zza(obj, i, length)) {
                            iZza11 = zzd(obj, iZzc & 1048575);
                            zzibVar.zza(i, iZza11);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zza(obj, i, length)) {
                            jZzb9 = zze(obj, iZzc & 1048575);
                            zzibVar.zzb(i, jZzb9);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zza(obj, i, length)) {
                            iZza12 = zzd(obj, iZzc & 1048575);
                            zzibVar.zzf(i, iZza12);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zza(obj, i, length)) {
                            jZzb10 = zze(obj, iZzc & 1048575);
                            zzibVar.zze(i, jZzb10);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzr.zza(zzibVar, entry2);
                entry2 = itZze.hasNext() ? (Map.Entry) itZze.next() : null;
            }
            return;
        }
        if (!this.zzj) {
            zzb(obj, zzibVar);
            return;
        }
        if (this.zzh) {
            zzej zzejVarZza2 = this.zzr.zza(obj);
            if (zzejVarZza2.zza.isEmpty()) {
                itZzd = null;
                entry = null;
            } else {
                itZzd = zzejVarZza2.zzd();
                entry = (Map.Entry) itZzd.next();
            }
        }
        int length2 = this.zzc.length;
        for (int i2 = 0; i2 < length2; i2 += 3) {
            int iZzc2 = zzc(i2);
            int i3 = this.zzc[i2];
            while (entry != null && this.zzr.zza(entry) <= i3) {
                this.zzr.zza(zzibVar, entry);
                entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
            }
            switch ((iZzc2 & 267386880) >>> 20) {
                case 0:
                    if (zza(obj, i2)) {
                        dZze = zzhn.zze(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, dZze);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza(obj, i2)) {
                        fZzd = zzhn.zzd(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, fZzd);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza(obj, i2)) {
                        jZzb = zzhn.zzb(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, jZzb);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza(obj, i2)) {
                        jZzb2 = zzhn.zzb(obj, iZzc2 & 1048575);
                        zzibVar.zzc(i3, jZzb2);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza(obj, i2)) {
                        iZza = zzhn.zza(obj, iZzc2 & 1048575);
                        zzibVar.zzc(i3, iZza);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza(obj, i2)) {
                        jZzb3 = zzhn.zzb(obj, iZzc2 & 1048575);
                        zzibVar.zzd(i3, jZzb3);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza(obj, i2)) {
                        iZza2 = zzhn.zza(obj, iZzc2 & 1048575);
                        zzibVar.zzd(i3, iZza2);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza(obj, i2)) {
                        zZzc = zzhn.zzc(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, zZzc);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza(obj, i2)) {
                        zza(i3, zzhn.zzf(obj, iZzc2 & 1048575), zzibVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (zza(obj, i2)) {
                        zzibVar.zza(i3, zzhn.zzf(obj, iZzc2 & 1048575), zza(i2));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zza(obj, i2)) {
                        zzibVar.zza(i3, (zzdn) zzhn.zzf(obj, iZzc2 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza(obj, i2)) {
                        iZza3 = zzhn.zza(obj, iZzc2 & 1048575);
                        zzibVar.zze(i3, iZza3);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza(obj, i2)) {
                        iZza4 = zzhn.zza(obj, iZzc2 & 1048575);
                        zzibVar.zzb(i3, iZza4);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza(obj, i2)) {
                        iZza5 = zzhn.zza(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, iZza5);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza(obj, i2)) {
                        jZzb4 = zzhn.zzb(obj, iZzc2 & 1048575);
                        zzibVar.zzb(i3, jZzb4);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza(obj, i2)) {
                        iZza6 = zzhn.zza(obj, iZzc2 & 1048575);
                        zzibVar.zzf(i3, iZza6);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza(obj, i2)) {
                        jZzb5 = zzhn.zzb(obj, iZzc2 & 1048575);
                        zzibVar.zze(i3, jZzb5);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zza(obj, i2)) {
                        zzibVar.zzb(i3, zzhn.zzf(obj, iZzc2 & 1048575), zza(i2));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzgr.zza(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 19:
                    zzgr.zzb(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 20:
                    zzgr.zzc(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 21:
                    zzgr.zzd(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 22:
                    zzgr.zzh(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 23:
                    zzgr.zzf(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 24:
                    zzgr.zzk(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 25:
                    zzgr.zzn(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 26:
                    zzgr.zza(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar);
                    break;
                case 27:
                    zzgr.zza(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, zza(i2));
                    break;
                case 28:
                    zzgr.zzb(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar);
                    break;
                case 29:
                    zzgr.zzi(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 30:
                    zzgr.zzm(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 31:
                    zzgr.zzl(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case 32:
                    zzgr.zzg(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzgr.zzj(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzgr.zze(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, false);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzgr.zza(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzgr.zzb(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzgr.zzc(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzgr.zzd(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzgr.zzh(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzgr.zzf(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzgr.zzk(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzgr.zzn(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzgr.zzi(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzgr.zzm(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzgr.zzl(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzgr.zzg(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzgr.zzj(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzgr.zze(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, true);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzgr.zzb(this.zzc[i2], (List) zzhn.zzf(obj, iZzc2 & 1048575), zzibVar, zza(i2));
                    break;
                case 50:
                    zza(zzibVar, i3, zzhn.zzf(obj, iZzc2 & 1048575), i2);
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i3, i2)) {
                        dZze = zzb(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, dZze);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i3, i2)) {
                        fZzd = zzc(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, fZzd);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i3, i2)) {
                        jZzb = zze(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, jZzb);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i3, i2)) {
                        jZzb2 = zze(obj, iZzc2 & 1048575);
                        zzibVar.zzc(i3, jZzb2);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i3, i2)) {
                        iZza = zzd(obj, iZzc2 & 1048575);
                        zzibVar.zzc(i3, iZza);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zza(obj, i3, i2)) {
                        jZzb3 = zze(obj, iZzc2 & 1048575);
                        zzibVar.zzd(i3, jZzb3);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zza(obj, i3, i2)) {
                        iZza2 = zzd(obj, iZzc2 & 1048575);
                        zzibVar.zzd(i3, iZza2);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i3, i2)) {
                        zZzc = zzf(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, zZzc);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zza(obj, i3, i2)) {
                        iZza3 = zzd(obj, iZzc2 & 1048575);
                        zzibVar.zze(i3, iZza3);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i3, i2)) {
                        iZza4 = zzd(obj, iZzc2 & 1048575);
                        zzibVar.zzb(i3, iZza4);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza(obj, i3, i2)) {
                        iZza5 = zzd(obj, iZzc2 & 1048575);
                        zzibVar.zza(i3, iZza5);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza(obj, i3, i2)) {
                        jZzb4 = zze(obj, iZzc2 & 1048575);
                        zzibVar.zzb(i3, jZzb4);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i3, i2)) {
                        iZza6 = zzd(obj, iZzc2 & 1048575);
                        zzibVar.zzf(i3, iZza6);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i3, i2)) {
                        jZzb5 = zze(obj, iZzc2 & 1048575);
                        zzibVar.zze(i3, jZzb5);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzr.zza(zzibVar, entry);
            entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
        }
        zza(this.zzq, obj, zzibVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zza(Object obj, Object obj2) {
        int length = this.zzc.length;
        int i = 0;
        while (true) {
            boolean zZza = true;
            if (i >= length) {
                if (!this.zzq.zza(obj).equals(this.zzq.zza(obj2))) {
                    return false;
                }
                if (this.zzh) {
                    return this.zzr.zza(obj).equals(this.zzr.zza(obj2));
                }
                return true;
            }
            int iZzc = zzc(i);
            long j = iZzc & 1048575;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (!zzc(obj, obj2, i) || Double.doubleToLongBits(zzhn.zze(obj, j)) != Double.doubleToLongBits(zzhn.zze(obj2, j))) {
                        zZza = false;
                        break;
                    }
                    break;
                case 1:
                    if (!zzc(obj, obj2, i) || Float.floatToIntBits(zzhn.zzd(obj, j)) != Float.floatToIntBits(zzhn.zzd(obj2, j))) {
                    }
                    break;
                case 2:
                    if (!zzc(obj, obj2, i) || zzhn.zzb(obj, j) != zzhn.zzb(obj2, j)) {
                    }
                    break;
                case 3:
                    if (!zzc(obj, obj2, i) || zzhn.zzb(obj, j) != zzhn.zzb(obj2, j)) {
                    }
                    break;
                case 4:
                    if (!zzc(obj, obj2, i) || zzhn.zza(obj, j) != zzhn.zza(obj2, j)) {
                    }
                    break;
                case 5:
                    if (!zzc(obj, obj2, i) || zzhn.zzb(obj, j) != zzhn.zzb(obj2, j)) {
                    }
                    break;
                case 6:
                    if (!zzc(obj, obj2, i) || zzhn.zza(obj, j) != zzhn.zza(obj2, j)) {
                    }
                    break;
                case 7:
                    if (!zzc(obj, obj2, i) || zzhn.zzc(obj, j) != zzhn.zzc(obj2, j)) {
                    }
                    break;
                case 8:
                    if (!zzc(obj, obj2, i) || !zzgr.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j))) {
                    }
                    break;
                case 9:
                    if (!zzc(obj, obj2, i) || !zzgr.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j))) {
                    }
                    break;
                case 10:
                    if (!zzc(obj, obj2, i) || !zzgr.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j))) {
                    }
                    break;
                case 11:
                    if (!zzc(obj, obj2, i) || zzhn.zza(obj, j) != zzhn.zza(obj2, j)) {
                    }
                    break;
                case 12:
                    if (!zzc(obj, obj2, i) || zzhn.zza(obj, j) != zzhn.zza(obj2, j)) {
                    }
                    break;
                case 13:
                    if (!zzc(obj, obj2, i) || zzhn.zza(obj, j) != zzhn.zza(obj2, j)) {
                    }
                    break;
                case 14:
                    if (!zzc(obj, obj2, i) || zzhn.zzb(obj, j) != zzhn.zzb(obj2, j)) {
                    }
                    break;
                case 15:
                    if (!zzc(obj, obj2, i) || zzhn.zza(obj, j) != zzhn.zza(obj2, j)) {
                    }
                    break;
                case 16:
                    if (!zzc(obj, obj2, i) || zzhn.zzb(obj, j) != zzhn.zzb(obj2, j)) {
                    }
                    break;
                case 17:
                    if (!zzc(obj, obj2, i) || !zzgr.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j))) {
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
                    zZza = zzgr.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j));
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
                    long jZzd = zzd(i) & 1048575;
                    if (zzhn.zza(obj, jZzd) != zzhn.zza(obj2, jZzd) || !zzgr.zza(zzhn.zzf(obj, j), zzhn.zzf(obj2, j))) {
                    }
                    break;
            }
            if (!zZza) {
                return false;
            }
            i += 3;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    public final void zzb(Object obj) {
        int i;
        int i2 = this.zzm;
        while (true) {
            i = this.zzn;
            if (i2 >= i) {
                break;
            }
            long jZzc = zzc(this.zzl[i2]) & 1048575;
            Object objZzf = zzhn.zzf(obj, jZzc);
            if (objZzf != null) {
                zzhn.zza(obj, jZzc, this.zzs.zzb(objZzf));
            }
            i2++;
        }
        int length = this.zzl.length;
        while (i < length) {
            this.zzp.zza(obj, this.zzl[i]);
            i++;
        }
        this.zzq.zzb(obj);
        if (this.zzh) {
            this.zzr.zzc(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzc = zzc(i);
            long j = 1048575 & iZzc;
            int i2 = this.zzc[i];
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (zza(obj2, i)) {
                        zzhn.zza(obj, j, zzhn.zze(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza(obj2, i)) {
                        zzhn.zza(obj, j, zzhn.zzd(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 3:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 4:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 5:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 6:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 7:
                    if (zza(obj2, i)) {
                        zzhn.zza(obj, j, zzhn.zzc(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzf(obj2, j));
                    zzb(obj, i);
                    break;
                case 9:
                case 17:
                    zza(obj, obj2, i);
                    break;
                case 10:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzf(obj2, j));
                    zzb(obj, i);
                    break;
                case 11:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 12:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 13:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 14:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 15:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 16:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzhn.zza(obj, j, zzhn.zzb(obj2, j));
                    zzb(obj, i);
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
                    this.zzp.zza(obj, obj2, j);
                    break;
                case 50:
                    zzgr.zza(this.zzs, obj, obj2, j);
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
                    if (zza(obj2, i2, i)) {
                        zzhn.zza(obj, j, zzhn.zzf(obj2, j));
                        zzb(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    zzb(obj, obj2, i);
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case 64:
                case 65:
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zza(obj2, i2, i)) {
                        break;
                    }
                    break;
            }
        }
        zzgr.zza(this.zzq, obj, obj2);
        if (this.zzh) {
            zzgr.zza(this.zzr, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzc(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzm) {
            int i6 = this.zzl[i5];
            int i7 = this.zzc[i6];
            int iZzc = zzc(i6);
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
            if ((268435456 & iZzc) != 0 && !zza(obj, i6, i, i2, i10)) {
                return false;
            }
            int i11 = (267386880 & iZzc) >>> 20;
            if (i11 == 9 || i11 == 17) {
                if (zza(obj, i6, i, i2, i10) && !zza(obj, iZzc, zza(i6))) {
                    return false;
                }
            } else if (i11 == 27) {
                List list = (List) zzhn.zzf(obj, iZzc & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgp zzgpVarZza = zza(i6);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!zzgpVarZza.zzc(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (i11 == 60 || i11 == 68) {
                if (zza(obj, i7, i6) && !zza(obj, iZzc, zza(i6))) {
                    return false;
                }
            } else if (i11 != 49) {
                if (i11 == 50 && !this.zzs.zza(zzhn.zzf(obj, iZzc & 1048575)).isEmpty()) {
                    this.zzs.zzc(zzb(i6));
                    throw null;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.zzh || this.zzr.zza(obj).zzf();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03c0, code lost:
    
        if (zza(r19, r15, r3) != false) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x03c2, code lost:
    
        r6 = com.google.android.gms.internal.mlkit_language_id.zzea.zzc(r15, (com.google.android.gms.internal.mlkit_language_id.zzfz) r2.getObject(r19, r8), zza(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x03fb, code lost:
    
        if (zza(r19, r15, r3) != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x03fd, code lost:
    
        r6 = com.google.android.gms.internal.mlkit_language_id.zzea.zzh(r15, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0408, code lost:
    
        if (zza(r19, r15, r3) != false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x040a, code lost:
    
        r8 = com.google.android.gms.internal.mlkit_language_id.zzea.zzj(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0433, code lost:
    
        if (zza(r19, r15, r3) != false) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0435, code lost:
    
        r6 = r2.getObject(r19, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0444, code lost:
    
        if (zza(r19, r15, r3) != false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0446, code lost:
    
        r6 = com.google.android.gms.internal.mlkit_language_id.zzgr.zza(r15, r2.getObject(r19, r8), zza(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x046f, code lost:
    
        if (zza(r19, r15, r3) != false) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0471, code lost:
    
        r8 = com.google.android.gms.internal.mlkit_language_id.zzea.zzb(r15, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0506, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0508, code lost:
    
        r8 = (com.google.android.gms.internal.mlkit_language_id.zzea.zze(r15) + com.google.android.gms.internal.mlkit_language_id.zzea.zzg(r6)) + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x051e, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x052b, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0538, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x0545, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0552, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x055f, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x056c, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x0579, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0586, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0594, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05a2, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x05b0, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x05be, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x067a, code lost:
    
        if ((r12 & r11) != 0) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0694, code lost:
    
        if ((r12 & r11) != 0) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x069a, code lost:
    
        if ((r12 & r11) != 0) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06b4, code lost:
    
        if ((r12 & r11) != 0) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x06ba, code lost:
    
        if ((r12 & r11) != 0) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x06ce, code lost:
    
        if ((r12 & r11) != 0) goto L252;
     */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0439 A[PHI: r6
      0x0439: PHI (r6v146 java.lang.Object) = (r6v15 java.lang.Object), (r6v142 java.lang.Object), (r6v149 java.lang.Object) binds: [B:364:0x06c8, B:247:0x0460, B:239:0x0435] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0463 A[PHI: r6
      0x0463: PHI (r6v138 java.lang.Object) = (r6v15 java.lang.Object), (r6v142 java.lang.Object) binds: [B:364:0x06c8, B:247:0x0460] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b7 A[PHI: r4
      0x00b7: PHI (r4v107 java.lang.Object) = (r4v26 java.lang.Object), (r4v105 java.lang.Object), (r4v109 java.lang.Object) binds: [B:167:0x0324, B:50:0x00dd, B:42:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e0 A[PHI: r4
      0x00e0: PHI (r4v103 java.lang.Object) = (r4v26 java.lang.Object), (r4v105 java.lang.Object) binds: [B:167:0x0324, B:50:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzgp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzd(Object obj) {
        int i;
        long j;
        int iZzd;
        Object object;
        int iZzd2;
        int iZzd3;
        int iZzd4;
        long jZze;
        int iZzi;
        int iZza;
        int iZzi2;
        int iZze;
        long jZzb;
        long jZzb2;
        int iZza2;
        Object objZzf;
        int iZza3;
        int iZza4;
        int iZza5;
        long jZzb3;
        int iZza6;
        int iZzi3;
        int i2 = 267386880;
        int i3 = 1048575;
        int i4 = 1;
        if (!this.zzj) {
            Unsafe unsafe = zzb;
            int i5 = 0;
            int iZzb = 0;
            int i6 = 1048575;
            int i7 = 0;
            while (i5 < this.zzc.length) {
                int iZzc = zzc(i5);
                int[] iArr = this.zzc;
                int i8 = iArr[i5];
                int i9 = (iZzc & 267386880) >>> 20;
                if (i9 <= 17) {
                    int i10 = iArr[i5 + 2];
                    int i11 = i10 & i3;
                    i = i4 << (i10 >>> 20);
                    if (i11 != i6) {
                        i7 = unsafe.getInt(obj, i11);
                        i6 = i11;
                    }
                } else {
                    i = 0;
                }
                long j2 = iZzc & i3;
                switch (i9) {
                    case 0:
                        j = 0;
                        if ((i7 & i) != 0) {
                            iZzb += zzea.zzb(i8, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        j = 0;
                        if ((i7 & i) != 0) {
                            iZzb += zzea.zzb(i8, BitmapDescriptorFactory.HUE_RED);
                        }
                        break;
                    case 2:
                        j = 0;
                        if ((i & i7) != 0) {
                            iZzd = zzea.zzd(i8, unsafe.getLong(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 3:
                        j = 0;
                        if ((i & i7) != 0) {
                            iZzd = zzea.zze(i8, unsafe.getLong(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 4:
                        j = 0;
                        if ((i & i7) != 0) {
                            iZzd = zzea.zzf(i8, unsafe.getInt(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 5:
                        j = 0;
                        if ((i7 & i) != 0) {
                            iZzd = zzea.zzg(i8, 0L);
                            iZzb += iZzd;
                        }
                        break;
                    case 6:
                        if ((i7 & i) != 0) {
                            iZzb += zzea.zzi(i8, 0);
                        }
                        j = 0;
                        break;
                    case 7:
                        break;
                    case 8:
                        if ((i7 & i) != 0) {
                            object = unsafe.getObject(obj, j2);
                            iZzi = object instanceof zzdn ? zzea.zzc(i8, (zzdn) object) : zzea.zzb(i8, (String) object);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 9:
                        break;
                    case 10:
                        break;
                    case 11:
                        if ((i7 & i) != 0) {
                            iZzd2 = unsafe.getInt(obj, j2);
                            iZzi = zzea.zzg(i8, iZzd2);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 12:
                        if ((i7 & i) != 0) {
                            iZzd3 = unsafe.getInt(obj, j2);
                            iZzi = zzea.zzk(i8, iZzd3);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 13:
                        break;
                    case 14:
                        break;
                    case 15:
                        if ((i7 & i) != 0) {
                            iZzd4 = unsafe.getInt(obj, j2);
                            iZzi = zzea.zzh(i8, iZzd4);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 16:
                        if ((i7 & i) != 0) {
                            jZze = unsafe.getLong(obj, j2);
                            iZzi = zzea.zzf(i8, jZze);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 17:
                        break;
                    case 18:
                        iZzi = zzgr.zzi(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 19:
                    case 24:
                    case 31:
                        iZza = zzgr.zzh(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 20:
                        iZza = zzgr.zza(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 21:
                        iZza = zzgr.zzb(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 22:
                        iZza = zzgr.zze(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 23:
                    case 32:
                        iZza = zzgr.zzi(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 25:
                        iZza = zzgr.zzj(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 26:
                        iZzi = zzgr.zza(i8, (List) unsafe.getObject(obj, j2));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 27:
                        iZzi = zzgr.zza(i8, (List) unsafe.getObject(obj, j2), zza(i5));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 28:
                        iZzi = zzgr.zzb(i8, (List) unsafe.getObject(obj, j2));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 29:
                        iZzi = zzgr.zzf(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 30:
                        iZza = zzgr.zzd(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        iZza = zzgr.zzg(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        iZza = zzgr.zzc(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        iZzi2 = zzgr.zzi((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        iZzi2 = zzgr.zzh((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        iZzi2 = zzgr.zza((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        iZzi2 = zzgr.zzb((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        iZzi2 = zzgr.zze((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        iZzi2 = zzgr.zzi((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        iZzi2 = zzgr.zzh((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        iZzi2 = zzgr.zzj((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        iZzi2 = zzgr.zzf((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        iZzi2 = zzgr.zzd((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        iZzi2 = zzgr.zzh((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        iZzi2 = zzgr.zzi((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        iZzi2 = zzgr.zzg((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        iZzi2 = zzgr.zzc((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        iZzi = zzgr.zzb(i8, (List) unsafe.getObject(obj, j2), zza(i5));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 50:
                        iZzi = this.zzs.zza(i8, unsafe.getObject(obj, j2), zzb(i5));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzea.zzb(i8, 0.0d);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zza(obj, i8, i5)) {
                            iZze = zzea.zzb(i8, BitmapDescriptorFactory.HUE_RED);
                            iZzb += iZze;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzea.zzd(i8, zze(obj, j2));
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzea.zze(i8, zze(obj, j2));
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzea.zzf(i8, zzd(obj, j2));
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzea.zzg(i8, 0L);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zza(obj, i8, i5)) {
                            iZze = zzea.zzi(i8, 0);
                            iZzb += iZze;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        break;
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (zza(obj, i8, i5)) {
                            object = unsafe.getObject(obj, j2);
                            if (object instanceof zzdn) {
                            }
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        break;
                    case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        break;
                    case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zza(obj, i8, i5)) {
                            iZzd2 = zzd(obj, j2);
                            iZzi = zzea.zzg(i8, iZzd2);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zza(obj, i8, i5)) {
                            iZzd3 = zzd(obj, j2);
                            iZzi = zzea.zzk(i8, iZzd3);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 64:
                        break;
                    case 65:
                        break;
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zza(obj, i8, i5)) {
                            iZzd4 = zzd(obj, j2);
                            iZzi = zzea.zzh(i8, iZzd4);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zza(obj, i8, i5)) {
                            jZze = zze(obj, j2);
                            iZzi = zzea.zzf(i8, jZze);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        break;
                    default:
                        j = 0;
                        break;
                }
                i5 += 3;
                i3 = 1048575;
                i4 = 1;
            }
            int iZza7 = 0;
            int iZza8 = iZzb + zza(this.zzq, obj);
            if (!this.zzh) {
                return iZza8;
            }
            zzej zzejVarZza = this.zzr.zza(obj);
            for (int i12 = 0; i12 < zzejVarZza.zza.zzc(); i12++) {
                Map.Entry entryZzb = zzejVarZza.zza.zzb(i12);
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(entryZzb.getKey());
                iZza7 += zzej.zza((zzel) null, entryZzb.getValue());
            }
            for (Map.Entry entry : zzejVarZza.zza.zzd()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(entry.getKey());
                iZza7 += zzej.zza((zzel) null, entry.getValue());
            }
            return iZza8 + iZza7;
        }
        Unsafe unsafe2 = zzb;
        int i13 = 0;
        int i14 = 0;
        while (i13 < this.zzc.length) {
            int iZzc2 = zzc(i13);
            int i15 = (iZzc2 & i2) >>> 20;
            int i16 = this.zzc[i13];
            long j3 = iZzc2 & 1048575;
            if (i15 >= zzek.zza.zza() && i15 <= zzek.zzb.zza()) {
                int i17 = this.zzc[i13 + 2];
            }
            switch (i15) {
                case 0:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzb(i16, 0.0d);
                    i14 += iZza6;
                    break;
                case 1:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzb(i16, BitmapDescriptorFactory.HUE_RED);
                    i14 += iZza6;
                    break;
                case 2:
                    if (zza(obj, i13)) {
                        jZzb = zzhn.zzb(obj, j3);
                        iZza6 = zzea.zzd(i16, jZzb);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza(obj, i13)) {
                        jZzb2 = zzhn.zzb(obj, j3);
                        iZza6 = zzea.zze(i16, jZzb2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza(obj, i13)) {
                        iZza2 = zzhn.zza(obj, j3);
                        iZza6 = zzea.zzf(i16, iZza2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzg(i16, 0L);
                    i14 += iZza6;
                    break;
                case 6:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzi(i16, 0);
                    i14 += iZza6;
                    break;
                case 7:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzb(i16, true);
                    i14 += iZza6;
                    break;
                case 8:
                    if (zza(obj, i13)) {
                        objZzf = zzhn.zzf(obj, j3);
                        iZza6 = objZzf instanceof zzdn ? zzea.zzc(i16, (zzdn) objZzf) : zzea.zzb(i16, (String) objZzf);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzgr.zza(i16, zzhn.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 10:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    objZzf = zzhn.zzf(obj, j3);
                    i14 += iZza6;
                    break;
                case 11:
                    if (zza(obj, i13)) {
                        iZza3 = zzhn.zza(obj, j3);
                        iZza6 = zzea.zzg(i16, iZza3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza(obj, i13)) {
                        iZza4 = zzhn.zza(obj, j3);
                        iZza6 = zzea.zzk(i16, iZza4);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzj(i16, 0);
                    i14 += iZza6;
                    break;
                case 14:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzh(i16, 0L);
                    i14 += iZza6;
                    break;
                case 15:
                    if (zza(obj, i13)) {
                        iZza5 = zzhn.zza(obj, j3);
                        iZza6 = zzea.zzh(i16, iZza5);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza(obj, i13)) {
                        jZzb3 = zzhn.zzb(obj, j3);
                        iZza6 = zzea.zzf(i16, jZzb3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzc(i16, (zzfz) zzhn.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 18:
                case 23:
                case 32:
                    iZza6 = zzgr.zzi(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 19:
                case 24:
                case 31:
                    iZza6 = zzgr.zzh(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 20:
                    iZza6 = zzgr.zza(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 21:
                    iZza6 = zzgr.zzb(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 22:
                    iZza6 = zzgr.zze(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 25:
                    iZza6 = zzgr.zzj(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 26:
                    iZza6 = zzgr.zza(i16, zza(obj, j3));
                    i14 += iZza6;
                    break;
                case 27:
                    iZza6 = zzgr.zza(i16, zza(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 28:
                    iZza6 = zzgr.zzb(i16, zza(obj, j3));
                    i14 += iZza6;
                    break;
                case 29:
                    iZza6 = zzgr.zzf(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 30:
                    iZza6 = zzgr.zzd(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    iZza6 = zzgr.zzg(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    iZza6 = zzgr.zzc(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZzi3 = zzgr.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZzi3 = zzgr.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZzi3 = zzgr.zza((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZzi3 = zzgr.zzb((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZzi3 = zzgr.zze((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZzi3 = zzgr.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZzi3 = zzgr.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    iZzi3 = zzgr.zzj((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZzi3 = zzgr.zzf((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZzi3 = zzgr.zzd((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZzi3 = zzgr.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZzi3 = zzgr.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZzi3 = zzgr.zzg((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZzi3 = zzgr.zzc((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzea.zze(i16) + zzea.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    iZza6 = zzgr.zzb(i16, zza(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 50:
                    iZza6 = this.zzs.zza(i16, zzhn.zzf(obj, j3), zzb(i13));
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzb(i16, 0.0d);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzb(i16, BitmapDescriptorFactory.HUE_RED);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i16, i13)) {
                        jZzb = zze(obj, j3);
                        iZza6 = zzea.zzd(i16, jZzb);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i16, i13)) {
                        jZzb2 = zze(obj, j3);
                        iZza6 = zzea.zze(i16, jZzb2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i16, i13)) {
                        iZza2 = zzd(obj, j3);
                        iZza6 = zzea.zzf(i16, iZza2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzg(i16, 0L);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzi(i16, 0);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzb(i16, true);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zza(obj, i16, i13)) {
                        objZzf = zzhn.zzf(obj, j3);
                        if (objZzf instanceof zzdn) {
                        }
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzgr.zza(i16, zzhn.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    objZzf = zzhn.zzf(obj, j3);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zza(obj, i16, i13)) {
                        iZza3 = zzd(obj, j3);
                        iZza6 = zzea.zzg(i16, iZza3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i16, i13)) {
                        iZza4 = zzd(obj, j3);
                        iZza6 = zzea.zzk(i16, iZza4);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzj(i16, 0);
                    i14 += iZza6;
                    break;
                case 65:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzh(i16, 0L);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i16, i13)) {
                        iZza5 = zzd(obj, j3);
                        iZza6 = zzea.zzh(i16, iZza5);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i16, i13)) {
                        jZzb3 = zze(obj, j3);
                        iZza6 = zzea.zzf(i16, jZzb3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzea.zzc(i16, (zzfz) zzhn.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
            }
            i13 += 3;
            i2 = 267386880;
        }
        return i14 + zza(this.zzq, obj);
    }
}
