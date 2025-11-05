package com.google.android.gms.internal.vision;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
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
final class zzko implements zzlc {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzma.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzkk zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzks zzo;
    private final zzju zzp;
    private final zzlu zzq;
    private final zziq zzr;
    private final zzkh zzs;

    private zzko(int[] iArr, Object[] objArr, int i, int i2, zzkk zzkkVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzks zzksVar, zzju zzjuVar, zzlu zzluVar, zziq zziqVar, zzkh zzkhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzkkVar instanceof zzjb;
        this.zzj = z;
        this.zzh = zziqVar != null && zziqVar.zza(zzkkVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzksVar;
        this.zzp = zzjuVar;
        this.zzq = zzluVar;
        this.zzr = zziqVar;
        this.zzg = zzkkVar;
        this.zzs = zzkhVar;
    }

    private final int zza(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzb(i, i2);
    }

    private static int zza(zzlu zzluVar, Object obj) {
        return zzluVar.zzf(zzluVar.zzb(obj));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzhn zzhnVar) throws zzjk {
        Object objValueOf;
        Object objValueOf2;
        int iZzb;
        long jZza;
        int iZze;
        Object objValueOf3;
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                if (i5 == 1) {
                    objValueOf = Double.valueOf(zzhl.zzc(bArr, i));
                    unsafe.putObject(obj, j, objValueOf);
                    iZzb = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                if (i5 == 5) {
                    objValueOf2 = Float.valueOf(zzhl.zzd(bArr, i));
                    unsafe.putObject(obj, j, objValueOf2);
                    iZzb = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
            case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                if (i5 == 0) {
                    iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    jZza = zzhnVar.zzb;
                    objValueOf3 = Long.valueOf(jZza);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
            case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                if (i5 == 0) {
                    iZzb = zzhl.zza(bArr, i, zzhnVar);
                    iZze = zzhnVar.zza;
                    objValueOf3 = Integer.valueOf(iZze);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorError /* 56 */:
            case 65:
                if (i5 == 1) {
                    objValueOf = Long.valueOf(zzhl.zzb(bArr, i));
                    unsafe.putObject(obj, j, objValueOf);
                    iZzb = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
            case 64:
                if (i5 == 5) {
                    objValueOf2 = Integer.valueOf(zzhl.zza(bArr, i));
                    unsafe.putObject(obj, j, objValueOf2);
                    iZzb = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                if (i5 == 0) {
                    iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    objValueOf3 = Boolean.valueOf(zzhnVar.zzb != 0);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                if (i5 == 2) {
                    iZzb = zzhl.zza(bArr, i, zzhnVar);
                    int i9 = zzhnVar.zza;
                    if (i9 == 0) {
                        objValueOf3 = "";
                        unsafe.putObject(obj, j, objValueOf3);
                        unsafe.putInt(obj, j2, i4);
                        return iZzb;
                    }
                    if ((i6 & 536870912) != 0 && !zzmd.zza(bArr, iZzb, iZzb + i9)) {
                        throw zzjk.zzh();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZzb, i9, zzjf.zza));
                    iZzb += i9;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                if (i5 == 2) {
                    iZzb = zzhl.zza(zza(i8), bArr, i, i2, zzhnVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    objValueOf3 = zzhnVar.zzc;
                    if (object != null) {
                        objValueOf3 = zzjf.zza(object, objValueOf3);
                    }
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                if (i5 == 2) {
                    iZzb = zzhl.zze(bArr, i, zzhnVar);
                    objValueOf3 = zzhnVar.zzc;
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                if (i5 == 0) {
                    int iZza = zzhl.zza(bArr, i, zzhnVar);
                    int i10 = zzhnVar.zza;
                    zzjg zzjgVarZzc = zzc(i8);
                    if (zzjgVarZzc != null && !zzjgVarZzc.zza(i10)) {
                        zze(obj).zza(i3, Long.valueOf(i10));
                        return iZza;
                    }
                    unsafe.putObject(obj, j, Integer.valueOf(i10));
                    iZzb = iZza;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                if (i5 == 0) {
                    iZzb = zzhl.zza(bArr, i, zzhnVar);
                    iZze = zzif.zze(zzhnVar.zza);
                    objValueOf3 = Integer.valueOf(iZze);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                if (i5 == 0) {
                    iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    jZza = zzif.zza(zzhnVar.zzb);
                    objValueOf3 = Long.valueOf(jZza);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                if (i5 == 3) {
                    iZzb = zzhl.zza(zza(i8), bArr, i, i2, (i3 & (-8)) | 4, zzhnVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    objValueOf3 = zzhnVar.zzc;
                    if (object2 != null) {
                        objValueOf3 = zzjf.zza(object2, objValueOf3);
                    }
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            default:
                return i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:221:0x013e, code lost:
    
        r12.add(com.google.android.gms.internal.vision.zzht.zza(r17, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x012e, code lost:
    
        if (r4 == 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0130, code lost:
    
        r12.add(com.google.android.gms.internal.vision.zzht.zza);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0136, code lost:
    
        r12.add(com.google.android.gms.internal.vision.zzht.zza(r17, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x013e, code lost:
    
        if (r1 >= r19) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0140, code lost:
    
        r4 = com.google.android.gms.internal.vision.zzhl.zza(r17, r1, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0146, code lost:
    
        if (r20 != r29.zza) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0148, code lost:
    
        r1 = com.google.android.gms.internal.vision.zzhl.zza(r17, r4, r29);
        r4 = r29.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x014e, code lost:
    
        if (r4 < 0) goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0152, code lost:
    
        if (r4 > (r17.length - r1)) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0154, code lost:
    
        if (r4 != 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015b, code lost:
    
        throw com.google.android.gms.internal.vision.zzjk.zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0160, code lost:
    
        throw com.google.android.gms.internal.vision.zzjk.zzb();
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01af  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x01bf -> B:94:0x019e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0203 -> B:112:0x01da). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0154 -> B:67:0x0130). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzhn zzhnVar) throws zzjk {
        int iZza;
        int iZza2;
        int iZza3 = i;
        Unsafe unsafe = zzb;
        zzjl zzjlVarZza = (zzjl) unsafe.getObject(obj, j2);
        if (!zzjlVarZza.zza()) {
            int size = zzjlVarZza.size();
            zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
            unsafe.putObject(obj, j2, zzjlVarZza);
        }
        switch (i7) {
            case 18:
            case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                if (i5 == 2) {
                    int iZza4 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i8 = zzhnVar.zza + iZza4;
                    if (iZza4 < i8) {
                        zzhl.zzc(bArr, iZza4);
                        throw null;
                    }
                    if (iZza4 == i8) {
                        return iZza4;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 1) {
                    zzhl.zzc(bArr, i);
                    throw null;
                }
                break;
            case 19:
            case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                if (i5 == 2) {
                    int iZza5 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i9 = zzhnVar.zza + iZza5;
                    if (iZza5 < i9) {
                        zzhl.zzd(bArr, iZza5);
                        throw null;
                    }
                    if (iZza5 == i9) {
                        return iZza5;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 5) {
                    zzhl.zzd(bArr, i);
                    throw null;
                }
                break;
            case 20:
            case 21:
            case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
            case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                if (i5 == 2) {
                    int iZza6 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i10 = zzhnVar.zza + iZza6;
                    if (iZza6 < i10) {
                        zzhl.zzb(bArr, iZza6, zzhnVar);
                        throw null;
                    }
                    if (iZza6 == i10) {
                        return iZza6;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzhl.zzb(bArr, iZza3, zzhnVar);
                    long j3 = zzhnVar.zzb;
                    throw null;
                }
                break;
            case 22:
            case 29:
            case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
            case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                if (i5 == 2) {
                    return zzhl.zza(bArr, iZza3, zzjlVarZza, zzhnVar);
                }
                if (i5 == 0) {
                    return zzhl.zza(i3, bArr, i, i2, zzjlVarZza, zzhnVar);
                }
                break;
            case 23:
            case 32:
            case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
            case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                if (i5 == 2) {
                    int iZza7 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i11 = zzhnVar.zza + iZza7;
                    if (iZza7 < i11) {
                        zzhl.zzb(bArr, iZza7);
                        throw null;
                    }
                    if (iZza7 == i11) {
                        return iZza7;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 1) {
                    zzhl.zzb(bArr, i);
                    throw null;
                }
                break;
            case 24:
            case 31:
            case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
            case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                if (i5 == 2) {
                    zzjd zzjdVar = (zzjd) zzjlVarZza;
                    int iZza8 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i12 = zzhnVar.zza + iZza8;
                    while (iZza8 < i12) {
                        zzjdVar.zzc(zzhl.zza(bArr, iZza8));
                        iZza8 += 4;
                    }
                    if (iZza8 == i12) {
                        return iZza8;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 5) {
                    zzjd zzjdVar2 = (zzjd) zzjlVarZza;
                    zzjdVar2.zzc(zzhl.zza(bArr, i));
                    while (true) {
                        int i13 = iZza3 + 4;
                        if (i13 >= i2) {
                            return i13;
                        }
                        iZza3 = zzhl.zza(bArr, i13, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return i13;
                        }
                        zzjdVar2.zzc(zzhl.zza(bArr, iZza3));
                    }
                }
                break;
            case 25:
            case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                if (i5 == 2) {
                    int iZza9 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i14 = zzhnVar.zza + iZza9;
                    if (iZza9 < i14) {
                        zzhl.zzb(bArr, iZza9, zzhnVar);
                        throw null;
                    }
                    if (iZza9 == i14) {
                        return iZza9;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzhl.zzb(bArr, iZza3, zzhnVar);
                    long j4 = zzhnVar.zzb;
                    throw null;
                }
                break;
            case 26:
                if (i5 == 2) {
                    long j5 = j & 536870912;
                    iZza3 = zzhl.zza(bArr, iZza3, zzhnVar);
                    if (j5 == 0) {
                        int i15 = zzhnVar.zza;
                        if (i15 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i15 == 0) {
                            zzjlVarZza.add("");
                        } else {
                            zzjlVarZza.add(new String(bArr, iZza3, i15, zzjf.zza));
                            iZza3 += i15;
                        }
                        while (iZza3 < i2) {
                            int iZza10 = zzhl.zza(bArr, iZza3, zzhnVar);
                            if (i3 != zzhnVar.zza) {
                                break;
                            } else {
                                iZza3 = zzhl.zza(bArr, iZza10, zzhnVar);
                                int i16 = zzhnVar.zza;
                                if (i16 < 0) {
                                    throw zzjk.zzb();
                                }
                                if (i16 == 0) {
                                    zzjlVarZza.add("");
                                    while (iZza3 < i2) {
                                    }
                                } else {
                                    zzjlVarZza.add(new String(bArr, iZza3, i16, zzjf.zza));
                                    iZza3 += i16;
                                }
                            }
                        }
                        break;
                    } else {
                        int i17 = zzhnVar.zza;
                        if (i17 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i17 == 0) {
                            zzjlVarZza.add("");
                        } else {
                            int i18 = iZza3 + i17;
                            if (!zzmd.zza(bArr, iZza3, i18)) {
                                throw zzjk.zzh();
                            }
                            zzjlVarZza.add(new String(bArr, iZza3, i17, zzjf.zza));
                            iZza3 = i18;
                        }
                        while (iZza3 < i2) {
                            int iZza11 = zzhl.zza(bArr, iZza3, zzhnVar);
                            if (i3 != zzhnVar.zza) {
                                break;
                            } else {
                                iZza3 = zzhl.zza(bArr, iZza11, zzhnVar);
                                int i19 = zzhnVar.zza;
                                if (i19 < 0) {
                                    throw zzjk.zzb();
                                }
                                if (i19 == 0) {
                                    zzjlVarZza.add("");
                                    while (iZza3 < i2) {
                                    }
                                } else {
                                    int i20 = iZza3 + i19;
                                    if (!zzmd.zza(bArr, iZza3, i20)) {
                                        throw zzjk.zzh();
                                    }
                                    zzjlVarZza.add(new String(bArr, iZza3, i19, zzjf.zza));
                                    iZza3 = i20;
                                }
                            }
                        }
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return zzhl.zza(zza(i6), i3, bArr, i, i2, zzjlVarZza, zzhnVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iZza12 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i21 = zzhnVar.zza;
                    if (i21 < 0) {
                        throw zzjk.zzb();
                    }
                    if (i21 > bArr.length - iZza12) {
                        throw zzjk.zza();
                    }
                }
                break;
            case 30:
            case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                if (i5 == 2) {
                    iZza = zzhl.zza(bArr, iZza3, zzjlVarZza, zzhnVar);
                } else if (i5 == 0) {
                    iZza = zzhl.zza(i3, bArr, i, i2, zzjlVarZza, zzhnVar);
                }
                zzjb zzjbVar = (zzjb) obj;
                zzlx zzlxVar = zzjbVar.zzb;
                zzlx zzlxVar2 = (zzlx) zzle.zza(i4, zzjlVarZza, zzc(i6), zzlxVar != zzlx.zza() ? zzlxVar : null, this.zzq);
                if (zzlxVar2 != null) {
                    zzjbVar.zzb = zzlxVar2;
                }
                return iZza;
            case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
            case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                if (i5 == 2) {
                    zzjd zzjdVar3 = (zzjd) zzjlVarZza;
                    int iZza13 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i22 = zzhnVar.zza + iZza13;
                    while (iZza13 < i22) {
                        iZza13 = zzhl.zza(bArr, iZza13, zzhnVar);
                        zzjdVar3.zzc(zzif.zze(zzhnVar.zza));
                    }
                    if (iZza13 == i22) {
                        return iZza13;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzjd zzjdVar4 = (zzjd) zzjlVarZza;
                    do {
                        iZza2 = zzhl.zza(bArr, iZza3, zzhnVar);
                        zzjdVar4.zzc(zzif.zze(zzhnVar.zza));
                        if (iZza2 >= i2) {
                            return iZza2;
                        }
                        iZza3 = zzhl.zza(bArr, iZza2, zzhnVar);
                    } while (i3 == zzhnVar.zza);
                    return iZza2;
                }
                break;
            case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
            case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                if (i5 == 2) {
                    int iZza14 = zzhl.zza(bArr, iZza3, zzhnVar);
                    int i23 = zzhnVar.zza + iZza14;
                    if (iZza14 >= i23) {
                        if (iZza14 == i23) {
                            return iZza14;
                        }
                        throw zzjk.zza();
                    }
                    zzhl.zzb(bArr, iZza14, zzhnVar);
                    zzif.zza(zzhnVar.zzb);
                    throw null;
                }
                if (i5 == 0) {
                    zzhl.zzb(bArr, iZza3, zzhnVar);
                    zzif.zza(zzhnVar.zzb);
                    throw null;
                }
                break;
            case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                if (i5 == 3) {
                    zzlc zzlcVarZza = zza(i6);
                    int i24 = (i3 & (-8)) | 4;
                    iZza3 = zzhl.zza(zzlcVarZza, bArr, i, i2, i24, zzhnVar);
                    while (true) {
                        zzjlVarZza.add(zzhnVar.zzc);
                        if (iZza3 >= i2) {
                            break;
                        } else {
                            int iZza15 = zzhl.zza(bArr, iZza3, zzhnVar);
                            if (i3 != zzhnVar.zza) {
                                break;
                            } else {
                                iZza3 = zzhl.zza(zzlcVarZza, bArr, iZza15, i2, i24, zzhnVar);
                            }
                        }
                    }
                }
                break;
        }
        return iZza3;
    }

    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzhn zzhnVar) throws zzjk {
        Unsafe unsafe = zzb;
        Object objZzb = zzb(i3);
        Object object = unsafe.getObject(obj, j);
        if (this.zzs.zzd(object)) {
            Object objZzf = this.zzs.zzf(objZzb);
            this.zzs.zza(objZzf, object);
            unsafe.putObject(obj, j, objZzf);
            object = objZzf;
        }
        this.zzs.zzb(objZzb);
        this.zzs.zza(object);
        int iZza = zzhl.zza(bArr, i, zzhnVar);
        int i4 = zzhnVar.zza;
        if (i4 < 0 || i4 > i2 - iZza) {
            throw zzjk.zza();
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x038c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzko zza(Class cls, zzki zzkiVar, zzks zzksVar, zzju zzjuVar, zzlu zzluVar, zziq zziqVar, zzkh zzkhVar) {
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
        zzla zzlaVar;
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
        if (!(zzkiVar instanceof zzla)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzkiVar);
            throw null;
        }
        zzla zzlaVar2 = (zzla) zzkiVar;
        int i25 = 0;
        boolean z = zzlaVar2.zza() == zzkz.zzb;
        String strZzd = zzlaVar2.zzd();
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
        Object[] objArrZze = zzlaVar2.zze();
        Class<?> cls2 = zzlaVar2.zzc().getClass();
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
                zzlaVar = zzlaVar2;
                str = strZzd;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza3);
                i18 = 0;
            } else {
                int i81 = i57 + 1;
                Field fieldZza4 = zza((Class) cls2, (String) objArrZze[i57]);
                zzlaVar = zzlaVar2;
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
            zzlaVar2 = zzlaVar;
        }
        return new zzko(iArr2, objArr, iCharAt, iCharAt2, zzlaVar2.zzc(), z, false, iArr, iCharAt5, i56, zzksVar, zzjuVar, zzluVar, zziqVar, zzkhVar);
    }

    private final zzlc zza(int i) {
        int i2 = (i / 3) << 1;
        zzlc zzlcVar = (zzlc) this.zzd[i2];
        if (zzlcVar != null) {
            return zzlcVar;
        }
        zzlc zzlcVarZza = zzky.zza().zza((Class) this.zzd[i2 + 1]);
        this.zzd[i2] = zzlcVarZza;
        return zzlcVarZza;
    }

    private final Object zza(int i, int i2, Map map, zzjg zzjgVar, Object obj, zzlu zzluVar) {
        this.zzs.zzb(zzb(i));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!zzjgVar.zza(((Integer) entry.getValue()).intValue())) {
                if (obj == null) {
                    obj = zzluVar.zza();
                }
                zzib zzibVarZzc = zzht.zzc(zzkc.zza(null, entry.getKey(), entry.getValue()));
                try {
                    zzkc.zza(zzibVarZzc.zzb(), null, entry.getKey(), entry.getValue());
                    zzluVar.zza(obj, i2, zzibVarZzc.zza());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj;
    }

    private final Object zza(Object obj, int i, Object obj2, zzlu zzluVar) {
        zzjg zzjgVarZzc;
        int i2 = this.zzc[i];
        Object objZzf = zzma.zzf(obj, zzd(i) & 1048575);
        return (objZzf == null || (zzjgVarZzc = zzc(i)) == null) ? obj2 : zza(i, i2, this.zzs.zza(objZzf), zzjgVarZzc, obj2, zzluVar);
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
        return (List) zzma.zzf(obj, j);
    }

    private static void zza(int i, Object obj, zzmr zzmrVar) {
        if (obj instanceof String) {
            zzmrVar.zza(i, (String) obj);
        } else {
            zzmrVar.zza(i, (zzht) obj);
        }
    }

    private static void zza(zzlu zzluVar, Object obj, zzmr zzmrVar) {
        zzluVar.zza(zzluVar.zzb(obj), zzmrVar);
    }

    private final void zza(zzmr zzmrVar, int i, Object obj, int i2) {
        if (obj != null) {
            this.zzs.zzb(zzb(i2));
            zzmrVar.zza(i, (zzkf) null, this.zzs.zzc(obj));
        }
    }

    private final void zza(Object obj, Object obj2, int i) {
        long jZzd = zzd(i) & 1048575;
        if (zza(obj2, i)) {
            Object objZzf = zzma.zzf(obj, jZzd);
            Object objZzf2 = zzma.zzf(obj2, jZzd);
            if (objZzf != null && objZzf2 != null) {
                zzma.zza(obj, jZzd, zzjf.zza(objZzf, objZzf2));
                zzb(obj, i);
            } else if (objZzf2 != null) {
                zzma.zza(obj, jZzd, objZzf2);
                zzb(obj, i);
            }
        }
    }

    private final boolean zza(Object obj, int i) {
        int iZze = zze(i);
        long j = iZze & 1048575;
        if (j != 1048575) {
            return (zzma.zza(obj, j) & (1 << (iZze >>> 20))) != 0;
        }
        int iZzd = zzd(i);
        long j2 = iZzd & 1048575;
        switch ((iZzd & 267386880) >>> 20) {
            case 0:
                return zzma.zze(obj, j2) != 0.0d;
            case 1:
                return zzma.zzd(obj, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return zzma.zzb(obj, j2) != 0;
            case 3:
                return zzma.zzb(obj, j2) != 0;
            case 4:
                return zzma.zza(obj, j2) != 0;
            case 5:
                return zzma.zzb(obj, j2) != 0;
            case 6:
                return zzma.zza(obj, j2) != 0;
            case 7:
                return zzma.zzc(obj, j2);
            case 8:
                Object objZzf = zzma.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzht) {
                    return !zzht.zza.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzma.zzf(obj, j2) != null;
            case 10:
                return !zzht.zza.equals(zzma.zzf(obj, j2));
            case 11:
                return zzma.zza(obj, j2) != 0;
            case 12:
                return zzma.zza(obj, j2) != 0;
            case 13:
                return zzma.zza(obj, j2) != 0;
            case 14:
                return zzma.zzb(obj, j2) != 0;
            case 15:
                return zzma.zza(obj, j2) != 0;
            case 16:
                return zzma.zzb(obj, j2) != 0;
            case 17:
                return zzma.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(Object obj, int i, int i2) {
        return zzma.zza(obj, (long) (zze(i2) & 1048575)) == i;
    }

    private final boolean zza(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zza(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zza(Object obj, int i, zzlc zzlcVar) {
        return zzlcVar.zzd(zzma.zzf(obj, i & 1048575));
    }

    private static double zzb(Object obj, long j) {
        return ((Double) zzma.zzf(obj, j)).doubleValue();
    }

    private final int zzb(int i, int i2) {
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

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private final void zzb(Object obj, int i) {
        int iZze = zze(i);
        long j = 1048575 & iZze;
        if (j == 1048575) {
            return;
        }
        zzma.zza(obj, j, (1 << (iZze >>> 20)) | zzma.zza(obj, j));
    }

    private final void zzb(Object obj, int i, int i2) {
        zzma.zza(obj, zze(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzb(Object obj, zzmr zzmrVar) {
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
            zziu zziuVarZza = this.zzr.zza(obj);
            if (zziuVarZza.zza.isEmpty()) {
                itZzd = null;
                entry = null;
            } else {
                itZzd = zziuVarZza.zzd();
                entry = (Map.Entry) itZzd.next();
            }
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i16 = 1048575;
        int i17 = 0;
        for (int i18 = 0; i18 < length; i18 += 3) {
            int iZzd = zzd(i18);
            int[] iArr = this.zzc;
            int i19 = iArr[i18];
            int i20 = (iZzd & 267386880) >>> 20;
            if (i20 <= 17) {
                int i21 = iArr[i18 + 2];
                int i22 = i21 & 1048575;
                if (i22 != i16) {
                    i17 = unsafe.getInt(obj, i22);
                    i16 = i22;
                }
                i = 1 << (i21 >>> 20);
            } else {
                i = 0;
            }
            while (entry != null && this.zzr.zza(entry) <= i19) {
                this.zzr.zza(zzmrVar, entry);
                entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
            }
            long j = iZzd & 1048575;
            switch (i20) {
                case 0:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, zzma.zze(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, zzma.zzd(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i & i17) != 0) {
                        zzmrVar.zzc(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i & i17) != 0) {
                        zzmrVar.zzc(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i & i17) != 0) {
                        zzmrVar.zzd(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i & i17) != 0) {
                        zzmrVar.zzd(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, zzma.zzc(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i & i17) != 0) {
                        zza(i19, unsafe.getObject(obj, j), zzmrVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, unsafe.getObject(obj, j), zza(i18));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, (zzht) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i & i17) != 0) {
                        zzmrVar.zze(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i & i17) != 0) {
                        zzmrVar.zzb(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i & i17) != 0) {
                        zzmrVar.zza(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i & i17) != 0) {
                        zzmrVar.zzb(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i & i17) != 0) {
                        zzmrVar.zzf(i19, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i & i17) != 0) {
                        zzmrVar.zze(i19, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i & i17) != 0) {
                        zzmrVar.zzb(i19, unsafe.getObject(obj, j), zza(i18));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    z = false;
                    i2 = this.zzc[i18];
                    zzle.zza(i2, (List) unsafe.getObject(obj, j), zzmrVar, z);
                    break;
                case 19:
                    z2 = false;
                    i3 = this.zzc[i18];
                    zzle.zzb(i3, (List) unsafe.getObject(obj, j), zzmrVar, z2);
                    break;
                case 20:
                    z3 = false;
                    i4 = this.zzc[i18];
                    zzle.zzc(i4, (List) unsafe.getObject(obj, j), zzmrVar, z3);
                    break;
                case 21:
                    z4 = false;
                    i5 = this.zzc[i18];
                    zzle.zzd(i5, (List) unsafe.getObject(obj, j), zzmrVar, z4);
                    break;
                case 22:
                    z5 = false;
                    i6 = this.zzc[i18];
                    zzle.zzh(i6, (List) unsafe.getObject(obj, j), zzmrVar, z5);
                    break;
                case 23:
                    z6 = false;
                    i7 = this.zzc[i18];
                    zzle.zzf(i7, (List) unsafe.getObject(obj, j), zzmrVar, z6);
                    break;
                case 24:
                    z7 = false;
                    i8 = this.zzc[i18];
                    zzle.zzk(i8, (List) unsafe.getObject(obj, j), zzmrVar, z7);
                    break;
                case 25:
                    i9 = this.zzc[i18];
                    list = (List) unsafe.getObject(obj, j);
                    z8 = false;
                    zzle.zzn(i9, list, zzmrVar, z8);
                    break;
                case 26:
                    zzle.zza(this.zzc[i18], (List) unsafe.getObject(obj, j), zzmrVar);
                    break;
                case 27:
                    zzle.zza(this.zzc[i18], (List) unsafe.getObject(obj, j), zzmrVar, zza(i18));
                    break;
                case 28:
                    zzle.zzb(this.zzc[i18], (List) unsafe.getObject(obj, j), zzmrVar);
                    break;
                case 29:
                    z9 = false;
                    i10 = this.zzc[i18];
                    zzle.zzi(i10, (List) unsafe.getObject(obj, j), zzmrVar, z9);
                    break;
                case 30:
                    z10 = false;
                    i11 = this.zzc[i18];
                    zzle.zzm(i11, (List) unsafe.getObject(obj, j), zzmrVar, z10);
                    break;
                case 31:
                    z11 = false;
                    i12 = this.zzc[i18];
                    zzle.zzl(i12, (List) unsafe.getObject(obj, j), zzmrVar, z11);
                    break;
                case 32:
                    z12 = false;
                    i13 = this.zzc[i18];
                    zzle.zzg(i13, (List) unsafe.getObject(obj, j), zzmrVar, z12);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    z13 = false;
                    i14 = this.zzc[i18];
                    zzle.zzj(i14, (List) unsafe.getObject(obj, j), zzmrVar, z13);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i15 = this.zzc[i18];
                    list2 = (List) unsafe.getObject(obj, j);
                    z14 = false;
                    zzle.zze(i15, list2, zzmrVar, z14);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    z = true;
                    i2 = this.zzc[i18];
                    zzle.zza(i2, (List) unsafe.getObject(obj, j), zzmrVar, z);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    z2 = true;
                    i3 = this.zzc[i18];
                    zzle.zzb(i3, (List) unsafe.getObject(obj, j), zzmrVar, z2);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    z3 = true;
                    i4 = this.zzc[i18];
                    zzle.zzc(i4, (List) unsafe.getObject(obj, j), zzmrVar, z3);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    z4 = true;
                    i5 = this.zzc[i18];
                    zzle.zzd(i5, (List) unsafe.getObject(obj, j), zzmrVar, z4);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    z5 = true;
                    i6 = this.zzc[i18];
                    zzle.zzh(i6, (List) unsafe.getObject(obj, j), zzmrVar, z5);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    z6 = true;
                    i7 = this.zzc[i18];
                    zzle.zzf(i7, (List) unsafe.getObject(obj, j), zzmrVar, z6);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    z7 = true;
                    i8 = this.zzc[i18];
                    zzle.zzk(i8, (List) unsafe.getObject(obj, j), zzmrVar, z7);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    z8 = true;
                    i9 = this.zzc[i18];
                    list = (List) unsafe.getObject(obj, j);
                    zzle.zzn(i9, list, zzmrVar, z8);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    z9 = true;
                    i10 = this.zzc[i18];
                    zzle.zzi(i10, (List) unsafe.getObject(obj, j), zzmrVar, z9);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    z10 = true;
                    i11 = this.zzc[i18];
                    zzle.zzm(i11, (List) unsafe.getObject(obj, j), zzmrVar, z10);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    z11 = true;
                    i12 = this.zzc[i18];
                    zzle.zzl(i12, (List) unsafe.getObject(obj, j), zzmrVar, z11);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    z12 = true;
                    i13 = this.zzc[i18];
                    zzle.zzg(i13, (List) unsafe.getObject(obj, j), zzmrVar, z12);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    z13 = true;
                    i14 = this.zzc[i18];
                    zzle.zzj(i14, (List) unsafe.getObject(obj, j), zzmrVar, z13);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    i15 = this.zzc[i18];
                    list2 = (List) unsafe.getObject(obj, j);
                    z14 = true;
                    zzle.zze(i15, list2, zzmrVar, z14);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzle.zzb(this.zzc[i18], (List) unsafe.getObject(obj, j), zzmrVar, zza(i18));
                    break;
                case 50:
                    zza(zzmrVar, i19, unsafe.getObject(obj, j), i18);
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, zzb(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, zzc(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzc(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzc(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzd(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzd(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, zzf(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zza(obj, i19, i18)) {
                        zza(i19, unsafe.getObject(obj, j), zzmrVar);
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, unsafe.getObject(obj, j), zza(i18));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, (zzht) unsafe.getObject(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zze(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzb(i19, zzd(obj, j));
                    }
                    break;
                case 64:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zza(i19, zzd(obj, j));
                    }
                    break;
                case 65:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzb(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzf(i19, zzd(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zze(i19, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zza(obj, i19, i18)) {
                        zzmrVar.zzb(i19, unsafe.getObject(obj, j), zza(i18));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzr.zza(zzmrVar, entry);
            entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
        }
        zza(this.zzq, obj, zzmrVar);
    }

    private final void zzb(Object obj, Object obj2, int i) {
        int iZzd = zzd(i);
        int i2 = this.zzc[i];
        long j = iZzd & 1048575;
        if (zza(obj2, i2, i)) {
            Object objZzf = zza(obj, i2, i) ? zzma.zzf(obj, j) : null;
            Object objZzf2 = zzma.zzf(obj2, j);
            if (objZzf != null && objZzf2 != null) {
                zzma.zza(obj, j, zzjf.zza(objZzf, objZzf2));
                zzb(obj, i2, i);
            } else if (objZzf2 != null) {
                zzma.zza(obj, j, objZzf2);
                zzb(obj, i2, i);
            }
        }
    }

    private static float zzc(Object obj, long j) {
        return ((Float) zzma.zzf(obj, j)).floatValue();
    }

    private final zzjg zzc(int i) {
        return (zzjg) this.zzd[((i / 3) << 1) + 1];
    }

    private final boolean zzc(Object obj, Object obj2, int i) {
        return zza(obj, i) == zza(obj2, i);
    }

    private final int zzd(int i) {
        return this.zzc[i + 1];
    }

    private static int zzd(Object obj, long j) {
        return ((Integer) zzma.zzf(obj, j)).intValue();
    }

    private final int zze(int i) {
        return this.zzc[i + 2];
    }

    private static long zze(Object obj, long j) {
        return ((Long) zzma.zzf(obj, j)).longValue();
    }

    private static zzlx zze(Object obj) {
        zzjb zzjbVar = (zzjb) obj;
        zzlx zzlxVar = zzjbVar.zzb;
        if (zzlxVar != zzlx.zza()) {
            return zzlxVar;
        }
        zzlx zzlxVarZzb = zzlx.zzb();
        zzjbVar.zzb = zzlxVarZzb;
        return zzlxVarZzb;
    }

    private static boolean zzf(Object obj, long j) {
        return ((Boolean) zzma.zzf(obj, j)).booleanValue();
    }

    private final int zzg(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzb(i, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f4 A[PHI: r3
      0x00f4: PHI (r3v9 java.lang.Object) = (r3v6 java.lang.Object), (r3v10 java.lang.Object) binds: [B:74:0x0110, B:68:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.vision.zzlc
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
            int iZzd = zzd(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzd;
            int iHashCode = 37;
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    dZze = zzma.zze(obj, j);
                    jZzb = Double.doubleToLongBits(dZze);
                    iZza = zzjf.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case 1:
                    i = i2 * 53;
                    fZzd = zzma.zzd(obj, j);
                    iZza = Float.floatToIntBits(fZzd);
                    i2 = i + iZza;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i2 * 53;
                    jZzb = zzma.zzb(obj, j);
                    iZza = zzjf.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i = i2 * 53;
                    iZza = zzma.zza(obj, j);
                    i2 = i + iZza;
                    break;
                case 7:
                    i = i2 * 53;
                    zZzc = zzma.zzc(obj, j);
                    iZza = zzjf.zza(zZzc);
                    i2 = i + iZza;
                    break;
                case 8:
                    i = i2 * 53;
                    iZza = ((String) zzma.zzf(obj, j)).hashCode();
                    i2 = i + iZza;
                    break;
                case 9:
                    objZzf = zzma.zzf(obj, j);
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
                    objZzf2 = zzma.zzf(obj, j);
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
                case 17:
                    objZzf = zzma.zzf(obj, j);
                    if (objZzf != null) {
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        dZze = zzb(obj, j);
                        jZzb = Double.doubleToLongBits(dZze);
                        iZza = zzjf.zza(jZzb);
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
                    iZza = zzjf.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzb = zze(obj, j);
                    iZza = zzjf.zza(jZzb);
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
                    iZza = zzjf.zza(jZzb);
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
                        iZza = zzjf.zza(zZzc);
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
                    iZza = ((String) zzma.zzf(obj, j)).hashCode();
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    objZzf2 = zzma.zzf(obj, j);
                    i = i2 * 53;
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    objZzf2 = zzma.zzf(obj, j);
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
                    iZza = zzjf.zza(jZzb);
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
                    iZza = zzjf.zza(jZzb);
                    i2 = i + iZza;
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    objZzf2 = zzma.zzf(obj, j);
                    i = i2 * 53;
                    iZza = objZzf2.hashCode();
                    i2 = i + iZza;
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzq.zzb(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzr.zza(obj).hashCode() : iHashCode2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x008c. Please report as an issue. */
    final int zza(Object obj, byte[] bArr, int i, int i2, int i3, zzhn zzhnVar) throws zzjk {
        Unsafe unsafe;
        int i4;
        zzko zzkoVar;
        int i5;
        Object obj2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        zzhn zzhnVar2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iZzb;
        Unsafe unsafe2;
        Object obj3;
        long j;
        long jZza;
        long j2;
        int iZze;
        int i18;
        long j3;
        Object objZza;
        int i19;
        int i20;
        int i21;
        zzko zzkoVar2 = this;
        Object obj4 = obj;
        byte[] bArr2 = bArr;
        int i22 = i2;
        int i23 = i3;
        zzhn zzhnVar3 = zzhnVar;
        Unsafe unsafe3 = zzb;
        int iZza = i;
        int i24 = -1;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 1048575;
        while (true) {
            if (iZza < i22) {
                int i29 = iZza + 1;
                byte b = bArr2[iZza];
                if (b < 0) {
                    int iZza2 = zzhl.zza(b, bArr2, i29, zzhnVar3);
                    i6 = zzhnVar3.zza;
                    i29 = iZza2;
                } else {
                    i6 = b;
                }
                int i30 = i6 >>> 3;
                int i31 = i6 & 7;
                int iZza3 = i30 > i24 ? zzkoVar2.zza(i30, i25 / 3) : zzkoVar2.zzg(i30);
                if (iZza3 == -1) {
                    i7 = i30;
                    i8 = i29;
                    i9 = i6;
                    i10 = i27;
                    unsafe = unsafe3;
                    i4 = i23;
                    i11 = 0;
                } else {
                    int[] iArr = zzkoVar2.zzc;
                    int i32 = iArr[iZza3 + 1];
                    int i33 = (i32 & 267386880) >>> 20;
                    int i34 = i6;
                    long j4 = i32 & 1048575;
                    if (i33 <= 17) {
                        int i35 = iArr[iZza3 + 2];
                        int i36 = 1 << (i35 >>> 20);
                        int i37 = i35 & 1048575;
                        if (i37 != i28) {
                            if (i28 != 1048575) {
                                unsafe3.putInt(obj4, i28, i27);
                            }
                            i27 = unsafe3.getInt(obj4, i37);
                            i13 = i37;
                        } else {
                            i13 = i28;
                        }
                        int i38 = i27;
                        switch (i33) {
                            case 0:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 1) {
                                    zzma.zza(obj4, j4, zzhl.zzc(bArr2, i29));
                                    iZza = i29 + 8;
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 1:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 5) {
                                    zzma.zza(obj4, j4, zzhl.zzd(bArr2, i29));
                                    iZza = i29 + 4;
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 2:
                            case 3:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 0) {
                                    iZzb = zzhl.zzb(bArr2, i29, zzhnVar3);
                                    unsafe2 = unsafe3;
                                    obj3 = obj;
                                    j = j4;
                                    jZza = zzhnVar3.zzb;
                                    unsafe2.putLong(obj3, j, jZza);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    iZza = iZzb;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 4:
                            case 11:
                                i14 = i30;
                                i15 = i13;
                                j2 = j4;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 0) {
                                    iZza = zzhl.zza(bArr2, i29, zzhnVar3);
                                    iZze = zzhnVar3.zza;
                                    unsafe3.putInt(obj4, j2, iZze);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 5:
                            case 14:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 1) {
                                    unsafe3.putLong(obj, j4, zzhl.zzb(bArr2, i29));
                                    iZza = i29 + 8;
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 6:
                            case 13:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                i18 = i2;
                                if (i31 == 5) {
                                    unsafe3.putInt(obj4, j4, zzhl.zza(bArr2, i29));
                                    iZza = i29 + 4;
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i23 = i3;
                                    int i39 = i17;
                                    i22 = i18;
                                    i25 = i39;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 7:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                i18 = i2;
                                if (i31 == 0) {
                                    int iZzb2 = zzhl.zzb(bArr2, i29, zzhnVar3);
                                    zzma.zza(obj4, j4, zzhnVar3.zzb != 0);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    iZza = iZzb2;
                                    i26 = i16;
                                    i24 = i14;
                                    i23 = i3;
                                    int i392 = i17;
                                    i22 = i18;
                                    i25 = i392;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 8:
                                i14 = i30;
                                i15 = i13;
                                j3 = j4;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                i18 = i2;
                                if (i31 == 2) {
                                    iZza = (i32 & 536870912) == 0 ? zzhl.zzc(bArr2, i29, zzhnVar3) : zzhl.zzd(bArr2, i29, zzhnVar3);
                                    objZza = zzhnVar3.zzc;
                                    unsafe3.putObject(obj4, j3, objZza);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i23 = i3;
                                    int i3922 = i17;
                                    i22 = i18;
                                    i25 = i3922;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 9:
                                i14 = i30;
                                i15 = i13;
                                j3 = j4;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 2) {
                                    i18 = i2;
                                    iZza = zzhl.zza(zzkoVar2.zza(i17), bArr2, i29, i18, zzhnVar3);
                                    objZza = (i38 & i36) == 0 ? zzhnVar3.zzc : zzjf.zza(unsafe3.getObject(obj4, j3), zzhnVar3.zzc);
                                    unsafe3.putObject(obj4, j3, objZza);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i23 = i3;
                                    int i39222 = i17;
                                    i22 = i18;
                                    i25 = i39222;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 10:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 2) {
                                    iZza = zzhl.zze(bArr2, i29, zzhnVar3);
                                    unsafe3.putObject(obj4, j4, zzhnVar3.zzc);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 12:
                                i14 = i30;
                                i15 = i13;
                                j2 = j4;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 != 0) {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                } else {
                                    iZza = zzhl.zza(bArr2, i29, zzhnVar3);
                                    iZze = zzhnVar3.zza;
                                    zzjg zzjgVarZzc = zzkoVar2.zzc(i17);
                                    if (zzjgVarZzc != null && !zzjgVarZzc.zza(iZze)) {
                                        zze(obj).zza(i16, Long.valueOf(iZze));
                                        i27 = i38;
                                        i26 = i16;
                                        i24 = i14;
                                        i25 = i17;
                                        i28 = i15;
                                        i22 = i2;
                                        i23 = i3;
                                        break;
                                    }
                                    unsafe3.putInt(obj4, j2, iZze);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 15:
                                i14 = i30;
                                i15 = i13;
                                j2 = j4;
                                i16 = i34;
                                bArr2 = bArr;
                                i17 = iZza3;
                                if (i31 == 0) {
                                    iZza = zzhl.zza(bArr2, i29, zzhnVar3);
                                    iZze = zzif.zze(zzhnVar3.zza);
                                    unsafe3.putInt(obj4, j2, iZze);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 16:
                                i14 = i30;
                                i15 = i13;
                                i16 = i34;
                                if (i31 == 0) {
                                    bArr2 = bArr;
                                    iZzb = zzhl.zzb(bArr2, i29, zzhnVar3);
                                    unsafe2 = unsafe3;
                                    j = j4;
                                    obj3 = obj;
                                    i17 = iZza3;
                                    jZza = zzif.zza(zzhnVar3.zzb);
                                    unsafe2.putLong(obj3, j, jZza);
                                    i27 = i38 | i36;
                                    i28 = i15;
                                    i26 = i16;
                                    iZza = iZzb;
                                    i24 = i14;
                                    i25 = i17;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i17 = iZza3;
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            case 17:
                                if (i31 == 3) {
                                    int i40 = i13;
                                    iZza = zzhl.zza(zzkoVar2.zza(iZza3), bArr, i29, i2, (i30 << 3) | 4, zzhnVar);
                                    unsafe3.putObject(obj4, j4, (i38 & i36) == 0 ? zzhnVar3.zzc : zzjf.zza(unsafe3.getObject(obj4, j4), zzhnVar3.zzc));
                                    i27 = i38 | i36;
                                    bArr2 = bArr;
                                    i28 = i40;
                                    i22 = i2;
                                    i26 = i34;
                                    i25 = iZza3;
                                    i24 = i30;
                                    i23 = i3;
                                    break;
                                } else {
                                    i14 = i30;
                                    i15 = i13;
                                    i16 = i34;
                                    i17 = iZza3;
                                    i8 = i29;
                                    i10 = i38;
                                    i9 = i16;
                                    unsafe = unsafe3;
                                    i11 = i17;
                                    i28 = i15;
                                    i4 = i3;
                                    i7 = i14;
                                    break;
                                }
                            default:
                                i14 = i30;
                                i17 = iZza3;
                                i15 = i13;
                                i16 = i34;
                                i8 = i29;
                                i10 = i38;
                                i9 = i16;
                                unsafe = unsafe3;
                                i11 = i17;
                                i28 = i15;
                                i4 = i3;
                                i7 = i14;
                                break;
                        }
                    } else {
                        bArr2 = bArr;
                        if (i33 != 27) {
                            i10 = i27;
                            i19 = i28;
                            if (i33 <= 49) {
                                int i41 = i29;
                                i7 = i30;
                                i21 = i34;
                                unsafe = unsafe3;
                                i11 = iZza3;
                                iZza = zza(obj, bArr, i29, i2, i34, i7, i31, iZza3, i32, i33, j4, zzhnVar);
                                if (iZza == i41) {
                                    i4 = i3;
                                    i8 = iZza;
                                    i28 = i19;
                                    i9 = i21;
                                } else {
                                    zzkoVar2 = this;
                                    obj4 = obj;
                                    bArr2 = bArr;
                                    i24 = i7;
                                    i22 = i2;
                                    i23 = i3;
                                    zzhnVar3 = zzhnVar;
                                    i25 = i11;
                                    i27 = i10;
                                    i28 = i19;
                                    i26 = i21;
                                    unsafe3 = unsafe;
                                }
                            } else {
                                i20 = i29;
                                i7 = i30;
                                i21 = i34;
                                unsafe = unsafe3;
                                i11 = iZza3;
                                if (i33 != 50) {
                                    iZza = zza(obj, bArr, i20, i2, i21, i7, i31, i32, i33, j4, i11, zzhnVar);
                                    if (iZza != i20) {
                                        zzkoVar2 = this;
                                        obj4 = obj;
                                        bArr2 = bArr;
                                        i22 = i2;
                                        zzhnVar3 = zzhnVar;
                                        i26 = i21;
                                        i24 = i7;
                                        i25 = i11;
                                        i27 = i10;
                                        i28 = i19;
                                        unsafe3 = unsafe;
                                        i23 = i3;
                                    }
                                } else if (i31 == 2) {
                                    iZza = zza(obj, bArr, i20, i2, i11, j4, zzhnVar);
                                    if (iZza != i20) {
                                        zzkoVar2 = this;
                                        obj4 = obj;
                                        bArr2 = bArr;
                                        i24 = i7;
                                        i22 = i2;
                                        i23 = i3;
                                        zzhnVar3 = zzhnVar;
                                        i25 = i11;
                                        i27 = i10;
                                        i28 = i19;
                                        i26 = i21;
                                        unsafe3 = unsafe;
                                    }
                                }
                                i4 = i3;
                                i8 = iZza;
                                i28 = i19;
                                i9 = i21;
                            }
                        } else if (i31 == 2) {
                            zzjl zzjlVarZza = (zzjl) unsafe3.getObject(obj4, j4);
                            if (!zzjlVarZza.zza()) {
                                int size = zzjlVarZza.size();
                                zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
                                unsafe3.putObject(obj4, j4, zzjlVarZza);
                            }
                            iZza = zzhl.zza(zzkoVar2.zza(iZza3), i34, bArr, i29, i2, zzjlVarZza, zzhnVar);
                            i26 = i34;
                            i24 = i30;
                            i25 = iZza3;
                            i27 = i27;
                            i28 = i28;
                            i22 = i2;
                            i23 = i3;
                        } else {
                            i10 = i27;
                            i19 = i28;
                            i20 = i29;
                            i7 = i30;
                            i21 = i34;
                            unsafe = unsafe3;
                            i11 = iZza3;
                        }
                        i4 = i3;
                        i8 = i20;
                        i28 = i19;
                        i9 = i21;
                    }
                }
                if (i9 != i4 || i4 == 0) {
                    if (this.zzh) {
                        zzhnVar2 = zzhnVar;
                        if (zzhnVar2.zzd != zzio.zzb()) {
                            i12 = i7;
                            zzhnVar2.zzd.zza(this.zzg, i12);
                            iZza = zzhl.zza(i9, bArr, i8, i2, zze(obj), zzhnVar);
                            obj4 = obj;
                            bArr2 = bArr;
                            i22 = i2;
                            i26 = i9;
                            zzkoVar2 = this;
                            zzhnVar3 = zzhnVar2;
                            i24 = i12;
                            i25 = i11;
                            i27 = i10;
                            unsafe3 = unsafe;
                            i23 = i4;
                        } else {
                            i12 = i7;
                        }
                    } else {
                        i12 = i7;
                        zzhnVar2 = zzhnVar;
                    }
                    iZza = zzhl.zza(i9, bArr, i8, i2, zze(obj), zzhnVar);
                    obj4 = obj;
                    bArr2 = bArr;
                    i22 = i2;
                    i26 = i9;
                    zzkoVar2 = this;
                    zzhnVar3 = zzhnVar2;
                    i24 = i12;
                    i25 = i11;
                    i27 = i10;
                    unsafe3 = unsafe;
                    i23 = i4;
                } else {
                    i5 = 1048575;
                    zzkoVar = this;
                    iZza = i8;
                    i26 = i9;
                    i27 = i10;
                }
            } else {
                unsafe = unsafe3;
                i4 = i23;
                zzkoVar = zzkoVar2;
                i5 = 1048575;
            }
        }
        if (i28 != i5) {
            obj2 = obj;
            unsafe.putInt(obj2, i28, i27);
        } else {
            obj2 = obj;
        }
        zzlx zzlxVar = null;
        for (int i42 = zzkoVar.zzm; i42 < zzkoVar.zzn; i42++) {
            zzlxVar = (zzlx) zzkoVar.zza(obj2, zzkoVar.zzl[i42], zzlxVar, zzkoVar.zzq);
        }
        if (zzlxVar != null) {
            zzkoVar.zzq.zzb(obj2, zzlxVar);
        }
        if (i4 == 0) {
            if (iZza != i2) {
                throw zzjk.zzg();
            }
        } else if (iZza > i2 || i26 != i4) {
            throw zzjk.zzg();
        }
        return iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final Object zza() {
        return this.zzo.zza(this.zzg);
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
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, zzmr zzmrVar) {
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
        if (zzmrVar.zza() == zzmq.zzb) {
            zza(this.zzq, obj, zzmrVar);
            if (this.zzh) {
                zziu zziuVarZza = this.zzr.zza(obj);
                if (zziuVarZza.zza.isEmpty()) {
                    itZze = null;
                    entry2 = null;
                } else {
                    itZze = zziuVarZza.zze();
                    entry2 = (Map.Entry) itZze.next();
                }
            }
            for (int length = this.zzc.length - 3; length >= 0; length -= 3) {
                int iZzd = zzd(length);
                int i = this.zzc[length];
                while (entry2 != null && this.zzr.zza(entry2) > i) {
                    this.zzr.zza(zzmrVar, entry2);
                    entry2 = itZze.hasNext() ? (Map.Entry) itZze.next() : null;
                }
                switch ((iZzd & 267386880) >>> 20) {
                    case 0:
                        if (zza(obj, length)) {
                            dZze2 = zzma.zze(obj, iZzd & 1048575);
                            zzmrVar.zza(i, dZze2);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza(obj, length)) {
                            fZzd2 = zzma.zzd(obj, iZzd & 1048575);
                            zzmrVar.zza(i, fZzd2);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza(obj, length)) {
                            jZzb6 = zzma.zzb(obj, iZzd & 1048575);
                            zzmrVar.zza(i, jZzb6);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza(obj, length)) {
                            jZzb7 = zzma.zzb(obj, iZzd & 1048575);
                            zzmrVar.zzc(i, jZzb7);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza(obj, length)) {
                            iZza7 = zzma.zza(obj, iZzd & 1048575);
                            zzmrVar.zzc(i, iZza7);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza(obj, length)) {
                            jZzb8 = zzma.zzb(obj, iZzd & 1048575);
                            zzmrVar.zzd(i, jZzb8);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza(obj, length)) {
                            iZza8 = zzma.zza(obj, iZzd & 1048575);
                            zzmrVar.zzd(i, iZza8);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza(obj, length)) {
                            zZzc2 = zzma.zzc(obj, iZzd & 1048575);
                            zzmrVar.zza(i, zZzc2);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza(obj, length)) {
                            zza(i, zzma.zzf(obj, iZzd & 1048575), zzmrVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zza(obj, length)) {
                            zzmrVar.zza(i, zzma.zzf(obj, iZzd & 1048575), zza(length));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zza(obj, length)) {
                            zzmrVar.zza(i, (zzht) zzma.zzf(obj, iZzd & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza(obj, length)) {
                            iZza9 = zzma.zza(obj, iZzd & 1048575);
                            zzmrVar.zze(i, iZza9);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza(obj, length)) {
                            iZza10 = zzma.zza(obj, iZzd & 1048575);
                            zzmrVar.zzb(i, iZza10);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza(obj, length)) {
                            iZza11 = zzma.zza(obj, iZzd & 1048575);
                            zzmrVar.zza(i, iZza11);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza(obj, length)) {
                            jZzb9 = zzma.zzb(obj, iZzd & 1048575);
                            zzmrVar.zzb(i, jZzb9);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza(obj, length)) {
                            iZza12 = zzma.zza(obj, iZzd & 1048575);
                            zzmrVar.zzf(i, iZza12);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza(obj, length)) {
                            jZzb10 = zzma.zzb(obj, iZzd & 1048575);
                            zzmrVar.zze(i, jZzb10);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zza(obj, length)) {
                            zzmrVar.zzb(i, zzma.zzf(obj, iZzd & 1048575), zza(length));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzle.zza(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 19:
                        zzle.zzb(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 20:
                        zzle.zzc(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 21:
                        zzle.zzd(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 22:
                        zzle.zzh(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 23:
                        zzle.zzf(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 24:
                        zzle.zzk(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 25:
                        zzle.zzn(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 26:
                        zzle.zza(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar);
                        break;
                    case 27:
                        zzle.zza(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, zza(length));
                        break;
                    case 28:
                        zzle.zzb(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar);
                        break;
                    case 29:
                        zzle.zzi(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 30:
                        zzle.zzm(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 31:
                        zzle.zzl(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 32:
                        zzle.zzg(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzle.zzj(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzle.zze(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, false);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzle.zza(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzle.zzb(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzle.zzc(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzle.zzd(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzle.zzh(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzle.zzf(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzle.zzk(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzle.zzn(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzle.zzi(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzle.zzm(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzle.zzl(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzle.zzg(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzle.zzj(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzle.zze(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzle.zzb(this.zzc[length], (List) zzma.zzf(obj, iZzd & 1048575), zzmrVar, zza(length));
                        break;
                    case 50:
                        zza(zzmrVar, i, zzma.zzf(obj, iZzd & 1048575), length);
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zza(obj, i, length)) {
                            dZze2 = zzb(obj, iZzd & 1048575);
                            zzmrVar.zza(i, dZze2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zza(obj, i, length)) {
                            fZzd2 = zzc(obj, iZzd & 1048575);
                            zzmrVar.zza(i, fZzd2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zza(obj, i, length)) {
                            jZzb6 = zze(obj, iZzd & 1048575);
                            zzmrVar.zza(i, jZzb6);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zza(obj, i, length)) {
                            jZzb7 = zze(obj, iZzd & 1048575);
                            zzmrVar.zzc(i, jZzb7);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zza(obj, i, length)) {
                            iZza7 = zzd(obj, iZzd & 1048575);
                            zzmrVar.zzc(i, iZza7);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zza(obj, i, length)) {
                            jZzb8 = zze(obj, iZzd & 1048575);
                            zzmrVar.zzd(i, jZzb8);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zza(obj, i, length)) {
                            iZza8 = zzd(obj, iZzd & 1048575);
                            zzmrVar.zzd(i, iZza8);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zza(obj, i, length)) {
                            zZzc2 = zzf(obj, iZzd & 1048575);
                            zzmrVar.zza(i, zZzc2);
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
                            iZza9 = zzd(obj, iZzd & 1048575);
                            zzmrVar.zze(i, iZza9);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zza(obj, i, length)) {
                            iZza10 = zzd(obj, iZzd & 1048575);
                            zzmrVar.zzb(i, iZza10);
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zza(obj, i, length)) {
                            iZza11 = zzd(obj, iZzd & 1048575);
                            zzmrVar.zza(i, iZza11);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zza(obj, i, length)) {
                            jZzb9 = zze(obj, iZzd & 1048575);
                            zzmrVar.zzb(i, jZzb9);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zza(obj, i, length)) {
                            iZza12 = zzd(obj, iZzd & 1048575);
                            zzmrVar.zzf(i, iZza12);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zza(obj, i, length)) {
                            jZzb10 = zze(obj, iZzd & 1048575);
                            zzmrVar.zze(i, jZzb10);
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
                this.zzr.zza(zzmrVar, entry2);
                entry2 = itZze.hasNext() ? (Map.Entry) itZze.next() : null;
            }
            return;
        }
        if (!this.zzj) {
            zzb(obj, zzmrVar);
            return;
        }
        if (this.zzh) {
            zziu zziuVarZza2 = this.zzr.zza(obj);
            if (zziuVarZza2.zza.isEmpty()) {
                itZzd = null;
                entry = null;
            } else {
                itZzd = zziuVarZza2.zzd();
                entry = (Map.Entry) itZzd.next();
            }
        }
        int length2 = this.zzc.length;
        for (int i2 = 0; i2 < length2; i2 += 3) {
            int iZzd2 = zzd(i2);
            int i3 = this.zzc[i2];
            while (entry != null && this.zzr.zza(entry) <= i3) {
                this.zzr.zza(zzmrVar, entry);
                entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
            }
            switch ((iZzd2 & 267386880) >>> 20) {
                case 0:
                    if (zza(obj, i2)) {
                        dZze = zzma.zze(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, dZze);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza(obj, i2)) {
                        fZzd = zzma.zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, fZzd);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza(obj, i2)) {
                        jZzb = zzma.zzb(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, jZzb);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza(obj, i2)) {
                        jZzb2 = zzma.zzb(obj, iZzd2 & 1048575);
                        zzmrVar.zzc(i3, jZzb2);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza(obj, i2)) {
                        iZza = zzma.zza(obj, iZzd2 & 1048575);
                        zzmrVar.zzc(i3, iZza);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza(obj, i2)) {
                        jZzb3 = zzma.zzb(obj, iZzd2 & 1048575);
                        zzmrVar.zzd(i3, jZzb3);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza(obj, i2)) {
                        iZza2 = zzma.zza(obj, iZzd2 & 1048575);
                        zzmrVar.zzd(i3, iZza2);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza(obj, i2)) {
                        zZzc = zzma.zzc(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, zZzc);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza(obj, i2)) {
                        zza(i3, zzma.zzf(obj, iZzd2 & 1048575), zzmrVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (zza(obj, i2)) {
                        zzmrVar.zza(i3, zzma.zzf(obj, iZzd2 & 1048575), zza(i2));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zza(obj, i2)) {
                        zzmrVar.zza(i3, (zzht) zzma.zzf(obj, iZzd2 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza(obj, i2)) {
                        iZza3 = zzma.zza(obj, iZzd2 & 1048575);
                        zzmrVar.zze(i3, iZza3);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza(obj, i2)) {
                        iZza4 = zzma.zza(obj, iZzd2 & 1048575);
                        zzmrVar.zzb(i3, iZza4);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza(obj, i2)) {
                        iZza5 = zzma.zza(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, iZza5);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza(obj, i2)) {
                        jZzb4 = zzma.zzb(obj, iZzd2 & 1048575);
                        zzmrVar.zzb(i3, jZzb4);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza(obj, i2)) {
                        iZza6 = zzma.zza(obj, iZzd2 & 1048575);
                        zzmrVar.zzf(i3, iZza6);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza(obj, i2)) {
                        jZzb5 = zzma.zzb(obj, iZzd2 & 1048575);
                        zzmrVar.zze(i3, jZzb5);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zza(obj, i2)) {
                        zzmrVar.zzb(i3, zzma.zzf(obj, iZzd2 & 1048575), zza(i2));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzle.zza(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 19:
                    zzle.zzb(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 20:
                    zzle.zzc(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 21:
                    zzle.zzd(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 22:
                    zzle.zzh(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 23:
                    zzle.zzf(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 24:
                    zzle.zzk(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 25:
                    zzle.zzn(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 26:
                    zzle.zza(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar);
                    break;
                case 27:
                    zzle.zza(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, zza(i2));
                    break;
                case 28:
                    zzle.zzb(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar);
                    break;
                case 29:
                    zzle.zzi(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 30:
                    zzle.zzm(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 31:
                    zzle.zzl(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case 32:
                    zzle.zzg(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzle.zzj(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzle.zze(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, false);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzle.zza(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzle.zzb(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzle.zzc(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzle.zzd(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzle.zzh(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzle.zzf(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzle.zzk(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzle.zzn(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzle.zzi(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzle.zzm(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzle.zzl(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzle.zzg(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzle.zzj(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzle.zze(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, true);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzle.zzb(this.zzc[i2], (List) zzma.zzf(obj, iZzd2 & 1048575), zzmrVar, zza(i2));
                    break;
                case 50:
                    zza(zzmrVar, i3, zzma.zzf(obj, iZzd2 & 1048575), i2);
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i3, i2)) {
                        dZze = zzb(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, dZze);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i3, i2)) {
                        fZzd = zzc(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, fZzd);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i3, i2)) {
                        jZzb = zze(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, jZzb);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i3, i2)) {
                        jZzb2 = zze(obj, iZzd2 & 1048575);
                        zzmrVar.zzc(i3, jZzb2);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i3, i2)) {
                        iZza = zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zzc(i3, iZza);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zza(obj, i3, i2)) {
                        jZzb3 = zze(obj, iZzd2 & 1048575);
                        zzmrVar.zzd(i3, jZzb3);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zza(obj, i3, i2)) {
                        iZza2 = zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zzd(i3, iZza2);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i3, i2)) {
                        zZzc = zzf(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, zZzc);
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
                        iZza3 = zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zze(i3, iZza3);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i3, i2)) {
                        iZza4 = zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zzb(i3, iZza4);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza(obj, i3, i2)) {
                        iZza5 = zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zza(i3, iZza5);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza(obj, i3, i2)) {
                        jZzb4 = zze(obj, iZzd2 & 1048575);
                        zzmrVar.zzb(i3, jZzb4);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i3, i2)) {
                        iZza6 = zzd(obj, iZzd2 & 1048575);
                        zzmrVar.zzf(i3, iZza6);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i3, i2)) {
                        jZzb5 = zze(obj, iZzd2 & 1048575);
                        zzmrVar.zze(i3, jZzb5);
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
            this.zzr.zza(zzmrVar, entry);
            entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
        }
        zza(this.zzq, obj, zzmrVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02ca, code lost:
    
        if (r0 == r5) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02cc, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02d3, code lost:
    
        r15 = r30;
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r2 = r18;
        r1 = r25;
        r6 = r27;
        r7 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0318, code lost:
    
        if (r0 == r15) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0335, code lost:
    
        if (r0 == r15) goto L107;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0095. Please report as an issue. */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, byte[] bArr, int i, int i2, zzhn zzhnVar) throws zzjk {
        int i3;
        int iZza;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Unsafe unsafe;
        int i9;
        int i10;
        Unsafe unsafe2;
        int i11;
        int i12;
        Unsafe unsafe3;
        Object objZza;
        int iZze;
        Unsafe unsafe4;
        zzko zzkoVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i13 = i2;
        zzhn zzhnVar2 = zzhnVar;
        if (!zzkoVar.zzj) {
            zza(obj, bArr, i, i2, 0, zzhnVar);
            return;
        }
        Unsafe unsafe5 = zzb;
        int i14 = -1;
        int i15 = 1048575;
        int iZza2 = i;
        int i16 = -1;
        int i17 = 0;
        int i18 = 0;
        int i19 = 1048575;
        while (iZza2 < i13) {
            int i20 = iZza2 + 1;
            byte b = bArr2[iZza2];
            if (b < 0) {
                iZza = zzhl.zza(b, bArr2, i20, zzhnVar2);
                i3 = zzhnVar2.zza;
            } else {
                i3 = b;
                iZza = i20;
            }
            int i21 = i3 >>> 3;
            int i22 = i3 & 7;
            int iZza3 = i21 > i16 ? zzkoVar.zza(i21, i17 / 3) : zzkoVar.zzg(i21);
            if (iZza3 == i14) {
                i10 = iZza;
                i4 = i21;
                unsafe = unsafe5;
                i6 = 0;
            } else {
                int[] iArr = zzkoVar.zzc;
                int i23 = iArr[iZza3 + 1];
                int i24 = (i23 & 267386880) >>> 20;
                Unsafe unsafe6 = unsafe5;
                long j = i23 & i15;
                if (i24 <= 17) {
                    int i25 = iArr[iZza3 + 2];
                    int i26 = 1 << (i25 >>> 20);
                    int i27 = i25 & 1048575;
                    if (i27 != i19) {
                        if (i19 != 1048575) {
                            long j2 = i19;
                            unsafe4 = unsafe6;
                            unsafe4.putInt(obj2, j2, i18);
                        } else {
                            unsafe4 = unsafe6;
                        }
                        if (i27 != 1048575) {
                            i18 = unsafe4.getInt(obj2, i27);
                        }
                        unsafe2 = unsafe4;
                        i19 = i27;
                    } else {
                        unsafe2 = unsafe6;
                    }
                    switch (i24) {
                        case 0:
                            i4 = i21;
                            i11 = iZza;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 1) {
                                zzma.zza(obj2, j, zzhl.zzc(bArr2, i11));
                                iZza2 = i11 + 8;
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 1:
                            i4 = i21;
                            i11 = iZza;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 5) {
                                zzma.zza(obj2, j, zzhl.zzd(bArr2, i11));
                                iZza2 = i11 + 4;
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 2:
                        case 3:
                            i4 = i21;
                            i11 = iZza;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 0) {
                                int iZzb = zzhl.zzb(bArr2, i11, zzhnVar2);
                                unsafe3.putLong(obj, j, zzhnVar2.zzb);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                iZza2 = iZzb;
                                break;
                            }
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 4:
                        case 11:
                            i4 = i21;
                            i11 = iZza;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 0) {
                                iZza2 = zzhl.zza(bArr2, i11, zzhnVar2);
                                iZze = zzhnVar2.zza;
                                unsafe3.putInt(obj2, j, iZze);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 5:
                        case 14:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 1) {
                                unsafe3.putLong(obj, j, zzhl.zzb(bArr2, iZza));
                                iZza2 = iZza + 8;
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 6:
                        case 13:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 5) {
                                unsafe3.putInt(obj2, j, zzhl.zza(bArr2, iZza));
                                iZza2 = iZza + 4;
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 7:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 0) {
                                iZza2 = zzhl.zzb(bArr2, iZza, zzhnVar2);
                                zzma.zza(obj2, j, zzhnVar2.zzb != 0);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 8:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 2) {
                                iZza2 = (i23 & 536870912) == 0 ? zzhl.zzc(bArr2, iZza, zzhnVar2) : zzhl.zzd(bArr2, iZza, zzhnVar2);
                                objZza = zzhnVar2.zzc;
                                unsafe3.putObject(obj2, j, objZza);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 9:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 2) {
                                iZza2 = zzhl.zza(zzkoVar.zza(i12), bArr2, iZza, i13, zzhnVar2);
                                Object object = unsafe3.getObject(obj2, j);
                                objZza = object == null ? zzhnVar2.zzc : zzjf.zza(object, zzhnVar2.zzc);
                                unsafe3.putObject(obj2, j, objZza);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 10:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 2) {
                                iZza2 = zzhl.zze(bArr2, iZza, zzhnVar2);
                                objZza = zzhnVar2.zzc;
                                unsafe3.putObject(obj2, j, objZza);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 12:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 0) {
                                iZza2 = zzhl.zza(bArr2, iZza, zzhnVar2);
                                iZze = zzhnVar2.zza;
                                unsafe3.putInt(obj2, j, iZze);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 15:
                            i4 = i21;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            if (i22 == 0) {
                                iZza2 = zzhl.zza(bArr2, iZza, zzhnVar2);
                                iZze = zzif.zze(zzhnVar2.zza);
                                unsafe3.putInt(obj2, j, iZze);
                                i18 |= i26;
                                unsafe5 = unsafe3;
                                i17 = i12;
                                break;
                            }
                            i11 = iZza;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                        case 16:
                            if (i22 != 0) {
                                i4 = i21;
                                i5 = i19;
                                unsafe3 = unsafe2;
                                i11 = iZza;
                                i12 = iZza3;
                                i10 = i11;
                                unsafe = unsafe3;
                                i6 = i12;
                                i19 = i5;
                                break;
                            } else {
                                int iZzb2 = zzhl.zzb(bArr2, iZza, zzhnVar2);
                                i5 = i19;
                                i4 = i21;
                                unsafe2.putLong(obj, j, zzif.zza(zzhnVar2.zzb));
                                i18 |= i26;
                                unsafe5 = unsafe2;
                                i17 = iZza3;
                                iZza2 = iZzb2;
                                break;
                            }
                        default:
                            i4 = i21;
                            i11 = iZza;
                            i12 = iZza3;
                            i5 = i19;
                            unsafe3 = unsafe2;
                            i10 = i11;
                            unsafe = unsafe3;
                            i6 = i12;
                            i19 = i5;
                            break;
                    }
                    i15 = 1048575;
                    i14 = -1;
                } else {
                    i4 = i21;
                    int i28 = iZza;
                    i5 = i19;
                    if (i24 != 27) {
                        i6 = iZza3;
                        if (i24 <= 49) {
                            i8 = i18;
                            i9 = i5;
                            unsafe = unsafe6;
                            iZza2 = zza(obj, bArr, i28, i2, i3, i4, i22, i6, i23, i24, j, zzhnVar);
                        } else {
                            i7 = i28;
                            i8 = i18;
                            unsafe = unsafe6;
                            i9 = i5;
                            if (i24 != 50) {
                                iZza2 = zza(obj, bArr, i7, i2, i3, i4, i22, i23, i24, j, i6, zzhnVar);
                            } else if (i22 == 2) {
                                iZza2 = zza(obj, bArr, i7, i2, i6, j, zzhnVar);
                            }
                        }
                        unsafe5 = unsafe;
                        i15 = 1048575;
                        i14 = -1;
                    } else if (i22 == 2) {
                        zzjl zzjlVarZza = (zzjl) unsafe6.getObject(obj2, j);
                        if (!zzjlVarZza.zza()) {
                            int size = zzjlVarZza.size();
                            zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
                            unsafe6.putObject(obj2, j, zzjlVarZza);
                        }
                        iZza2 = zzhl.zza(zzkoVar.zza(iZza3), i3, bArr, i28, i2, zzjlVarZza, zzhnVar);
                        unsafe5 = unsafe6;
                        i18 = i18;
                        i17 = iZza3;
                    } else {
                        i6 = iZza3;
                        i7 = i28;
                        i8 = i18;
                        unsafe = unsafe6;
                        i9 = i5;
                    }
                    i10 = i7;
                    i18 = i8;
                    i19 = i9;
                    iZza2 = zzhl.zza(i3, bArr, i10, i2, zze(obj), zzhnVar);
                    zzkoVar = this;
                    obj2 = obj;
                    bArr2 = bArr;
                    i13 = i2;
                    zzhnVar2 = zzhnVar;
                    i17 = i6;
                    i16 = i4;
                    unsafe5 = unsafe;
                    i15 = 1048575;
                    i14 = -1;
                }
                i19 = i5;
                i16 = i4;
                i15 = 1048575;
                i14 = -1;
            }
            iZza2 = zzhl.zza(i3, bArr, i10, i2, zze(obj), zzhnVar);
            zzkoVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i13 = i2;
            zzhnVar2 = zzhnVar;
            i17 = i6;
            i16 = i4;
            unsafe5 = unsafe;
            i15 = 1048575;
            i14 = -1;
        }
        int i29 = i18;
        Unsafe unsafe7 = unsafe5;
        if (i19 != 1048575) {
            unsafe7.putInt(obj, i19, i29);
        }
        if (iZza2 != i2) {
            throw zzjk.zzg();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zza(Object obj, Object obj2) {
        int length = this.zzc.length;
        int i = 0;
        while (true) {
            boolean zZza = true;
            if (i >= length) {
                if (!this.zzq.zzb(obj).equals(this.zzq.zzb(obj2))) {
                    return false;
                }
                if (this.zzh) {
                    return this.zzr.zza(obj).equals(this.zzr.zza(obj2));
                }
                return true;
            }
            int iZzd = zzd(i);
            long j = iZzd & 1048575;
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    if (!zzc(obj, obj2, i) || Double.doubleToLongBits(zzma.zze(obj, j)) != Double.doubleToLongBits(zzma.zze(obj2, j))) {
                        zZza = false;
                        break;
                    }
                    break;
                case 1:
                    if (!zzc(obj, obj2, i) || Float.floatToIntBits(zzma.zzd(obj, j)) != Float.floatToIntBits(zzma.zzd(obj2, j))) {
                    }
                    break;
                case 2:
                    if (!zzc(obj, obj2, i) || zzma.zzb(obj, j) != zzma.zzb(obj2, j)) {
                    }
                    break;
                case 3:
                    if (!zzc(obj, obj2, i) || zzma.zzb(obj, j) != zzma.zzb(obj2, j)) {
                    }
                    break;
                case 4:
                    if (!zzc(obj, obj2, i) || zzma.zza(obj, j) != zzma.zza(obj2, j)) {
                    }
                    break;
                case 5:
                    if (!zzc(obj, obj2, i) || zzma.zzb(obj, j) != zzma.zzb(obj2, j)) {
                    }
                    break;
                case 6:
                    if (!zzc(obj, obj2, i) || zzma.zza(obj, j) != zzma.zza(obj2, j)) {
                    }
                    break;
                case 7:
                    if (!zzc(obj, obj2, i) || zzma.zzc(obj, j) != zzma.zzc(obj2, j)) {
                    }
                    break;
                case 8:
                    if (!zzc(obj, obj2, i) || !zzle.zza(zzma.zzf(obj, j), zzma.zzf(obj2, j))) {
                    }
                    break;
                case 9:
                    if (!zzc(obj, obj2, i) || !zzle.zza(zzma.zzf(obj, j), zzma.zzf(obj2, j))) {
                    }
                    break;
                case 10:
                    if (!zzc(obj, obj2, i) || !zzle.zza(zzma.zzf(obj, j), zzma.zzf(obj2, j))) {
                    }
                    break;
                case 11:
                    if (!zzc(obj, obj2, i) || zzma.zza(obj, j) != zzma.zza(obj2, j)) {
                    }
                    break;
                case 12:
                    if (!zzc(obj, obj2, i) || zzma.zza(obj, j) != zzma.zza(obj2, j)) {
                    }
                    break;
                case 13:
                    if (!zzc(obj, obj2, i) || zzma.zza(obj, j) != zzma.zza(obj2, j)) {
                    }
                    break;
                case 14:
                    if (!zzc(obj, obj2, i) || zzma.zzb(obj, j) != zzma.zzb(obj2, j)) {
                    }
                    break;
                case 15:
                    if (!zzc(obj, obj2, i) || zzma.zza(obj, j) != zzma.zza(obj2, j)) {
                    }
                    break;
                case 16:
                    if (!zzc(obj, obj2, i) || zzma.zzb(obj, j) != zzma.zzb(obj2, j)) {
                    }
                    break;
                case 17:
                    if (!zzc(obj, obj2, i) || !zzle.zza(zzma.zzf(obj, j), zzma.zzf(obj2, j))) {
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
                    zZza = zzle.zza(zzma.zzf(obj, j), zzma.zzf(obj2, j));
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
                    long jZze = zze(i) & 1048575;
                    if (zzma.zza(obj, jZze) != zzma.zza(obj2, jZze) || !zzle.zza(zzma.zzf(obj, j), zzma.zzf(obj2, j))) {
                    }
                    break;
            }
            if (!zZza) {
                return false;
            }
            i += 3;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03c0, code lost:
    
        if (zza(r19, r15, r3) != false) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x03c2, code lost:
    
        r6 = com.google.android.gms.internal.vision.zzii.zzc(r15, (com.google.android.gms.internal.vision.zzkk) r2.getObject(r19, r8), zza(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x03fb, code lost:
    
        if (zza(r19, r15, r3) != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x03fd, code lost:
    
        r6 = com.google.android.gms.internal.vision.zzii.zzh(r15, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0408, code lost:
    
        if (zza(r19, r15, r3) != false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x040a, code lost:
    
        r8 = com.google.android.gms.internal.vision.zzii.zzj(r15, 0);
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
    
        r6 = com.google.android.gms.internal.vision.zzle.zza(r15, r2.getObject(r19, r8), zza(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x046f, code lost:
    
        if (zza(r19, r15, r3) != false) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0471, code lost:
    
        r8 = com.google.android.gms.internal.vision.zzii.zzb(r15, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0506, code lost:
    
        if (r6 > 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0508, code lost:
    
        r8 = (com.google.android.gms.internal.vision.zzii.zze(r15) + com.google.android.gms.internal.vision.zzii.zzg(r6)) + r6;
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
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(Object obj) {
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
                int iZzd5 = zzd(i5);
                int[] iArr = this.zzc;
                int i8 = iArr[i5];
                int i9 = (iZzd5 & 267386880) >>> 20;
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
                long j2 = iZzd5 & i3;
                switch (i9) {
                    case 0:
                        j = 0;
                        if ((i7 & i) != 0) {
                            iZzb += zzii.zzb(i8, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        j = 0;
                        if ((i7 & i) != 0) {
                            iZzb += zzii.zzb(i8, BitmapDescriptorFactory.HUE_RED);
                        }
                        break;
                    case 2:
                        j = 0;
                        if ((i & i7) != 0) {
                            iZzd = zzii.zzd(i8, unsafe.getLong(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 3:
                        j = 0;
                        if ((i & i7) != 0) {
                            iZzd = zzii.zze(i8, unsafe.getLong(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 4:
                        j = 0;
                        if ((i & i7) != 0) {
                            iZzd = zzii.zzf(i8, unsafe.getInt(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 5:
                        j = 0;
                        if ((i7 & i) != 0) {
                            iZzd = zzii.zzg(i8, 0L);
                            iZzb += iZzd;
                        }
                        break;
                    case 6:
                        if ((i7 & i) != 0) {
                            iZzb += zzii.zzi(i8, 0);
                        }
                        j = 0;
                        break;
                    case 7:
                        break;
                    case 8:
                        if ((i7 & i) != 0) {
                            object = unsafe.getObject(obj, j2);
                            iZzi = object instanceof zzht ? zzii.zzc(i8, (zzht) object) : zzii.zzb(i8, (String) object);
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
                            iZzi = zzii.zzg(i8, iZzd2);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 12:
                        if ((i7 & i) != 0) {
                            iZzd3 = unsafe.getInt(obj, j2);
                            iZzi = zzii.zzk(i8, iZzd3);
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
                            iZzi = zzii.zzh(i8, iZzd4);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 16:
                        if ((i7 & i) != 0) {
                            jZze = unsafe.getLong(obj, j2);
                            iZzi = zzii.zzf(i8, jZze);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case 17:
                        break;
                    case 18:
                        iZzi = zzle.zzi(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 19:
                    case 24:
                    case 31:
                        iZza = zzle.zzh(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 20:
                        iZza = zzle.zza(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 21:
                        iZza = zzle.zzb(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 22:
                        iZza = zzle.zze(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 23:
                    case 32:
                        iZza = zzle.zzi(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 25:
                        iZza = zzle.zzj(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case 26:
                        iZzi = zzle.zza(i8, (List) unsafe.getObject(obj, j2));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 27:
                        iZzi = zzle.zza(i8, (List) unsafe.getObject(obj, j2), zza(i5));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 28:
                        iZzi = zzle.zzb(i8, (List) unsafe.getObject(obj, j2));
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 29:
                        iZzi = zzle.zzf(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzi;
                        j = 0;
                        break;
                    case 30:
                        iZza = zzle.zzd(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        iZza = zzle.zzg(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        iZza = zzle.zzc(i8, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZza;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        iZzi2 = zzle.zzi((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        iZzi2 = zzle.zzh((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        iZzi2 = zzle.zza((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        iZzi2 = zzle.zzb((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        iZzi2 = zzle.zze((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        iZzi2 = zzle.zzi((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        iZzi2 = zzle.zzh((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        iZzi2 = zzle.zzj((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        iZzi2 = zzle.zzf((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        iZzi2 = zzle.zzd((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        iZzi2 = zzle.zzh((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        iZzi2 = zzle.zzi((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        iZzi2 = zzle.zzg((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        iZzi2 = zzle.zzc((List) unsafe.getObject(obj, j2));
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        iZzi = zzle.zzb(i8, (List) unsafe.getObject(obj, j2), zza(i5));
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
                            iZzi = zzii.zzb(i8, 0.0d);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zza(obj, i8, i5)) {
                            iZze = zzii.zzb(i8, BitmapDescriptorFactory.HUE_RED);
                            iZzb += iZze;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzii.zzd(i8, zze(obj, j2));
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzii.zze(i8, zze(obj, j2));
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzii.zzf(i8, zzd(obj, j2));
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zza(obj, i8, i5)) {
                            iZzi = zzii.zzg(i8, 0L);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zza(obj, i8, i5)) {
                            iZze = zzii.zzi(i8, 0);
                            iZzb += iZze;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        break;
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (zza(obj, i8, i5)) {
                            object = unsafe.getObject(obj, j2);
                            if (object instanceof zzht) {
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
                            iZzi = zzii.zzg(i8, iZzd2);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zza(obj, i8, i5)) {
                            iZzd3 = zzd(obj, j2);
                            iZzi = zzii.zzk(i8, iZzd3);
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
                            iZzi = zzii.zzh(i8, iZzd4);
                            iZzb += iZzi;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zza(obj, i8, i5)) {
                            jZze = zze(obj, j2);
                            iZzi = zzii.zzf(i8, jZze);
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
            int iZzc = 0;
            int iZza7 = iZzb + zza(this.zzq, obj);
            if (!this.zzh) {
                return iZza7;
            }
            zziu zziuVarZza = this.zzr.zza(obj);
            for (int i12 = 0; i12 < zziuVarZza.zza.zzc(); i12++) {
                Map.Entry entryZzb = zziuVarZza.zza.zzb(i12);
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(entryZzb.getKey());
                iZzc += zziu.zzc(null, entryZzb.getValue());
            }
            for (Map.Entry entry : zziuVarZza.zza.zzd()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(entry.getKey());
                iZzc += zziu.zzc(null, entry.getValue());
            }
            return iZza7 + iZzc;
        }
        Unsafe unsafe2 = zzb;
        int i13 = 0;
        int i14 = 0;
        while (i13 < this.zzc.length) {
            int iZzd6 = zzd(i13);
            int i15 = (iZzd6 & i2) >>> 20;
            int i16 = this.zzc[i13];
            long j3 = iZzd6 & 1048575;
            if (i15 >= zziv.zza.zza() && i15 <= zziv.zzb.zza()) {
                int i17 = this.zzc[i13 + 2];
            }
            switch (i15) {
                case 0:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzb(i16, 0.0d);
                    i14 += iZza6;
                    break;
                case 1:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzb(i16, BitmapDescriptorFactory.HUE_RED);
                    i14 += iZza6;
                    break;
                case 2:
                    if (zza(obj, i13)) {
                        jZzb = zzma.zzb(obj, j3);
                        iZza6 = zzii.zzd(i16, jZzb);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza(obj, i13)) {
                        jZzb2 = zzma.zzb(obj, j3);
                        iZza6 = zzii.zze(i16, jZzb2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza(obj, i13)) {
                        iZza2 = zzma.zza(obj, j3);
                        iZza6 = zzii.zzf(i16, iZza2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzg(i16, 0L);
                    i14 += iZza6;
                    break;
                case 6:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzi(i16, 0);
                    i14 += iZza6;
                    break;
                case 7:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzb(i16, true);
                    i14 += iZza6;
                    break;
                case 8:
                    if (zza(obj, i13)) {
                        objZzf = zzma.zzf(obj, j3);
                        iZza6 = objZzf instanceof zzht ? zzii.zzc(i16, (zzht) objZzf) : zzii.zzb(i16, (String) objZzf);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzle.zza(i16, zzma.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 10:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    objZzf = zzma.zzf(obj, j3);
                    i14 += iZza6;
                    break;
                case 11:
                    if (zza(obj, i13)) {
                        iZza3 = zzma.zza(obj, j3);
                        iZza6 = zzii.zzg(i16, iZza3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza(obj, i13)) {
                        iZza4 = zzma.zza(obj, j3);
                        iZza6 = zzii.zzk(i16, iZza4);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzj(i16, 0);
                    i14 += iZza6;
                    break;
                case 14:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzh(i16, 0L);
                    i14 += iZza6;
                    break;
                case 15:
                    if (zza(obj, i13)) {
                        iZza5 = zzma.zza(obj, j3);
                        iZza6 = zzii.zzh(i16, iZza5);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza(obj, i13)) {
                        jZzb3 = zzma.zzb(obj, j3);
                        iZza6 = zzii.zzf(i16, jZzb3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (!zza(obj, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzc(i16, (zzkk) zzma.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 18:
                case 23:
                case 32:
                    iZza6 = zzle.zzi(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 19:
                case 24:
                case 31:
                    iZza6 = zzle.zzh(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 20:
                    iZza6 = zzle.zza(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 21:
                    iZza6 = zzle.zzb(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 22:
                    iZza6 = zzle.zze(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 25:
                    iZza6 = zzle.zzj(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 26:
                    iZza6 = zzle.zza(i16, zza(obj, j3));
                    i14 += iZza6;
                    break;
                case 27:
                    iZza6 = zzle.zza(i16, zza(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 28:
                    iZza6 = zzle.zzb(i16, zza(obj, j3));
                    i14 += iZza6;
                    break;
                case 29:
                    iZza6 = zzle.zzf(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case 30:
                    iZza6 = zzle.zzd(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    iZza6 = zzle.zzg(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    iZza6 = zzle.zzc(i16, zza(obj, j3), false);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZzi3 = zzle.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZzi3 = zzle.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZzi3 = zzle.zza((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZzi3 = zzle.zzb((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZzi3 = zzle.zze((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZzi3 = zzle.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZzi3 = zzle.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    iZzi3 = zzle.zzj((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZzi3 = zzle.zzf((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZzi3 = zzle.zzd((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZzi3 = zzle.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZzi3 = zzle.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZzi3 = zzle.zzg((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZzi3 = zzle.zzc((List) unsafe2.getObject(obj, j3));
                    if (iZzi3 <= 0) {
                        break;
                    }
                    iZza6 = zzii.zze(i16) + zzii.zzg(iZzi3) + iZzi3;
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    iZza6 = zzle.zzb(i16, zza(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case 50:
                    iZza6 = this.zzs.zza(i16, zzma.zzf(obj, j3), zzb(i13));
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzb(i16, 0.0d);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzb(i16, BitmapDescriptorFactory.HUE_RED);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i16, i13)) {
                        jZzb = zze(obj, j3);
                        iZza6 = zzii.zzd(i16, jZzb);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i16, i13)) {
                        jZzb2 = zze(obj, j3);
                        iZza6 = zzii.zze(i16, jZzb2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i16, i13)) {
                        iZza2 = zzd(obj, j3);
                        iZza6 = zzii.zzf(i16, iZza2);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzg(i16, 0L);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzi(i16, 0);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzb(i16, true);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zza(obj, i16, i13)) {
                        objZzf = zzma.zzf(obj, j3);
                        if (objZzf instanceof zzht) {
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
                    iZza6 = zzle.zza(i16, zzma.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    objZzf = zzma.zzf(obj, j3);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zza(obj, i16, i13)) {
                        iZza3 = zzd(obj, j3);
                        iZza6 = zzii.zzg(i16, iZza3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i16, i13)) {
                        iZza4 = zzd(obj, j3);
                        iZza6 = zzii.zzk(i16, iZza4);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzj(i16, 0);
                    i14 += iZza6;
                    break;
                case 65:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzh(i16, 0L);
                    i14 += iZza6;
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i16, i13)) {
                        iZza5 = zzd(obj, j3);
                        iZza6 = zzii.zzh(i16, iZza5);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i16, i13)) {
                        jZzb3 = zze(obj, j3);
                        iZza6 = zzii.zzf(i16, jZzb3);
                        i14 += iZza6;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i16, i13)) {
                        break;
                    }
                    iZza6 = zzii.zzc(i16, (zzkk) zzma.zzf(obj, j3), zza(i13));
                    i14 += iZza6;
                    break;
            }
            i13 += 3;
            i2 = 267386880;
        }
        return i14 + zza(this.zzq, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzd = zzd(i);
            long j = 1048575 & iZzd;
            int i2 = this.zzc[i];
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    if (zza(obj2, i)) {
                        zzma.zza(obj, j, zzma.zze(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza(obj2, i)) {
                        zzma.zza(obj, j, zzma.zzd(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 3:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 4:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 5:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 6:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 7:
                    if (zza(obj2, i)) {
                        zzma.zza(obj, j, zzma.zzc(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zzf(obj2, j));
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
                    zzma.zza(obj, j, zzma.zzf(obj2, j));
                    zzb(obj, i);
                    break;
                case 11:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 12:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 13:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 14:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zzb(obj2, j));
                    zzb(obj, i);
                    break;
                case 15:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zza(obj2, j));
                    zzb(obj, i);
                    break;
                case 16:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzma.zza(obj, j, zzma.zzb(obj2, j));
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
                    zzle.zza(this.zzs, obj, obj2, j);
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
                        zzma.zza(obj, j, zzma.zzf(obj2, j));
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
        zzle.zza(this.zzq, obj, obj2);
        if (this.zzh) {
            zzle.zza(this.zzr, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzc(Object obj) {
        int i;
        int i2 = this.zzm;
        while (true) {
            i = this.zzn;
            if (i2 >= i) {
                break;
            }
            long jZzd = zzd(this.zzl[i2]) & 1048575;
            Object objZzf = zzma.zzf(obj, jZzd);
            if (objZzf != null) {
                zzma.zza(obj, jZzd, this.zzs.zze(objZzf));
            }
            i2++;
        }
        int length = this.zzl.length;
        while (i < length) {
            this.zzp.zzb(obj, this.zzl[i]);
            i++;
        }
        this.zzq.zzd(obj);
        if (this.zzh) {
            this.zzr.zzc(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzd(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzm) {
            int i6 = this.zzl[i5];
            int i7 = this.zzc[i6];
            int iZzd = zzd(i6);
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
            if ((268435456 & iZzd) != 0 && !zza(obj, i6, i, i2, i10)) {
                return false;
            }
            int i11 = (267386880 & iZzd) >>> 20;
            if (i11 == 9 || i11 == 17) {
                if (zza(obj, i6, i, i2, i10) && !zza(obj, iZzd, zza(i6))) {
                    return false;
                }
            } else if (i11 == 27) {
                List list = (List) zzma.zzf(obj, iZzd & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzlc zzlcVarZza = zza(i6);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!zzlcVarZza.zzd(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (i11 == 60 || i11 == 68) {
                if (zza(obj, i7, i6) && !zza(obj, iZzd, zza(i6))) {
                    return false;
                }
            } else if (i11 != 49) {
                if (i11 == 50 && !this.zzs.zzc(zzma.zzf(obj, iZzd & 1048575)).isEmpty()) {
                    this.zzs.zzb(zzb(i6));
                    throw null;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.zzh || this.zzr.zza(obj).zzf();
    }
}
