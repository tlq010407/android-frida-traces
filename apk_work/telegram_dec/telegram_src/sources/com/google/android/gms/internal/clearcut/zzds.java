package com.google.android.gms.internal.clearcut;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.internal.clearcut.zzcg;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.R;
import sun.misc.Unsafe;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzds implements zzef {
    private static final Unsafe zzmh = zzfd.zzef();
    private final int[] zzmi;
    private final Object[] zzmj;
    private final int zzmk;
    private final int zzml;
    private final int zzmm;
    private final zzdo zzmn;
    private final boolean zzmo;
    private final boolean zzmp;
    private final boolean zzmq;
    private final boolean zzmr;
    private final int[] zzms;
    private final int[] zzmt;
    private final int[] zzmu;
    private final zzdw zzmv;
    private final zzcy zzmw;
    private final zzex zzmx;
    private final zzbu zzmy;
    private final zzdj zzmz;

    private zzds(int[] iArr, Object[] objArr, int i, int i2, int i3, zzdo zzdoVar, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, zzdw zzdwVar, zzcy zzcyVar, zzex zzexVar, zzbu zzbuVar, zzdj zzdjVar) {
        this.zzmi = iArr;
        this.zzmj = objArr;
        this.zzmk = i;
        this.zzml = i2;
        this.zzmm = i3;
        this.zzmp = zzdoVar instanceof zzcg;
        this.zzmq = z;
        this.zzmo = zzbuVar != null && zzbuVar.zze(zzdoVar);
        this.zzmr = false;
        this.zzms = iArr2;
        this.zzmt = iArr3;
        this.zzmu = iArr4;
        this.zzmv = zzdwVar;
        this.zzmw = zzcyVar;
        this.zzmx = zzexVar;
        this.zzmy = zzbuVar;
        this.zzmn = zzdoVar;
        this.zzmz = zzdjVar;
    }

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzay zzayVar) {
        return zzax.zza(i, bArr, i2, i3, zzn(obj), zzayVar);
    }

    private static int zza(zzef zzefVar, int i, byte[] bArr, int i2, int i3, zzcn zzcnVar, zzay zzayVar) throws zzco {
        int iZza = zza(zzefVar, bArr, i2, i3, zzayVar);
        while (true) {
            zzcnVar.add(zzayVar.zzff);
            if (iZza >= i3) {
                break;
            }
            int iZza2 = zzax.zza(bArr, iZza, zzayVar);
            if (i != zzayVar.zzfd) {
                break;
            }
            iZza = zza(zzefVar, bArr, iZza2, i3, zzayVar);
        }
        return iZza;
    }

    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, int i3, zzay zzayVar) throws zzco {
        zzds zzdsVar = (zzds) zzefVar;
        Object objNewInstance = zzdsVar.newInstance();
        int iZza = zzdsVar.zza(objNewInstance, bArr, i, i2, i3, zzayVar);
        zzdsVar.zzc(objNewInstance);
        zzayVar.zzff = objNewInstance;
        return iZza;
    }

    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, zzay zzayVar) throws zzco {
        int iZza = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZza = zzax.zza(i3, bArr, iZza, zzayVar);
            i3 = zzayVar.zzfd;
        }
        int i4 = iZza;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzco.zzbl();
        }
        Object objNewInstance = zzefVar.newInstance();
        int i5 = i3 + i4;
        zzefVar.zza(objNewInstance, bArr, i4, i5, zzayVar);
        zzefVar.zzc(objNewInstance);
        zzayVar.zzff = objNewInstance;
        return i5;
    }

    private static int zza(zzex zzexVar, Object obj) {
        return zzexVar.zzm(zzexVar.zzq(obj));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzay zzayVar) throws zzco {
        Object objValueOf;
        Object objValueOf2;
        int iZzb;
        long jZza;
        int iZzm;
        Object objValueOf3;
        int i9;
        Unsafe unsafe = zzmh;
        long j2 = this.zzmi[i8 + 2] & 1048575;
        switch (i7) {
            case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                if (i5 == 1) {
                    objValueOf = Double.valueOf(zzax.zze(bArr, i));
                    unsafe.putObject(obj, j, objValueOf);
                    iZzb = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                if (i5 == 5) {
                    objValueOf2 = Float.valueOf(zzax.zzf(bArr, i));
                    unsafe.putObject(obj, j, objValueOf2);
                    iZzb = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
            case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                if (i5 == 0) {
                    iZzb = zzax.zzb(bArr, i, zzayVar);
                    jZza = zzayVar.zzfe;
                    objValueOf3 = Long.valueOf(jZza);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
            case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                if (i5 == 0) {
                    iZzb = zzax.zza(bArr, i, zzayVar);
                    iZzm = zzayVar.zzfd;
                    objValueOf3 = Integer.valueOf(iZzm);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorError /* 56 */:
            case 65:
                if (i5 == 1) {
                    objValueOf = Long.valueOf(zzax.zzd(bArr, i));
                    unsafe.putObject(obj, j, objValueOf);
                    iZzb = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
            case 64:
                if (i5 == 5) {
                    objValueOf2 = Integer.valueOf(zzax.zzc(bArr, i));
                    unsafe.putObject(obj, j, objValueOf2);
                    iZzb = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                if (i5 == 0) {
                    iZzb = zzax.zzb(bArr, i, zzayVar);
                    objValueOf3 = Boolean.valueOf(zzayVar.zzfe != 0);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                if (i5 == 2) {
                    iZzb = zzax.zza(bArr, i, zzayVar);
                    i9 = zzayVar.zzfd;
                    if (i9 == 0) {
                        objValueOf3 = "";
                        unsafe.putObject(obj, j, objValueOf3);
                        unsafe.putInt(obj, j2, i4);
                        return iZzb;
                    }
                    if ((i6 & 536870912) != 0 && !zzff.zze(bArr, iZzb, iZzb + i9)) {
                        throw zzco.zzbp();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZzb, i9, zzci.UTF_8));
                    iZzb += i9;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                if (i5 == 2) {
                    iZzb = zza(zzad(i8), bArr, i, i2, zzayVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    objValueOf3 = zzayVar.zzff;
                    if (object != null) {
                        objValueOf3 = zzci.zza(object, objValueOf3);
                    }
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                if (i5 == 2) {
                    iZzb = zzax.zza(bArr, i, zzayVar);
                    i9 = zzayVar.zzfd;
                    if (i9 == 0) {
                        objValueOf3 = zzbb.zzfi;
                        unsafe.putObject(obj, j, objValueOf3);
                        unsafe.putInt(obj, j2, i4);
                        return iZzb;
                    }
                    unsafe.putObject(obj, j, zzbb.zzb(bArr, iZzb, i9));
                    iZzb += i9;
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                if (i5 == 0) {
                    int iZza = zzax.zza(bArr, i, zzayVar);
                    int i10 = zzayVar.zzfd;
                    zzck zzckVarZzaf = zzaf(i8);
                    if (zzckVarZzaf != null && zzckVarZzaf.zzb(i10) == null) {
                        zzn(obj).zzb(i3, Long.valueOf(i10));
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
                    iZzb = zzax.zza(bArr, i, zzayVar);
                    iZzm = zzbk.zzm(zzayVar.zzfd);
                    objValueOf3 = Integer.valueOf(iZzm);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                if (i5 == 0) {
                    iZzb = zzax.zzb(bArr, i, zzayVar);
                    jZza = zzbk.zza(zzayVar.zzfe);
                    objValueOf3 = Long.valueOf(jZza);
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
                return i;
            case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                if (i5 == 3) {
                    iZzb = zza(zzad(i8), bArr, i, i2, (i3 & (-8)) | 4, zzayVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    objValueOf3 = zzayVar.zzff;
                    if (object2 != null) {
                        objValueOf3 = zzci.zza(object2, objValueOf3);
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

    /* JADX WARN: Code restructure failed: missing block: B:191:0x012a, code lost:
    
        r12.add(com.google.android.gms.internal.clearcut.zzbb.zzb(r17, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x011a, code lost:
    
        if (r4 == 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x011c, code lost:
    
        r12.add(com.google.android.gms.internal.clearcut.zzbb.zzfi);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0122, code lost:
    
        r12.add(com.google.android.gms.internal.clearcut.zzbb.zzb(r17, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x012a, code lost:
    
        if (r1 >= r19) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x012c, code lost:
    
        r4 = com.google.android.gms.internal.clearcut.zzax.zza(r17, r1, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0132, code lost:
    
        if (r20 != r29.zzfd) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0134, code lost:
    
        r1 = com.google.android.gms.internal.clearcut.zzax.zza(r17, r4, r29);
        r4 = r29.zzfd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x013a, code lost:
    
        if (r4 != 0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:81:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x013a -> B:62:0x011c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x018d -> B:77:0x016e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x01c3 -> B:89:0x019c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzay zzayVar) throws zzco {
        int iZza;
        int iZza2 = i;
        Unsafe unsafe = zzmh;
        zzcn zzcnVarZzi = (zzcn) unsafe.getObject(obj, j2);
        if (!zzcnVarZzi.zzu()) {
            int size = zzcnVarZzi.size();
            zzcnVarZzi = zzcnVarZzi.zzi(size == 0 ? 10 : size << 1);
            unsafe.putObject(obj, j2, zzcnVarZzi);
        }
        switch (i7) {
            case 18:
            case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza3 = zzax.zza(bArr, iZza2, zzayVar);
                    int i8 = zzayVar.zzfd + iZza3;
                    if (iZza3 < i8) {
                        zzax.zze(bArr, iZza3);
                        throw null;
                    }
                    if (iZza3 == i8) {
                        return iZza3;
                    }
                    throw zzco.zzbl();
                }
                if (i5 == 1) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zze(bArr, i);
                    throw null;
                }
                break;
            case 19:
            case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza4 = zzax.zza(bArr, iZza2, zzayVar);
                    int i9 = zzayVar.zzfd + iZza4;
                    if (iZza4 < i9) {
                        zzax.zzf(bArr, iZza4);
                        throw null;
                    }
                    if (iZza4 == i9) {
                        return iZza4;
                    }
                    throw zzco.zzbl();
                }
                if (i5 == 5) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zzf(bArr, i);
                    throw null;
                }
                break;
            case 20:
            case 21:
            case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
            case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza5 = zzax.zza(bArr, iZza2, zzayVar);
                    int i10 = zzayVar.zzfd + iZza5;
                    if (iZza5 < i10) {
                        zzax.zzb(bArr, iZza5, zzayVar);
                        throw null;
                    }
                    if (iZza5 == i10) {
                        return iZza5;
                    }
                    throw zzco.zzbl();
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zzb(bArr, iZza2, zzayVar);
                    long j3 = zzayVar.zzfe;
                    throw null;
                }
                break;
            case 22:
            case 29:
            case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
            case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                if (i5 == 2) {
                    return zzax.zza(bArr, iZza2, zzcnVarZzi, zzayVar);
                }
                if (i5 == 0) {
                    return zzax.zza(i3, bArr, i, i2, zzcnVarZzi, zzayVar);
                }
                break;
            case 23:
            case 32:
            case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
            case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza6 = zzax.zza(bArr, iZza2, zzayVar);
                    int i11 = zzayVar.zzfd + iZza6;
                    if (iZza6 < i11) {
                        zzax.zzd(bArr, iZza6);
                        throw null;
                    }
                    if (iZza6 == i11) {
                        return iZza6;
                    }
                    throw zzco.zzbl();
                }
                if (i5 == 1) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zzd(bArr, i);
                    throw null;
                }
                break;
            case 24:
            case 31:
            case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
            case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza7 = zzax.zza(bArr, iZza2, zzayVar);
                    int i12 = zzayVar.zzfd + iZza7;
                    if (iZza7 < i12) {
                        zzax.zzc(bArr, iZza7);
                        throw null;
                    }
                    if (iZza7 == i12) {
                        return iZza7;
                    }
                    throw zzco.zzbl();
                }
                if (i5 == 5) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zzc(bArr, i);
                    throw null;
                }
                break;
            case 25:
            case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza8 = zzax.zza(bArr, iZza2, zzayVar);
                    int i13 = zzayVar.zzfd + iZza8;
                    if (iZza8 < i13) {
                        zzax.zzb(bArr, iZza8, zzayVar);
                        throw null;
                    }
                    if (iZza8 == i13) {
                        return iZza8;
                    }
                    throw zzco.zzbl();
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zzb(bArr, iZza2, zzayVar);
                    long j4 = zzayVar.zzfe;
                    throw null;
                }
                break;
            case 26:
                if (i5 == 2) {
                    long j5 = j & 536870912;
                    iZza2 = zzax.zza(bArr, iZza2, zzayVar);
                    if (j5 != 0) {
                        int i14 = zzayVar.zzfd;
                        if (i14 == 0) {
                            zzcnVarZzi.add("");
                        } else {
                            int i15 = iZza2 + i14;
                            if (!zzff.zze(bArr, iZza2, i15)) {
                                throw zzco.zzbp();
                            }
                            zzcnVarZzi.add(new String(bArr, iZza2, i14, zzci.UTF_8));
                            iZza2 = i15;
                        }
                        while (iZza2 < i2) {
                            int iZza9 = zzax.zza(bArr, iZza2, zzayVar);
                            if (i3 != zzayVar.zzfd) {
                                break;
                            } else {
                                iZza2 = zzax.zza(bArr, iZza9, zzayVar);
                                int i16 = zzayVar.zzfd;
                                if (i16 == 0) {
                                    zzcnVarZzi.add("");
                                    while (iZza2 < i2) {
                                    }
                                } else {
                                    int i17 = iZza2 + i16;
                                    if (!zzff.zze(bArr, iZza2, i17)) {
                                        throw zzco.zzbp();
                                    }
                                    zzcnVarZzi.add(new String(bArr, iZza2, i16, zzci.UTF_8));
                                    iZza2 = i17;
                                }
                            }
                        }
                        break;
                    } else {
                        int i18 = zzayVar.zzfd;
                        if (i18 == 0) {
                            zzcnVarZzi.add("");
                        } else {
                            zzcnVarZzi.add(new String(bArr, iZza2, i18, zzci.UTF_8));
                            iZza2 += i18;
                        }
                        while (iZza2 < i2) {
                            int iZza10 = zzax.zza(bArr, iZza2, zzayVar);
                            if (i3 != zzayVar.zzfd) {
                                break;
                            } else {
                                iZza2 = zzax.zza(bArr, iZza10, zzayVar);
                                int i19 = zzayVar.zzfd;
                                if (i19 == 0) {
                                    zzcnVarZzi.add("");
                                    while (iZza2 < i2) {
                                    }
                                } else {
                                    zzcnVarZzi.add(new String(bArr, iZza2, i19, zzci.UTF_8));
                                    iZza2 += i19;
                                }
                            }
                        }
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return zza(zzad(i6), i3, bArr, i, i2, zzcnVarZzi, zzayVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iZza11 = zzax.zza(bArr, iZza2, zzayVar);
                    int i20 = zzayVar.zzfd;
                    break;
                }
                break;
            case 30:
            case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                if (i5 == 2) {
                    iZza = zzax.zza(bArr, iZza2, zzcnVarZzi, zzayVar);
                } else if (i5 == 0) {
                    iZza = zzax.zza(i3, bArr, i, i2, zzcnVarZzi, zzayVar);
                }
                zzcg zzcgVar = (zzcg) obj;
                zzey zzeyVar = zzcgVar.zzjp;
                zzey zzeyVar2 = (zzey) zzeh.zza(i4, zzcnVarZzi, zzaf(i6), zzeyVar != zzey.zzea() ? zzeyVar : null, this.zzmx);
                if (zzeyVar2 != null) {
                    zzcgVar.zzjp = zzeyVar2;
                }
                return iZza;
            case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
            case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza12 = zzax.zza(bArr, iZza2, zzayVar);
                    int i21 = zzayVar.zzfd + iZza12;
                    if (iZza12 >= i21) {
                        if (iZza12 == i21) {
                            return iZza12;
                        }
                        throw zzco.zzbl();
                    }
                    zzax.zza(bArr, iZza12, zzayVar);
                    zzbk.zzm(zzayVar.zzfd);
                    throw null;
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zza(bArr, iZza2, zzayVar);
                    zzbk.zzm(zzayVar.zzfd);
                    throw null;
                }
                break;
            case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
            case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                if (i5 == 2) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    int iZza13 = zzax.zza(bArr, iZza2, zzayVar);
                    int i22 = zzayVar.zzfd + iZza13;
                    if (iZza13 >= i22) {
                        if (iZza13 == i22) {
                            return iZza13;
                        }
                        throw zzco.zzbl();
                    }
                    zzax.zzb(bArr, iZza13, zzayVar);
                    zzbk.zza(zzayVar.zzfe);
                    throw null;
                }
                if (i5 == 0) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcnVarZzi);
                    zzax.zzb(bArr, iZza2, zzayVar);
                    zzbk.zza(zzayVar.zzfe);
                    throw null;
                }
                break;
            case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                if (i5 == 3) {
                    zzef zzefVarZzad = zzad(i6);
                    int i23 = (i3 & (-8)) | 4;
                    iZza2 = zza(zzefVarZzad, bArr, i, i2, i23, zzayVar);
                    while (true) {
                        zzcnVarZzi.add(zzayVar.zzff);
                        if (iZza2 >= i2) {
                            break;
                        } else {
                            int iZza14 = zzax.zza(bArr, iZza2, zzayVar);
                            if (i3 != zzayVar.zzfd) {
                                break;
                            } else {
                                iZza2 = zza(zzefVarZzad, bArr, iZza14, i2, i23, zzayVar);
                            }
                        }
                    }
                }
                break;
        }
        return iZza2;
    }

    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, long j, zzay zzayVar) throws zzco {
        Unsafe unsafe = zzmh;
        Object objZzae = zzae(i3);
        Object object = unsafe.getObject(obj, j);
        if (this.zzmz.zzi(object)) {
            Object objZzk = this.zzmz.zzk(objZzae);
            this.zzmz.zzb(objZzk, object);
            unsafe.putObject(obj, j, objZzk);
            object = objZzk;
        }
        this.zzmz.zzl(objZzae);
        this.zzmz.zzg(object);
        int iZza = zzax.zza(bArr, i, zzayVar);
        int i5 = zzayVar.zzfd;
        if (i5 < 0 || i5 > i2 - iZza) {
            throw zzco.zzbl();
        }
        throw null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0068. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0374 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, zzay zzayVar) throws zzco {
        Unsafe unsafe;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Object obj2;
        zzck zzckVarZzaf;
        int i9;
        int iZza;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        zzay zzayVar2;
        int i15;
        int i16;
        int i17;
        long j;
        Object objZza;
        zzay zzayVar3;
        int iZze;
        zzds zzdsVar = this;
        Object obj3 = obj;
        byte[] bArr2 = bArr;
        int i18 = i2;
        int i19 = i3;
        zzay zzayVar4 = zzayVar;
        Unsafe unsafe2 = zzmh;
        int i20 = -1;
        int iZza2 = i;
        int i21 = 0;
        int i22 = 0;
        int i23 = -1;
        while (true) {
            if (iZza2 < i18) {
                int i24 = iZza2 + 1;
                byte b = bArr2[iZza2];
                if (b < 0) {
                    iZza = zzax.zza(b, bArr2, i24, zzayVar4);
                    i9 = zzayVar4.zzfd;
                } else {
                    i9 = b;
                    iZza = i24;
                }
                int i25 = i9 >>> 3;
                int i26 = i9 & 7;
                int iZzai = zzdsVar.zzai(i25);
                if (iZzai != i20) {
                    int[] iArr = zzdsVar.zzmi;
                    int i27 = iArr[iZzai + 1];
                    int i28 = (i27 & 267386880) >>> 20;
                    int i29 = i9;
                    long j2 = i27 & 1048575;
                    if (i28 <= 17) {
                        int i30 = iArr[iZzai + 2];
                        int i31 = 1 << (i30 >>> 20);
                        int i32 = i30 & 1048575;
                        if (i32 != i23) {
                            if (i23 != -1) {
                                unsafe2.putInt(obj3, i23, i22);
                            }
                            i22 = unsafe2.getInt(obj3, i32);
                            i23 = i32;
                        }
                        switch (i28) {
                            case 0:
                                i6 = i29;
                                zzayVar2 = zzayVar;
                                i15 = iZza;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 1) {
                                    zzfd.zza(obj3, j2, zzax.zze(bArr2, i15));
                                    iZza2 = i15 + 8;
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4 && i4 != 0) {
                                        i7 = i23;
                                        i8 = -1;
                                        i5 = i14;
                                        break;
                                    } else {
                                        iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                        zzdsVar = this;
                                        obj3 = obj;
                                        bArr2 = bArr;
                                        i18 = i2;
                                        i19 = i4;
                                        i21 = i6;
                                        unsafe2 = unsafe;
                                        i20 = -1;
                                        zzayVar4 = zzayVar;
                                        break;
                                    }
                                }
                            case 1:
                                i6 = i29;
                                zzayVar2 = zzayVar;
                                i15 = iZza;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 5) {
                                    zzfd.zza(obj3, j2, zzax.zzf(bArr2, i15));
                                    iZza2 = i15 + 4;
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 2:
                            case 3:
                                i6 = i29;
                                i15 = iZza;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 0) {
                                    int iZzb = zzax.zzb(bArr2, i15, zzayVar);
                                    unsafe2.putLong(obj, j2, zzayVar.zzfe);
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar;
                                    iZza2 = iZzb;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 4:
                            case 11:
                                i6 = i29;
                                zzayVar2 = zzayVar;
                                i15 = iZza;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 0) {
                                    iZza2 = zzax.zza(bArr2, i15, zzayVar2);
                                    unsafe2.putInt(obj3, j2, zzayVar2.zzfd);
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 5:
                            case 14:
                                i6 = i29;
                                zzayVar2 = zzayVar;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 1) {
                                    unsafe2.putLong(obj, j2, zzax.zzd(bArr2, iZza));
                                    iZza2 = iZza + 8;
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 6:
                            case 13:
                                i6 = i29;
                                i17 = i2;
                                zzayVar2 = zzayVar;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 5) {
                                    unsafe2.putInt(obj3, j2, zzax.zzc(bArr2, iZza));
                                    iZza2 = iZza + 4;
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i17;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 7:
                                i6 = i29;
                                i17 = i2;
                                zzayVar2 = zzayVar;
                                i16 = i23;
                                bArr2 = bArr;
                                if (i26 == 0) {
                                    iZza2 = zzax.zzb(bArr2, iZza, zzayVar2);
                                    zzfd.zza(obj3, j2, zzayVar2.zzfe != 0);
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i17;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 8:
                                i6 = i29;
                                i17 = i2;
                                zzayVar2 = zzayVar;
                                i16 = i23;
                                j = j2;
                                bArr2 = bArr;
                                if (i26 == 2) {
                                    iZza2 = (i27 & 536870912) == 0 ? zzax.zzc(bArr2, iZza, zzayVar2) : zzax.zzd(bArr2, iZza, zzayVar2);
                                    objZza = zzayVar2.zzff;
                                    unsafe2.putObject(obj3, j, objZza);
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i17;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 9:
                                i6 = i29;
                                zzayVar2 = zzayVar;
                                i16 = i23;
                                j = j2;
                                bArr2 = bArr;
                                if (i26 == 2) {
                                    i17 = i2;
                                    iZza2 = zza(zzdsVar.zzad(iZzai), bArr2, iZza, i17, zzayVar2);
                                    objZza = (i22 & i31) == 0 ? zzayVar2.zzff : zzci.zza(unsafe2.getObject(obj3, j), zzayVar2.zzff);
                                    unsafe2.putObject(obj3, j, objZza);
                                    i22 |= i31;
                                    i23 = i16;
                                    i18 = i17;
                                    i21 = i6;
                                    zzayVar4 = zzayVar2;
                                    i20 = -1;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 10:
                                i6 = i29;
                                zzayVar3 = zzayVar;
                                i20 = -1;
                                bArr2 = bArr;
                                if (i26 == 2) {
                                    iZze = zzax.zze(bArr2, iZza, zzayVar3);
                                    unsafe2.putObject(obj3, j2, zzayVar3.zzff);
                                    i22 |= i31;
                                    i18 = i2;
                                    iZza2 = iZze;
                                    i21 = i6;
                                    zzayVar4 = zzayVar3;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i16 = i23;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 12:
                                i6 = i29;
                                zzayVar3 = zzayVar;
                                i20 = -1;
                                bArr2 = bArr;
                                if (i26 == 0) {
                                    iZza2 = zzax.zza(bArr2, iZza, zzayVar3);
                                    int i33 = zzayVar3.zzfd;
                                    zzck zzckVarZzaf2 = zzdsVar.zzaf(iZzai);
                                    if (zzckVarZzaf2 == null || zzckVarZzaf2.zzb(i33) != null) {
                                        unsafe2.putInt(obj3, j2, i33);
                                        i22 |= i31;
                                    } else {
                                        zzn(obj).zzb(i6, Long.valueOf(i33));
                                    }
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar3;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i16 = i23;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 15:
                                i6 = i29;
                                zzayVar3 = zzayVar;
                                i20 = -1;
                                bArr2 = bArr;
                                if (i26 == 0) {
                                    iZze = zzax.zza(bArr2, iZza, zzayVar3);
                                    unsafe2.putInt(obj3, j2, zzbk.zzm(zzayVar3.zzfd));
                                    i22 |= i31;
                                    i18 = i2;
                                    iZza2 = iZze;
                                    i21 = i6;
                                    zzayVar4 = zzayVar3;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i16 = i23;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 16:
                                i6 = i29;
                                i20 = -1;
                                if (i26 == 0) {
                                    bArr2 = bArr;
                                    int iZzb2 = zzax.zzb(bArr2, iZza, zzayVar);
                                    unsafe2.putLong(obj, j2, zzbk.zza(zzayVar.zzfe));
                                    i22 |= i31;
                                    i21 = i6;
                                    zzayVar4 = zzayVar;
                                    iZza2 = iZzb2;
                                    i18 = i2;
                                    i19 = i3;
                                    break;
                                } else {
                                    i15 = iZza;
                                    i16 = i23;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            case 17:
                                if (i26 == 3) {
                                    i6 = i29;
                                    i20 = -1;
                                    iZza2 = zza(zzdsVar.zzad(iZzai), bArr, iZza, i2, (i25 << 3) | 4, zzayVar);
                                    zzayVar3 = zzayVar;
                                    unsafe2.putObject(obj3, j2, (i22 & i31) == 0 ? zzayVar3.zzff : zzci.zza(unsafe2.getObject(obj3, j2), zzayVar3.zzff));
                                    i22 |= i31;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i21 = i6;
                                    zzayVar4 = zzayVar3;
                                    i19 = i3;
                                    break;
                                } else {
                                    i6 = i29;
                                    i15 = iZza;
                                    i16 = i23;
                                    i23 = i16;
                                    i4 = i3;
                                    i14 = i15;
                                    unsafe = unsafe2;
                                    if (i6 != i4) {
                                    }
                                    iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i18 = i2;
                                    i19 = i4;
                                    i21 = i6;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                    zzayVar4 = zzayVar;
                                    break;
                                }
                                break;
                            default:
                                i6 = i29;
                                i15 = iZza;
                                i16 = i23;
                                i23 = i16;
                                i4 = i3;
                                i14 = i15;
                                unsafe = unsafe2;
                                if (i6 != i4) {
                                }
                                iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                                zzdsVar = this;
                                obj3 = obj;
                                bArr2 = bArr;
                                i18 = i2;
                                i19 = i4;
                                i21 = i6;
                                unsafe2 = unsafe;
                                i20 = -1;
                                zzayVar4 = zzayVar;
                                break;
                        }
                    } else {
                        int i34 = iZza;
                        i13 = i23;
                        bArr2 = bArr;
                        if (i28 != 27) {
                            i12 = i22;
                            if (i28 <= 49) {
                                i11 = i29;
                                unsafe = unsafe2;
                                iZza2 = zza(obj, bArr, i34, i2, i29, i25, i26, iZzai, i27, i28, j2, zzayVar);
                                if (iZza2 == i34) {
                                    i6 = i11;
                                    i4 = i3;
                                    i14 = iZza2;
                                    i23 = i13;
                                    i22 = i12;
                                } else {
                                    zzdsVar = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i21 = i11;
                                    i18 = i2;
                                    i19 = i3;
                                    zzayVar4 = zzayVar;
                                    i23 = i13;
                                    i22 = i12;
                                    unsafe2 = unsafe;
                                    i20 = -1;
                                }
                            } else {
                                i10 = i34;
                                i11 = i29;
                                unsafe = unsafe2;
                                if (i28 != 50) {
                                    iZza2 = zza(obj, bArr, i10, i2, i11, i25, i26, i27, i28, j2, iZzai, zzayVar);
                                    if (iZza2 == i10) {
                                        i6 = i11;
                                        i4 = i3;
                                        i14 = iZza2;
                                        i23 = i13;
                                        i22 = i12;
                                    } else {
                                        zzdsVar = this;
                                        obj3 = obj;
                                        bArr2 = bArr;
                                        i21 = i11;
                                        i18 = i2;
                                        i19 = i3;
                                        zzayVar4 = zzayVar;
                                        i23 = i13;
                                        i22 = i12;
                                        unsafe2 = unsafe;
                                        i20 = -1;
                                    }
                                } else if (i26 == 2) {
                                    iZza2 = zza(obj, bArr, i10, i2, iZzai, i25, j2, zzayVar);
                                    if (iZza2 == i10) {
                                        i6 = i11;
                                        i4 = i3;
                                        i14 = iZza2;
                                        i23 = i13;
                                        i22 = i12;
                                    } else {
                                        zzdsVar = this;
                                        obj3 = obj;
                                        bArr2 = bArr;
                                        i21 = i11;
                                        i18 = i2;
                                        i19 = i3;
                                        zzayVar4 = zzayVar;
                                        i23 = i13;
                                        i22 = i12;
                                        unsafe2 = unsafe;
                                        i20 = -1;
                                    }
                                } else {
                                    i6 = i11;
                                    i4 = i3;
                                    i14 = i10;
                                    i23 = i13;
                                    i22 = i12;
                                }
                            }
                            if (i6 != i4) {
                            }
                            iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                            zzdsVar = this;
                            obj3 = obj;
                            bArr2 = bArr;
                            i18 = i2;
                            i19 = i4;
                            i21 = i6;
                            unsafe2 = unsafe;
                            i20 = -1;
                            zzayVar4 = zzayVar;
                        } else if (i26 == 2) {
                            zzcn zzcnVarZzi = (zzcn) unsafe2.getObject(obj3, j2);
                            if (!zzcnVarZzi.zzu()) {
                                int size = zzcnVarZzi.size();
                                zzcnVarZzi = zzcnVarZzi.zzi(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(obj3, j2, zzcnVarZzi);
                            }
                            zzcn zzcnVar = zzcnVarZzi;
                            zzef zzefVarZzad = zzdsVar.zzad(iZzai);
                            i21 = i29;
                            iZza2 = zza(zzefVarZzad, i21, bArr, i34, i2, zzcnVar, zzayVar);
                            i18 = i2;
                            i19 = i3;
                            i23 = i13;
                            i22 = i22;
                            i20 = -1;
                            zzayVar4 = zzayVar;
                        } else {
                            i12 = i22;
                            i10 = i34;
                            i11 = i29;
                        }
                    }
                } else {
                    i10 = iZza;
                    i11 = i9;
                    i12 = i22;
                    i13 = i23;
                }
                unsafe = unsafe2;
                i6 = i11;
                i4 = i3;
                i14 = i10;
                i23 = i13;
                i22 = i12;
                if (i6 != i4) {
                }
                iZza2 = zza(i6, bArr, i14, i2, obj, zzayVar);
                zzdsVar = this;
                obj3 = obj;
                bArr2 = bArr;
                i18 = i2;
                i19 = i4;
                i21 = i6;
                unsafe2 = unsafe;
                i20 = -1;
                zzayVar4 = zzayVar;
            } else {
                int i35 = i23;
                unsafe = unsafe2;
                i4 = i19;
                i5 = iZza2;
                i6 = i21;
                i7 = i35;
                i8 = -1;
            }
        }
        if (i7 != i8) {
            obj2 = obj;
            unsafe.putInt(obj2, i7, i22);
        } else {
            obj2 = obj;
        }
        int[] iArr2 = this.zzmt;
        if (iArr2 != null) {
            Object objZza2 = null;
            for (int i36 : iArr2) {
                zzex zzexVar = this.zzmx;
                int i37 = this.zzmi[i36];
                Object objZzo = zzfd.zzo(obj2, zzag(i36) & 1048575);
                if (objZzo != null && (zzckVarZzaf = zzaf(i36)) != null) {
                    objZza2 = zza(i36, i37, this.zzmz.zzg(objZzo), zzckVarZzaf, objZza2, zzexVar);
                }
                objZza2 = (zzey) objZza2;
            }
            if (objZza2 != null) {
                this.zzmx.zzf(obj2, objZza2);
            }
        }
        if (i4 == 0) {
            if (i5 != i2) {
                throw zzco.zzbo();
            }
        } else if (i5 > i2 || i6 != i4) {
            throw zzco.zzbo();
        }
        return i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016b A[EDGE_INSN: B:77:0x016b->B:72:0x016b BREAK  A[LOOP:0: B:22:0x0066->B:71:0x0167], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzds zza(Class cls, zzdm zzdmVar, zzdw zzdwVar, zzcy zzcyVar, zzex zzexVar, zzbu zzbuVar, zzdj zzdjVar) {
        int iZzcu;
        int i;
        int i2;
        int iZza;
        int iZza2;
        int iZzdg;
        int iZzcy;
        if (!(zzdmVar instanceof zzec)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzdmVar);
            throw null;
        }
        zzec zzecVar = (zzec) zzdmVar;
        boolean z = zzecVar.zzcf() == zzcg.zzg.zzkm;
        if (zzecVar.getFieldCount() == 0) {
            iZzcu = 0;
            i = 0;
            i2 = 0;
        } else {
            int iZzcp = zzecVar.zzcp();
            int iZzcq = zzecVar.zzcq();
            iZzcu = zzecVar.zzcu();
            i = iZzcp;
            i2 = iZzcq;
        }
        int[] iArr = new int[iZzcu << 2];
        Object[] objArr = new Object[iZzcu << 1];
        int[] iArr2 = zzecVar.zzcr() > 0 ? new int[zzecVar.zzcr()] : null;
        int[] iArr3 = zzecVar.zzcs() > 0 ? new int[zzecVar.zzcs()] : null;
        zzed zzedVarZzco = zzecVar.zzco();
        if (zzedVarZzco.next()) {
            int iZzcx = zzedVarZzco.zzcx();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (iZzcx >= zzecVar.zzcv() || i3 >= ((iZzcx - i) << 2)) {
                    if (zzedVarZzco.zzda()) {
                        iZza = (int) zzfd.zza(zzedVarZzco.zzdb());
                        iZza2 = (int) zzfd.zza(zzedVarZzco.zzdc());
                    } else {
                        iZza = (int) zzfd.zza(zzedVarZzco.zzdd());
                        if (zzedVarZzco.zzde()) {
                            iZza2 = (int) zzfd.zza(zzedVarZzco.zzdf());
                            iZzdg = zzedVarZzco.zzdg();
                            iArr[i3] = zzedVarZzco.zzcx();
                            int i6 = i3 + 1;
                            iArr[i6] = (!zzedVarZzco.zzdi() ? 536870912 : 0) | (!zzedVarZzco.zzdh() ? 268435456 : 0) | (zzedVarZzco.zzcy() << 20) | iZza;
                            iArr[i3 + 2] = iZza2 | (iZzdg << 20);
                            if (zzedVarZzco.zzdl() == null) {
                                int i7 = (i3 / 4) << 1;
                                objArr[i7] = zzedVarZzco.zzdl();
                                if (zzedVarZzco.zzdj() != null) {
                                    objArr[i7 + 1] = zzedVarZzco.zzdj();
                                } else if (zzedVarZzco.zzdk() != null) {
                                    objArr[i7 + 1] = zzedVarZzco.zzdk();
                                }
                            } else if (zzedVarZzco.zzdj() != null) {
                                objArr[((i3 / 4) << 1) + 1] = zzedVarZzco.zzdj();
                            } else if (zzedVarZzco.zzdk() != null) {
                                objArr[((i3 / 4) << 1) + 1] = zzedVarZzco.zzdk();
                            }
                            iZzcy = zzedVarZzco.zzcy();
                            if (iZzcy != zzcb.zziw.ordinal()) {
                                iArr2[i4] = i3;
                                i4++;
                            } else if (iZzcy >= 18 && iZzcy <= 49) {
                                iArr3[i5] = iArr[i6] & 1048575;
                                i5++;
                            }
                            if (zzedVarZzco.next()) {
                                break;
                            }
                            iZzcx = zzedVarZzco.zzcx();
                        } else {
                            iZza2 = 0;
                        }
                    }
                    iZzdg = 0;
                    iArr[i3] = zzedVarZzco.zzcx();
                    int i62 = i3 + 1;
                    iArr[i62] = (!zzedVarZzco.zzdi() ? 536870912 : 0) | (!zzedVarZzco.zzdh() ? 268435456 : 0) | (zzedVarZzco.zzcy() << 20) | iZza;
                    iArr[i3 + 2] = iZza2 | (iZzdg << 20);
                    if (zzedVarZzco.zzdl() == null) {
                    }
                    iZzcy = zzedVarZzco.zzcy();
                    if (iZzcy != zzcb.zziw.ordinal()) {
                    }
                    if (zzedVarZzco.next()) {
                    }
                } else {
                    for (int i8 = 0; i8 < 4; i8++) {
                        iArr[i3 + i8] = -1;
                    }
                }
                i3 += 4;
            }
        }
        return new zzds(iArr, objArr, i, i2, zzecVar.zzcv(), zzecVar.zzch(), z, false, zzecVar.zzct(), iArr2, iArr3, zzdwVar, zzcyVar, zzexVar, zzbuVar, zzdjVar);
    }

    private final Object zza(int i, int i2, Map map, zzck zzckVar, Object obj, zzex zzexVar) {
        this.zzmz.zzl(zzae(i));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (zzckVar.zzb(((Integer) entry.getValue()).intValue()) == null) {
                if (obj == null) {
                    obj = zzexVar.zzdz();
                }
                zzbg zzbgVarZzk = zzbb.zzk(zzdg.zza(null, entry.getKey(), entry.getValue()));
                try {
                    zzdg.zza(zzbgVarZzk.zzae(), null, entry.getKey(), entry.getValue());
                    zzexVar.zza(obj, i2, zzbgVarZzk.zzad());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj;
    }

    private static void zza(int i, Object obj, zzfr zzfrVar) {
        if (obj instanceof String) {
            zzfrVar.zza(i, (String) obj);
        } else {
            zzfrVar.zza(i, (zzbb) obj);
        }
    }

    private static void zza(zzex zzexVar, Object obj, zzfr zzfrVar) {
        zzexVar.zza(zzexVar.zzq(obj), zzfrVar);
    }

    private final void zza(zzfr zzfrVar, int i, Object obj, int i2) {
        if (obj != null) {
            this.zzmz.zzl(zzae(i2));
            zzfrVar.zza(i, (zzdh) null, this.zzmz.zzh(obj));
        }
    }

    private final void zza(Object obj, Object obj2, int i) {
        long jZzag = zzag(i) & 1048575;
        if (zza(obj2, i)) {
            Object objZzo = zzfd.zzo(obj, jZzag);
            Object objZzo2 = zzfd.zzo(obj2, jZzag);
            if (objZzo != null && objZzo2 != null) {
                zzfd.zza(obj, jZzag, zzci.zza(objZzo, objZzo2));
                zzb(obj, i);
            } else if (objZzo2 != null) {
                zzfd.zza(obj, jZzag, objZzo2);
                zzb(obj, i);
            }
        }
    }

    private final boolean zza(Object obj, int i) {
        if (!this.zzmq) {
            int iZzah = zzah(i);
            return (zzfd.zzj(obj, (long) (iZzah & 1048575)) & (1 << (iZzah >>> 20))) != 0;
        }
        int iZzag = zzag(i);
        long j = iZzag & 1048575;
        switch ((iZzag & 267386880) >>> 20) {
            case 0:
                return zzfd.zzn(obj, j) != 0.0d;
            case 1:
                return zzfd.zzm(obj, j) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return zzfd.zzk(obj, j) != 0;
            case 3:
                return zzfd.zzk(obj, j) != 0;
            case 4:
                return zzfd.zzj(obj, j) != 0;
            case 5:
                return zzfd.zzk(obj, j) != 0;
            case 6:
                return zzfd.zzj(obj, j) != 0;
            case 7:
                return zzfd.zzl(obj, j);
            case 8:
                Object objZzo = zzfd.zzo(obj, j);
                if (objZzo instanceof String) {
                    return !((String) objZzo).isEmpty();
                }
                if (objZzo instanceof zzbb) {
                    return !zzbb.zzfi.equals(objZzo);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzfd.zzo(obj, j) != null;
            case 10:
                return !zzbb.zzfi.equals(zzfd.zzo(obj, j));
            case 11:
                return zzfd.zzj(obj, j) != 0;
            case 12:
                return zzfd.zzj(obj, j) != 0;
            case 13:
                return zzfd.zzj(obj, j) != 0;
            case 14:
                return zzfd.zzk(obj, j) != 0;
            case 15:
                return zzfd.zzj(obj, j) != 0;
            case 16:
                return zzfd.zzk(obj, j) != 0;
            case 17:
                return zzfd.zzo(obj, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(Object obj, int i, int i2) {
        return zzfd.zzj(obj, (long) (zzah(i2) & 1048575)) == i;
    }

    private final boolean zza(Object obj, int i, int i2, int i3) {
        return this.zzmq ? zza(obj, i) : (i2 & i3) != 0;
    }

    private static boolean zza(Object obj, int i, zzef zzefVar) {
        return zzefVar.zzo(zzfd.zzo(obj, i & 1048575));
    }

    private final zzef zzad(int i) {
        int i2 = (i / 4) << 1;
        zzef zzefVar = (zzef) this.zzmj[i2];
        if (zzefVar != null) {
            return zzefVar;
        }
        zzef zzefVarZze = zzea.zzcm().zze((Class) this.zzmj[i2 + 1]);
        this.zzmj[i2] = zzefVarZze;
        return zzefVarZze;
    }

    private final Object zzae(int i) {
        return this.zzmj[(i / 4) << 1];
    }

    private final zzck zzaf(int i) {
        return (zzck) this.zzmj[((i / 4) << 1) + 1];
    }

    private final int zzag(int i) {
        return this.zzmi[i + 1];
    }

    private final int zzah(int i) {
        return this.zzmi[i + 2];
    }

    private final int zzai(int i) {
        int i2 = this.zzmk;
        if (i >= i2) {
            int i3 = this.zzmm;
            if (i < i3) {
                int i4 = (i - i2) << 2;
                if (this.zzmi[i4] == i) {
                    return i4;
                }
                return -1;
            }
            if (i <= this.zzml) {
                int i5 = i3 - i2;
                int length = (this.zzmi.length / 4) - 1;
                while (i5 <= length) {
                    int i6 = (length + i5) >>> 1;
                    int i7 = i6 << 2;
                    int i8 = this.zzmi[i7];
                    if (i == i8) {
                        return i7;
                    }
                    if (i < i8) {
                        length = i6 - 1;
                    } else {
                        i5 = i6 + 1;
                    }
                }
            }
        }
        return -1;
    }

    private final void zzb(Object obj, int i) {
        if (this.zzmq) {
            return;
        }
        int iZzah = zzah(i);
        long j = iZzah & 1048575;
        zzfd.zza(obj, j, zzfd.zzj(obj, j) | (1 << (iZzah >>> 20)));
    }

    private final void zzb(Object obj, int i, int i2) {
        zzfd.zza(obj, zzah(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzb(Object obj, zzfr zzfrVar) {
        Iterator it;
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
        int i7;
        List list;
        boolean z6;
        if (this.zzmo) {
            zzby zzbyVarZza = this.zzmy.zza(obj);
            if (zzbyVarZza.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzbyVarZza.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int length = this.zzmi.length;
        Unsafe unsafe = zzmh;
        int i8 = -1;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10 += 4) {
            int iZzag = zzag(i10);
            int[] iArr = this.zzmi;
            int i11 = iArr[i10];
            int i12 = (267386880 & iZzag) >>> 20;
            if (this.zzmq || i12 > 17) {
                i = 0;
            } else {
                int i13 = iArr[i10 + 2];
                int i14 = i13 & 1048575;
                if (i14 != i8) {
                    i9 = unsafe.getInt(obj, i14);
                    i8 = i14;
                }
                i = 1 << (i13 >>> 20);
            }
            while (entry != null && this.zzmy.zza(entry) <= i11) {
                this.zzmy.zza(zzfrVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzag & 1048575;
            switch (i12) {
                case 0:
                    if ((i & i9) != 0) {
                        zzfrVar.zza(i11, zzfd.zzn(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i & i9) != 0) {
                        zzfrVar.zza(i11, zzfd.zzm(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i & i9) != 0) {
                        zzfrVar.zzi(i11, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i & i9) != 0) {
                        zzfrVar.zza(i11, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i & i9) != 0) {
                        zzfrVar.zzc(i11, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i & i9) != 0) {
                        zzfrVar.zzc(i11, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i & i9) != 0) {
                        zzfrVar.zzf(i11, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i & i9) != 0) {
                        zzfrVar.zzb(i11, zzfd.zzl(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i & i9) != 0) {
                        zza(i11, unsafe.getObject(obj, j), zzfrVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i & i9) != 0) {
                        zzfrVar.zza(i11, unsafe.getObject(obj, j), zzad(i10));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i & i9) != 0) {
                        zzfrVar.zza(i11, (zzbb) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i & i9) != 0) {
                        zzfrVar.zzd(i11, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i & i9) != 0) {
                        zzfrVar.zzn(i11, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i & i9) != 0) {
                        zzfrVar.zzm(i11, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i & i9) != 0) {
                        zzfrVar.zzj(i11, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i & i9) != 0) {
                        zzfrVar.zze(i11, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i & i9) != 0) {
                        zzfrVar.zzb(i11, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i & i9) != 0) {
                        zzfrVar.zzb(i11, unsafe.getObject(obj, j), zzad(i10));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzeh.zza(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 19:
                    zzeh.zzb(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 20:
                    zzeh.zzc(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 21:
                    zzeh.zzd(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 22:
                    zzeh.zzh(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 23:
                    zzeh.zzf(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 24:
                    zzeh.zzk(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 25:
                    zzeh.zzn(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 26:
                    zzeh.zza(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar);
                    break;
                case 27:
                    zzeh.zza(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, zzad(i10));
                    break;
                case 28:
                    zzeh.zzb(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar);
                    break;
                case 29:
                    z = false;
                    i2 = this.zzmi[i10];
                    zzeh.zzi(i2, (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 30:
                    z2 = false;
                    i3 = this.zzmi[i10];
                    zzeh.zzm(i3, (List) unsafe.getObject(obj, j), zzfrVar, z2);
                    break;
                case 31:
                    z3 = false;
                    i4 = this.zzmi[i10];
                    zzeh.zzl(i4, (List) unsafe.getObject(obj, j), zzfrVar, z3);
                    break;
                case 32:
                    z4 = false;
                    i5 = this.zzmi[i10];
                    zzeh.zzg(i5, (List) unsafe.getObject(obj, j), zzfrVar, z4);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    z5 = false;
                    i6 = this.zzmi[i10];
                    zzeh.zzj(i6, (List) unsafe.getObject(obj, j), zzfrVar, z5);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i7 = this.zzmi[i10];
                    list = (List) unsafe.getObject(obj, j);
                    z6 = false;
                    zzeh.zze(i7, list, zzfrVar, z6);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzeh.zza(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzeh.zzb(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzeh.zzc(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzeh.zzd(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzeh.zzh(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzeh.zzf(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzeh.zzk(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzeh.zzn(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    z = true;
                    i2 = this.zzmi[i10];
                    zzeh.zzi(i2, (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    z2 = true;
                    i3 = this.zzmi[i10];
                    zzeh.zzm(i3, (List) unsafe.getObject(obj, j), zzfrVar, z2);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    z3 = true;
                    i4 = this.zzmi[i10];
                    zzeh.zzl(i4, (List) unsafe.getObject(obj, j), zzfrVar, z3);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    z4 = true;
                    i5 = this.zzmi[i10];
                    zzeh.zzg(i5, (List) unsafe.getObject(obj, j), zzfrVar, z4);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    z5 = true;
                    i6 = this.zzmi[i10];
                    zzeh.zzj(i6, (List) unsafe.getObject(obj, j), zzfrVar, z5);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    i7 = this.zzmi[i10];
                    list = (List) unsafe.getObject(obj, j);
                    z6 = true;
                    zzeh.zze(i7, list, zzfrVar, z6);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzeh.zzb(this.zzmi[i10], (List) unsafe.getObject(obj, j), zzfrVar, zzad(i10));
                    break;
                case 50:
                    zza(zzfrVar, i11, unsafe.getObject(obj, j), i10);
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zza(i11, zze(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zza(i11, zzf(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzi(i11, zzh(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zza(i11, zzh(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzc(i11, zzg(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzc(i11, zzh(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzf(i11, zzg(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzb(i11, zzi(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zza(obj, i11, i10)) {
                        zza(i11, unsafe.getObject(obj, j), zzfrVar);
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zza(i11, unsafe.getObject(obj, j), zzad(i10));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zza(i11, (zzbb) unsafe.getObject(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzd(i11, zzg(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzn(i11, zzg(obj, j));
                    }
                    break;
                case 64:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzm(i11, zzg(obj, j));
                    }
                    break;
                case 65:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzj(i11, zzh(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zze(i11, zzg(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzb(i11, zzh(obj, j));
                    }
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (zza(obj, i11, i10)) {
                        zzfrVar.zzb(i11, unsafe.getObject(obj, j), zzad(i10));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzmy.zza(zzfrVar, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzmx, obj, zzfrVar);
    }

    private final void zzb(Object obj, Object obj2, int i) {
        int iZzag = zzag(i);
        int i2 = this.zzmi[i];
        long j = iZzag & 1048575;
        if (zza(obj2, i2, i)) {
            Object objZzo = zzfd.zzo(obj, j);
            Object objZzo2 = zzfd.zzo(obj2, j);
            if (objZzo != null && objZzo2 != null) {
                zzfd.zza(obj, j, zzci.zza(objZzo, objZzo2));
                zzb(obj, i2, i);
            } else if (objZzo2 != null) {
                zzfd.zza(obj, j, objZzo2);
                zzb(obj, i2, i);
            }
        }
    }

    private final boolean zzc(Object obj, Object obj2, int i) {
        return zza(obj, i) == zza(obj2, i);
    }

    private static List zzd(Object obj, long j) {
        return (List) zzfd.zzo(obj, j);
    }

    private static double zze(Object obj, long j) {
        return ((Double) zzfd.zzo(obj, j)).doubleValue();
    }

    private static float zzf(Object obj, long j) {
        return ((Float) zzfd.zzo(obj, j)).floatValue();
    }

    private static int zzg(Object obj, long j) {
        return ((Integer) zzfd.zzo(obj, j)).intValue();
    }

    private static long zzh(Object obj, long j) {
        return ((Long) zzfd.zzo(obj, j)).longValue();
    }

    private static boolean zzi(Object obj, long j) {
        return ((Boolean) zzfd.zzo(obj, j)).booleanValue();
    }

    private static zzey zzn(Object obj) {
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVar = zzcgVar.zzjp;
        if (zzeyVar != zzey.zzea()) {
            return zzeyVar;
        }
        zzey zzeyVarZzeb = zzey.zzeb();
        zzcgVar.zzjp = zzeyVarZzeb;
        return zzeyVarZzeb;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj, Object obj2) {
        int length = this.zzmi.length;
        int i = 0;
        while (true) {
            boolean zZzd = true;
            if (i >= length) {
                if (!this.zzmx.zzq(obj).equals(this.zzmx.zzq(obj2))) {
                    return false;
                }
                if (this.zzmo) {
                    return this.zzmy.zza(obj).equals(this.zzmy.zza(obj2));
                }
                return true;
            }
            int iZzag = zzag(i);
            long j = iZzag & 1048575;
            switch ((iZzag & 267386880) >>> 20) {
                case 0:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                        zZzd = false;
                        break;
                    }
                    break;
                case 1:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 2:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 3:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 4:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 5:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 6:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 7:
                    if (!zzc(obj, obj2, i) || zzfd.zzl(obj, j) != zzfd.zzl(obj2, j)) {
                    }
                    break;
                case 8:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 9:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 10:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 11:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 12:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 13:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 14:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 15:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 16:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 17:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
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
                    zZzd = zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j));
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
                    long jZzah = zzah(i) & 1048575;
                    if (zzfd.zzj(obj, jZzah) != zzfd.zzj(obj2, jZzah) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
            }
            if (!zZzd) {
                return false;
            }
            i += 4;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f4 A[PHI: r3
      0x00f4: PHI (r3v9 java.lang.Object) = (r3v6 java.lang.Object), (r3v10 java.lang.Object) binds: [B:74:0x0110, B:68:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int hashCode(Object obj) {
        int i;
        double dZzn;
        float fZzm;
        boolean zZzl;
        Object objZzo;
        int iZzj;
        long jZzk;
        Object objZzo2;
        int length = this.zzmi.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 4) {
            int iZzag = zzag(i3);
            int i4 = this.zzmi[i3];
            long j = 1048575 & iZzag;
            int iHashCode = 37;
            switch ((iZzag & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    dZzn = zzfd.zzn(obj, j);
                    jZzk = Double.doubleToLongBits(dZzn);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 1:
                    i = i2 * 53;
                    fZzm = zzfd.zzm(obj, j);
                    iZzj = Float.floatToIntBits(fZzm);
                    i2 = i + iZzj;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i2 * 53;
                    jZzk = zzfd.zzk(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i = i2 * 53;
                    iZzj = zzfd.zzj(obj, j);
                    i2 = i + iZzj;
                    break;
                case 7:
                    i = i2 * 53;
                    zZzl = zzfd.zzl(obj, j);
                    iZzj = zzci.zzc(zZzl);
                    i2 = i + iZzj;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzj = ((String) zzfd.zzo(obj, j)).hashCode();
                    i2 = i + iZzj;
                    break;
                case 9:
                    objZzo = zzfd.zzo(obj, j);
                    if (objZzo != null) {
                        iHashCode = objZzo.hashCode();
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
                    objZzo2 = zzfd.zzo(obj, j);
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
                case 17:
                    objZzo = zzfd.zzo(obj, j);
                    if (objZzo != null) {
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        dZzn = zze(obj, j);
                        jZzk = Double.doubleToLongBits(dZzn);
                        iZzj = zzci.zzl(jZzk);
                        i2 = i + iZzj;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        fZzm = zzf(obj, j);
                        iZzj = Float.floatToIntBits(fZzm);
                        i2 = i + iZzj;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        zZzl = zzi(obj, j);
                        iZzj = zzci.zzc(zZzl);
                        i2 = i + iZzj;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = ((String) zzfd.zzo(obj, j)).hashCode();
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    objZzo2 = zzfd.zzo(obj, j);
                    i = i2 * 53;
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    objZzo2 = zzfd.zzo(obj, j);
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 64:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 65:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i4, i3)) {
                        break;
                    }
                    objZzo2 = zzfd.zzo(obj, j);
                    i = i2 * 53;
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzmx.zzq(obj).hashCode();
        return this.zzmo ? (iHashCode2 * 53) + this.zzmy.zza(obj).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final Object newInstance() {
        return this.zzmv.newInstance(this.zzmn);
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, zzfr zzfrVar) {
        Iterator it;
        Map.Entry entry;
        double dZzn;
        float fZzm;
        long jZzk;
        long jZzk2;
        int iZzj;
        long jZzk3;
        int iZzj2;
        boolean zZzl;
        int iZzj3;
        int iZzj4;
        int iZzj5;
        long jZzk4;
        int iZzj6;
        long jZzk5;
        Iterator itDescendingIterator;
        Map.Entry entry2;
        double dZzn2;
        float fZzm2;
        long jZzk6;
        long jZzk7;
        int iZzj7;
        long jZzk8;
        int iZzj8;
        boolean zZzl2;
        int iZzj9;
        int iZzj10;
        int iZzj11;
        long jZzk9;
        int iZzj12;
        long jZzk10;
        if (zzfrVar.zzaj() == zzcg.zzg.zzkp) {
            zza(this.zzmx, obj, zzfrVar);
            if (this.zzmo) {
                zzby zzbyVarZza = this.zzmy.zza(obj);
                if (zzbyVarZza.isEmpty()) {
                    itDescendingIterator = null;
                    entry2 = null;
                } else {
                    itDescendingIterator = zzbyVarZza.descendingIterator();
                    entry2 = (Map.Entry) itDescendingIterator.next();
                }
            }
            for (int length = this.zzmi.length - 4; length >= 0; length -= 4) {
                int iZzag = zzag(length);
                int i = this.zzmi[length];
                while (entry2 != null && this.zzmy.zza(entry2) > i) {
                    this.zzmy.zza(zzfrVar, entry2);
                    entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
                }
                switch ((iZzag & 267386880) >>> 20) {
                    case 0:
                        if (zza(obj, length)) {
                            dZzn2 = zzfd.zzn(obj, iZzag & 1048575);
                            zzfrVar.zza(i, dZzn2);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza(obj, length)) {
                            fZzm2 = zzfd.zzm(obj, iZzag & 1048575);
                            zzfrVar.zza(i, fZzm2);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza(obj, length)) {
                            jZzk6 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzi(i, jZzk6);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza(obj, length)) {
                            jZzk7 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zza(i, jZzk7);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza(obj, length)) {
                            iZzj7 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, iZzj7);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza(obj, length)) {
                            jZzk8 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, jZzk8);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza(obj, length)) {
                            iZzj8 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzf(i, iZzj8);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza(obj, length)) {
                            zZzl2 = zzfd.zzl(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, zZzl2);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza(obj, length)) {
                            zza(i, zzfd.zzo(obj, iZzag & 1048575), zzfrVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zza(obj, length)) {
                            zzfrVar.zza(i, zzfd.zzo(obj, iZzag & 1048575), zzad(length));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zza(obj, length)) {
                            zzfrVar.zza(i, (zzbb) zzfd.zzo(obj, iZzag & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza(obj, length)) {
                            iZzj9 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzd(i, iZzj9);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza(obj, length)) {
                            iZzj10 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzn(i, iZzj10);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza(obj, length)) {
                            iZzj11 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzm(i, iZzj11);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza(obj, length)) {
                            jZzk9 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzj(i, jZzk9);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza(obj, length)) {
                            iZzj12 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zze(i, iZzj12);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza(obj, length)) {
                            jZzk10 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, jZzk10);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zza(obj, length)) {
                            zzfrVar.zzb(i, zzfd.zzo(obj, iZzag & 1048575), zzad(length));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 19:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 20:
                        zzeh.zzc(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 21:
                        zzeh.zzd(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 22:
                        zzeh.zzh(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 23:
                        zzeh.zzf(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 24:
                        zzeh.zzk(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 25:
                        zzeh.zzn(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 26:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar);
                        break;
                    case 27:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, zzad(length));
                        break;
                    case 28:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar);
                        break;
                    case 29:
                        zzeh.zzi(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 30:
                        zzeh.zzm(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 31:
                        zzeh.zzl(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 32:
                        zzeh.zzg(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzeh.zzj(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzeh.zze(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzeh.zzc(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzeh.zzd(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzeh.zzh(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzeh.zzf(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzeh.zzk(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzeh.zzn(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzeh.zzi(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzeh.zzm(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzeh.zzl(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzeh.zzg(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzeh.zzj(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzeh.zze(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, zzad(length));
                        break;
                    case 50:
                        zza(zzfrVar, i, zzfd.zzo(obj, iZzag & 1048575), length);
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zza(obj, i, length)) {
                            dZzn2 = zze(obj, iZzag & 1048575);
                            zzfrVar.zza(i, dZzn2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zza(obj, i, length)) {
                            fZzm2 = zzf(obj, iZzag & 1048575);
                            zzfrVar.zza(i, fZzm2);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zza(obj, i, length)) {
                            jZzk6 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzi(i, jZzk6);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zza(obj, i, length)) {
                            jZzk7 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zza(i, jZzk7);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zza(obj, i, length)) {
                            iZzj7 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, iZzj7);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zza(obj, i, length)) {
                            jZzk8 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, jZzk8);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zza(obj, i, length)) {
                            iZzj8 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzf(i, iZzj8);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zza(obj, i, length)) {
                            zZzl2 = zzi(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, zZzl2);
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
                            iZzj9 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzd(i, iZzj9);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zza(obj, i, length)) {
                            iZzj10 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzn(i, iZzj10);
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zza(obj, i, length)) {
                            iZzj11 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzm(i, iZzj11);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zza(obj, i, length)) {
                            jZzk9 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzj(i, jZzk9);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zza(obj, i, length)) {
                            iZzj12 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zze(i, iZzj12);
                            break;
                        } else {
                            break;
                        }
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zza(obj, i, length)) {
                            jZzk10 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, jZzk10);
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
                this.zzmy.zza(zzfrVar, entry2);
                entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            return;
        }
        if (!this.zzmq) {
            zzb(obj, zzfrVar);
            return;
        }
        if (this.zzmo) {
            zzby zzbyVarZza2 = this.zzmy.zza(obj);
            if (zzbyVarZza2.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzbyVarZza2.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int length2 = this.zzmi.length;
        for (int i2 = 0; i2 < length2; i2 += 4) {
            int iZzag2 = zzag(i2);
            int i3 = this.zzmi[i2];
            while (entry != null && this.zzmy.zza(entry) <= i3) {
                this.zzmy.zza(zzfrVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            switch ((iZzag2 & 267386880) >>> 20) {
                case 0:
                    if (zza(obj, i2)) {
                        dZzn = zzfd.zzn(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, dZzn);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza(obj, i2)) {
                        fZzm = zzfd.zzm(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, fZzm);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza(obj, i2)) {
                        jZzk = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzi(i3, jZzk);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza(obj, i2)) {
                        jZzk2 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, jZzk2);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza(obj, i2)) {
                        iZzj = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, iZzj);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza(obj, i2)) {
                        jZzk3 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, jZzk3);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza(obj, i2)) {
                        iZzj2 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzf(i3, iZzj2);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza(obj, i2)) {
                        zZzl = zzfd.zzl(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, zZzl);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza(obj, i2)) {
                        zza(i3, zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (zza(obj, i2)) {
                        zzfrVar.zza(i3, zzfd.zzo(obj, iZzag2 & 1048575), zzad(i2));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zza(obj, i2)) {
                        zzfrVar.zza(i3, (zzbb) zzfd.zzo(obj, iZzag2 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza(obj, i2)) {
                        iZzj3 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzd(i3, iZzj3);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza(obj, i2)) {
                        iZzj4 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzn(i3, iZzj4);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza(obj, i2)) {
                        iZzj5 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzm(i3, iZzj5);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza(obj, i2)) {
                        jZzk4 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzj(i3, jZzk4);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza(obj, i2)) {
                        iZzj6 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zze(i3, iZzj6);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza(obj, i2)) {
                        jZzk5 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, jZzk5);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zza(obj, i2)) {
                        zzfrVar.zzb(i3, zzfd.zzo(obj, iZzag2 & 1048575), zzad(i2));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 19:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 20:
                    zzeh.zzc(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 21:
                    zzeh.zzd(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 22:
                    zzeh.zzh(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 23:
                    zzeh.zzf(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 24:
                    zzeh.zzk(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 25:
                    zzeh.zzn(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 26:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar);
                    break;
                case 27:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, zzad(i2));
                    break;
                case 28:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar);
                    break;
                case 29:
                    zzeh.zzi(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 30:
                    zzeh.zzm(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 31:
                    zzeh.zzl(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 32:
                    zzeh.zzg(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzeh.zzj(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzeh.zze(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzeh.zzc(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzeh.zzd(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzeh.zzh(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzeh.zzf(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzeh.zzk(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzeh.zzn(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzeh.zzi(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzeh.zzm(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzeh.zzl(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzeh.zzg(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzeh.zzj(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzeh.zze(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, zzad(i2));
                    break;
                case 50:
                    zza(zzfrVar, i3, zzfd.zzo(obj, iZzag2 & 1048575), i2);
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (zza(obj, i3, i2)) {
                        dZzn = zze(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, dZzn);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (zza(obj, i3, i2)) {
                        fZzm = zzf(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, fZzm);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (zza(obj, i3, i2)) {
                        jZzk = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzi(i3, jZzk);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (zza(obj, i3, i2)) {
                        jZzk2 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, jZzk2);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (zza(obj, i3, i2)) {
                        iZzj = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, iZzj);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (zza(obj, i3, i2)) {
                        jZzk3 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, jZzk3);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (zza(obj, i3, i2)) {
                        iZzj2 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzf(i3, iZzj2);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (zza(obj, i3, i2)) {
                        zZzl = zzi(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, zZzl);
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
                        iZzj3 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzd(i3, iZzj3);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (zza(obj, i3, i2)) {
                        iZzj4 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzn(i3, iZzj4);
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza(obj, i3, i2)) {
                        iZzj5 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzm(i3, iZzj5);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza(obj, i3, i2)) {
                        jZzk4 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzj(i3, jZzk4);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (zza(obj, i3, i2)) {
                        iZzj6 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zze(i3, iZzj6);
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zza(obj, i3, i2)) {
                        jZzk5 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, jZzk5);
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
            this.zzmy.zza(zzfrVar, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzmx, obj, zzfrVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0163, code lost:
    
        if (r0 == r15) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0165, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0196, code lost:
    
        if (r0 == r15) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01af, code lost:
    
        if (r0 == r15) goto L74;
     */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, byte[] bArr, int i, int i2, zzay zzayVar) throws zzco {
        int i3;
        int iZza;
        Unsafe unsafe;
        int i4;
        int iZzb;
        long jZza;
        int iZzm;
        zzds zzdsVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i5 = i2;
        zzay zzayVar2 = zzayVar;
        if (!zzdsVar.zzmq) {
            zza(obj, bArr, i, i2, 0, zzayVar);
            return;
        }
        Unsafe unsafe2 = zzmh;
        int iZza2 = i;
        while (iZza2 < i5) {
            int i6 = iZza2 + 1;
            byte b = bArr2[iZza2];
            if (b < 0) {
                iZza = zzax.zza(b, bArr2, i6, zzayVar2);
                i3 = zzayVar2.zzfd;
            } else {
                i3 = b;
                iZza = i6;
            }
            int i7 = i3 >>> 3;
            int i8 = i3 & 7;
            int iZzai = zzdsVar.zzai(i7);
            if (iZzai >= 0) {
                int i9 = zzdsVar.zzmi[iZzai + 1];
                int i10 = (267386880 & i9) >>> 20;
                long j = 1048575 & i9;
                if (i10 <= 17) {
                    switch (i10) {
                        case 0:
                            if (i8 != 1) {
                                break;
                            } else {
                                zzfd.zza(obj2, j, zzax.zze(bArr2, iZza));
                                iZza2 = iZza + 8;
                                break;
                            }
                        case 1:
                            if (i8 != 5) {
                                break;
                            } else {
                                zzfd.zza(obj2, j, zzax.zzf(bArr2, iZza));
                                iZza2 = iZza + 4;
                                break;
                            }
                        case 2:
                        case 3:
                            if (i8 != 0) {
                                break;
                            } else {
                                iZzb = zzax.zzb(bArr2, iZza, zzayVar2);
                                jZza = zzayVar2.zzfe;
                                unsafe2.putLong(obj, j, jZza);
                                iZza2 = iZzb;
                                break;
                            }
                        case 4:
                        case 11:
                            if (i8 != 0) {
                                break;
                            } else {
                                iZza2 = zzax.zza(bArr2, iZza, zzayVar2);
                                iZzm = zzayVar2.zzfd;
                                unsafe2.putInt(obj2, j, iZzm);
                                break;
                            }
                        case 5:
                        case 14:
                            if (i8 != 1) {
                                break;
                            } else {
                                unsafe2.putLong(obj, j, zzax.zzd(bArr2, iZza));
                                iZza2 = iZza + 8;
                                break;
                            }
                        case 6:
                        case 13:
                            if (i8 != 5) {
                                break;
                            } else {
                                unsafe2.putInt(obj2, j, zzax.zzc(bArr2, iZza));
                                iZza2 = iZza + 4;
                                break;
                            }
                        case 7:
                            if (i8 != 0) {
                                break;
                            } else {
                                iZza2 = zzax.zzb(bArr2, iZza, zzayVar2);
                                zzfd.zza(obj2, j, zzayVar2.zzfe != 0);
                                break;
                            }
                        case 8:
                            if (i8 != 2) {
                                break;
                            } else {
                                iZza2 = (536870912 & i9) == 0 ? zzax.zzc(bArr2, iZza, zzayVar2) : zzax.zzd(bArr2, iZza, zzayVar2);
                                unsafe2.putObject(obj2, j, objZza);
                                break;
                            }
                        case 9:
                            if (i8 != 2) {
                                break;
                            } else {
                                iZza2 = zza(zzdsVar.zzad(iZzai), bArr2, iZza, i5, zzayVar2);
                                Object object = unsafe2.getObject(obj2, j);
                                Object objZza = object == null ? zzayVar2.zzff : zzci.zza(object, zzayVar2.zzff);
                                unsafe2.putObject(obj2, j, objZza);
                                break;
                            }
                        case 10:
                            if (i8 != 2) {
                                break;
                            } else {
                                iZza2 = zzax.zze(bArr2, iZza, zzayVar2);
                                unsafe2.putObject(obj2, j, objZza);
                                break;
                            }
                        case 12:
                            if (i8 != 0) {
                                break;
                            } else {
                                iZza2 = zzax.zza(bArr2, iZza, zzayVar2);
                                iZzm = zzayVar2.zzfd;
                                unsafe2.putInt(obj2, j, iZzm);
                                break;
                            }
                        case 15:
                            if (i8 != 0) {
                                break;
                            } else {
                                iZza2 = zzax.zza(bArr2, iZza, zzayVar2);
                                iZzm = zzbk.zzm(zzayVar2.zzfd);
                                unsafe2.putInt(obj2, j, iZzm);
                                break;
                            }
                        case 16:
                            if (i8 != 0) {
                                break;
                            } else {
                                iZzb = zzax.zzb(bArr2, iZza, zzayVar2);
                                jZza = zzbk.zza(zzayVar2.zzfe);
                                unsafe2.putLong(obj, j, jZza);
                                iZza2 = iZzb;
                                break;
                            }
                    }
                } else if (i10 != 27) {
                    if (i10 <= 49) {
                        unsafe = unsafe2;
                        int i11 = iZza;
                        iZza2 = zza(obj, bArr, iZza, i2, i3, i7, i8, iZzai, i9, i10, j, zzayVar);
                    } else {
                        unsafe = unsafe2;
                        i4 = iZza;
                        if (i10 != 50) {
                            iZza2 = zza(obj, bArr, i4, i2, i3, i7, i8, i9, i10, j, iZzai, zzayVar);
                        } else if (i8 == 2) {
                            iZza2 = zza(obj, bArr, i4, i2, iZzai, i7, j, zzayVar);
                        }
                    }
                    zzdsVar = this;
                    obj2 = obj;
                    bArr2 = bArr;
                    i5 = i2;
                    zzayVar2 = zzayVar;
                    unsafe2 = unsafe;
                } else if (i8 == 2) {
                    zzcn zzcnVarZzi = (zzcn) unsafe2.getObject(obj2, j);
                    if (!zzcnVarZzi.zzu()) {
                        int size = zzcnVarZzi.size();
                        zzcnVarZzi = zzcnVarZzi.zzi(size == 0 ? 10 : size << 1);
                        unsafe2.putObject(obj2, j, zzcnVarZzi);
                    }
                    iZza2 = zza(zzdsVar.zzad(iZzai), i3, bArr, iZza, i2, zzcnVarZzi, zzayVar);
                }
                int i12 = i4;
                iZza2 = zza(i3, bArr, i12, i2, obj, zzayVar);
                zzdsVar = this;
                obj2 = obj;
                bArr2 = bArr;
                i5 = i2;
                zzayVar2 = zzayVar;
                unsafe2 = unsafe;
            }
            unsafe = unsafe2;
            i4 = iZza;
            int i122 = i4;
            iZza2 = zza(i3, bArr, i122, i2, obj, zzayVar);
            zzdsVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i5 = i2;
            zzayVar2 = zzayVar;
            unsafe2 = unsafe;
        }
        if (iZza2 != i5) {
            throw zzco.zzbo();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(Object obj) {
        int[] iArr = this.zzmt;
        if (iArr != null) {
            for (int i : iArr) {
                long jZzag = zzag(i) & 1048575;
                Object objZzo = zzfd.zzo(obj, jZzag);
                if (objZzo != null) {
                    zzfd.zza(obj, jZzag, this.zzmz.zzj(objZzo));
                }
            }
        }
        int[] iArr2 = this.zzmu;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.zzmw.zza(obj, i2);
            }
        }
        this.zzmx.zzc(obj);
        if (this.zzmo) {
            this.zzmy.zzc(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzc(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzmi.length; i += 4) {
            int iZzag = zzag(i);
            long j = 1048575 & iZzag;
            int i2 = this.zzmi[i];
            switch ((iZzag & 267386880) >>> 20) {
                case 0:
                    if (zza(obj2, i)) {
                        zzfd.zza(obj, j, zzfd.zzn(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza(obj2, i)) {
                        zzfd.zza(obj, j, zzfd.zzm(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 3:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 4:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 5:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 6:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 7:
                    if (zza(obj2, i)) {
                        zzfd.zza(obj, j, zzfd.zzl(obj2, j));
                        zzb(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzo(obj2, j));
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
                    zzfd.zza(obj, j, zzfd.zzo(obj2, j));
                    zzb(obj, i);
                    break;
                case 11:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 12:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 13:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 14:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 15:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 16:
                    if (!zza(obj2, i)) {
                        break;
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
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
                    this.zzmw.zza(obj, obj2, j);
                    break;
                case 50:
                    zzeh.zza(this.zzmz, obj, obj2, j);
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
                        zzfd.zza(obj, j, zzfd.zzo(obj2, j));
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
        if (this.zzmq) {
            return;
        }
        zzeh.zza(this.zzmx, obj, obj2);
        if (this.zzmo) {
            zzeh.zza(this.zzmy, obj, obj2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x041f, code lost:
    
        if (zza(r20, r15, r4) != false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0421, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzc(r15, (com.google.android.gms.internal.clearcut.zzdo) r2.getObject(r20, r10), zzad(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x045a, code lost:
    
        if (zza(r20, r15, r4) != false) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x045c, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzh(r15, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0467, code lost:
    
        if (zza(r20, r15, r4) != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0469, code lost:
    
        r9 = com.google.android.gms.internal.clearcut.zzbn.zzk(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0492, code lost:
    
        if (zza(r20, r15, r4) != false) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0494, code lost:
    
        r6 = r2.getObject(r20, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x04a3, code lost:
    
        if (zza(r20, r15, r4) != false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x04a5, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzeh.zzc(r15, r2.getObject(r20, r10), zzad(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x04ce, code lost:
    
        if (zza(r20, r15, r4) != false) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x04d0, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzc(r15, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x070b, code lost:
    
        if ((r12 & r18) != 0) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x0725, code lost:
    
        if ((r12 & r18) != 0) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x072b, code lost:
    
        if ((r12 & r18) != 0) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0745, code lost:
    
        if ((r12 & r18) != 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x074b, code lost:
    
        if ((r12 & r18) != 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x075f, code lost:
    
        if ((r12 & r18) != 0) goto L291;
     */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0430 A[PHI: r5
      0x0430: PHI (r5v4 int) = 
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v13 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v14 int)
      (r5v1 int)
     binds: [B:245:0x0417, B:435:0x0765, B:432:0x075f, B:427:0x0751, B:424:0x074b, B:421:0x0745, B:418:0x073b, B:415:0x0731, B:412:0x072b, B:409:0x0725, B:406:0x071b, B:403:0x0711, B:400:0x070b, B:382:0x0657, B:377:0x0645, B:372:0x0633, B:367:0x0621, B:362:0x060f, B:357:0x05fd, B:352:0x05eb, B:347:0x05da, B:342:0x05c9, B:337:0x05b8, B:332:0x05a7, B:327:0x0596, B:322:0x0585, B:316:0x0565, B:311:0x0531, B:308:0x0524, B:305:0x0514, B:302:0x0504, B:299:0x04f4, B:296:0x04e6, B:293:0x04da, B:290:0x04ce, B:284:0x04b7, B:281:0x04a3, B:277:0x0492, B:273:0x0483, B:269:0x0474, B:267:0x046e, B:265:0x0467, B:262:0x045a, B:258:0x044b, B:254:0x043c, B:250:0x042f, B:248:0x041f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0498 A[PHI: r6
      0x0498: PHI (r6v140 java.lang.Object) = (r6v14 java.lang.Object), (r6v136 java.lang.Object), (r6v143 java.lang.Object) binds: [B:429:0x0759, B:286:0x04bf, B:278:0x0494] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x04c2 A[PHI: r6
      0x04c2: PHI (r6v132 java.lang.Object) = (r6v14 java.lang.Object), (r6v136 java.lang.Object) binds: [B:429:0x0759, B:286:0x04bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x056b A[PHI: r6
      0x056b: PHI (r6v106 int) = 
      (r6v68 int)
      (r6v71 int)
      (r6v74 int)
      (r6v77 int)
      (r6v80 int)
      (r6v83 int)
      (r6v86 int)
      (r6v89 int)
      (r6v92 int)
      (r6v95 int)
      (r6v98 int)
      (r6v101 int)
      (r6v104 int)
      (r6v109 int)
     binds: [B:384:0x065b, B:379:0x0649, B:374:0x0637, B:369:0x0625, B:364:0x0613, B:359:0x0601, B:354:0x05ef, B:349:0x05de, B:344:0x05cd, B:339:0x05bc, B:334:0x05ab, B:329:0x059a, B:324:0x0589, B:318:0x0569] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba A[PHI: r4
      0x00ba: PHI (r4v94 java.lang.Object) = (r4v12 java.lang.Object), (r4v92 java.lang.Object), (r4v96 java.lang.Object) binds: [B:197:0x0365, B:51:0x00e0, B:43:0x00b6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e3 A[PHI: r4
      0x00e3: PHI (r4v90 java.lang.Object) = (r4v12 java.lang.Object), (r4v92 java.lang.Object) binds: [B:197:0x0365, B:51:0x00e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0187 A[PHI: r4
      0x0187: PHI (r4v72 int) = 
      (r4v34 int)
      (r4v37 int)
      (r4v40 int)
      (r4v43 int)
      (r4v46 int)
      (r4v49 int)
      (r4v52 int)
      (r4v55 int)
      (r4v58 int)
      (r4v61 int)
      (r4v64 int)
      (r4v67 int)
      (r4v70 int)
      (r4v75 int)
     binds: [B:152:0x0277, B:147:0x0265, B:142:0x0253, B:137:0x0241, B:132:0x022f, B:127:0x021d, B:122:0x020b, B:117:0x01fa, B:112:0x01e9, B:107:0x01d8, B:102:0x01c7, B:97:0x01b6, B:92:0x01a5, B:86:0x0185] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzm(Object obj) {
        int i;
        int i2;
        long j;
        int iZzd;
        Object object;
        int iZzg;
        int iZzg2;
        int iZzg3;
        long jZzh;
        int iZzo;
        int iZzi;
        int iZzr;
        long jZzk;
        long jZzk2;
        int iZzj;
        Object objZzo;
        int iZzj2;
        int iZzj3;
        int iZzj4;
        long jZzk3;
        int iZzo2;
        int iZzi2;
        int i3 = 267386880;
        if (!this.zzmq) {
            Unsafe unsafe = zzmh;
            int i4 = -1;
            int i5 = 0;
            int iZzb = 0;
            int i6 = 0;
            while (i5 < this.zzmi.length) {
                int iZzag = zzag(i5);
                int[] iArr = this.zzmi;
                int i7 = iArr[i5];
                int i8 = (iZzag & 267386880) >>> 20;
                if (i8 <= 17) {
                    int i9 = iArr[i5 + 2];
                    int i10 = i9 & 1048575;
                    i2 = 1 << (i9 >>> 20);
                    if (i10 != i4) {
                        i6 = unsafe.getInt(obj, i10);
                        i4 = i10;
                    }
                    i = i9;
                } else {
                    i = (!this.zzmr || i8 < zzcb.zzih.id() || i8 > zzcb.zziu.id()) ? 0 : this.zzmi[i5 + 2] & 1048575;
                    i2 = 0;
                }
                long j2 = iZzag & 1048575;
                switch (i8) {
                    case 0:
                        j = 0;
                        if ((i6 & i2) == 0) {
                            break;
                        } else {
                            iZzb += zzbn.zzb(i7, 0.0d);
                            break;
                        }
                    case 1:
                        j = 0;
                        if ((i6 & i2) != 0) {
                            iZzb += zzbn.zzb(i7, BitmapDescriptorFactory.HUE_RED);
                        }
                        break;
                    case 2:
                        j = 0;
                        if ((i6 & i2) != 0) {
                            iZzd = zzbn.zzd(i7, unsafe.getLong(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 3:
                        j = 0;
                        if ((i6 & i2) != 0) {
                            iZzd = zzbn.zze(i7, unsafe.getLong(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 4:
                        j = 0;
                        if ((i6 & i2) != 0) {
                            iZzd = zzbn.zzg(i7, unsafe.getInt(obj, j2));
                            iZzb += iZzd;
                        }
                        break;
                    case 5:
                        j = 0;
                        if ((i6 & i2) != 0) {
                            iZzd = zzbn.zzg(i7, 0L);
                            iZzb += iZzd;
                        }
                        break;
                    case 6:
                        if ((i6 & i2) != 0) {
                            iZzb += zzbn.zzj(i7, 0);
                        }
                        j = 0;
                        break;
                    case 8:
                        if ((i6 & i2) != 0) {
                            object = unsafe.getObject(obj, j2);
                            iZzo = object instanceof zzbb ? zzbn.zzc(i7, (zzbb) object) : zzbn.zzb(i7, (String) object);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case 11:
                        if ((i6 & i2) != 0) {
                            iZzg = unsafe.getInt(obj, j2);
                            iZzo = zzbn.zzh(i7, iZzg);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case 12:
                        if ((i6 & i2) != 0) {
                            iZzg2 = unsafe.getInt(obj, j2);
                            iZzo = zzbn.zzl(i7, iZzg2);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case 15:
                        if ((i6 & i2) != 0) {
                            iZzg3 = unsafe.getInt(obj, j2);
                            iZzo = zzbn.zzi(i7, iZzg3);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case 16:
                        if ((i6 & i2) != 0) {
                            jZzh = unsafe.getLong(obj, j2);
                            iZzo = zzbn.zzf(i7, jZzh);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case 18:
                    case 23:
                    case 32:
                        iZzo = zzeh.zzw(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 19:
                    case 24:
                    case 31:
                        iZzo = zzeh.zzv(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 20:
                        iZzo = zzeh.zzo(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 21:
                        iZzo = zzeh.zzp(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 22:
                        iZzo = zzeh.zzs(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 25:
                        iZzo = zzeh.zzx(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 26:
                        iZzo = zzeh.zzc(i7, (List) unsafe.getObject(obj, j2));
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 27:
                        iZzo = zzeh.zzc(i7, (List) unsafe.getObject(obj, j2), zzad(i5));
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 28:
                        iZzo = zzeh.zzd(i7, (List) unsafe.getObject(obj, j2));
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 29:
                        iZzo = zzeh.zzt(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 30:
                        iZzo = zzeh.zzr(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        iZzo = zzeh.zzu(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        iZzo = zzeh.zzq(i7, (List) unsafe.getObject(obj, j2), false);
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        iZzi = zzeh.zzi((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                                unsafe.putInt(obj, i, iZzi);
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        iZzi = zzeh.zzh((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        iZzi = zzeh.zza((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        iZzi = zzeh.zzb((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        iZzi = zzeh.zze((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        iZzi = zzeh.zzi((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        iZzi = zzeh.zzh((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        iZzi = zzeh.zzj((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        iZzi = zzeh.zzf((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        iZzi = zzeh.zzd((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        iZzi = zzeh.zzh((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        iZzi = zzeh.zzi((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        iZzi = zzeh.zzg((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        iZzi = zzeh.zzc((List) unsafe.getObject(obj, j2));
                        if (iZzi > 0) {
                            if (this.zzmr) {
                            }
                            iZzr = zzbn.zzr(i7) + zzbn.zzt(iZzi) + iZzi;
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        iZzo = zzeh.zzd(i7, (List) unsafe.getObject(obj, j2), zzad(i5));
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case 50:
                        iZzo = this.zzmz.zzb(i7, unsafe.getObject(obj, j2), zzae(i5));
                        iZzb += iZzo;
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                        if (zza(obj, i7, i5)) {
                            iZzo = zzbn.zzb(i7, 0.0d);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zza(obj, i7, i5)) {
                            iZzr = zzbn.zzb(i7, BitmapDescriptorFactory.HUE_RED);
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zza(obj, i7, i5)) {
                            iZzo = zzbn.zzd(i7, zzh(obj, j2));
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zza(obj, i7, i5)) {
                            iZzo = zzbn.zze(i7, zzh(obj, j2));
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zza(obj, i7, i5)) {
                            iZzo = zzbn.zzg(i7, zzg(obj, j2));
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zza(obj, i7, i5)) {
                            iZzo = zzbn.zzg(i7, 0L);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zza(obj, i7, i5)) {
                            iZzr = zzbn.zzj(i7, 0);
                            iZzb += iZzr;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (zza(obj, i7, i5)) {
                            object = unsafe.getObject(obj, j2);
                            if (object instanceof zzbb) {
                            }
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zza(obj, i7, i5)) {
                            iZzg = zzg(obj, j2);
                            iZzo = zzbn.zzh(i7, iZzg);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zza(obj, i7, i5)) {
                            iZzg2 = zzg(obj, j2);
                            iZzo = zzbn.zzl(i7, iZzg2);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zza(obj, i7, i5)) {
                            iZzg3 = zzg(obj, j2);
                            iZzo = zzbn.zzi(i7, iZzg3);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                    case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zza(obj, i7, i5)) {
                            jZzh = zzh(obj, j2);
                            iZzo = zzbn.zzf(i7, jZzh);
                            iZzb += iZzo;
                        }
                        j = 0;
                        break;
                }
                i5 += 4;
            }
            int iZza = iZzb + zza(this.zzmx, obj);
            return this.zzmo ? iZza + this.zzmy.zza(obj).zzas() : iZza;
        }
        Unsafe unsafe2 = zzmh;
        int i11 = 0;
        int i12 = 0;
        while (i11 < this.zzmi.length) {
            int iZzag2 = zzag(i11);
            int i13 = (iZzag2 & i3) >>> 20;
            int i14 = this.zzmi[i11];
            long j3 = iZzag2 & 1048575;
            int i15 = (i13 < zzcb.zzih.id() || i13 > zzcb.zziu.id()) ? 0 : this.zzmi[i11 + 2] & 1048575;
            switch (i13) {
                case 0:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzb(i14, 0.0d);
                    i12 += iZzo2;
                    break;
                case 1:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzb(i14, BitmapDescriptorFactory.HUE_RED);
                    i12 += iZzo2;
                    break;
                case 2:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        jZzk = zzfd.zzk(obj, j3);
                        iZzo2 = zzbn.zzd(i14, jZzk);
                        i12 += iZzo2;
                        break;
                    }
                case 3:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        jZzk2 = zzfd.zzk(obj, j3);
                        iZzo2 = zzbn.zze(i14, jZzk2);
                        i12 += iZzo2;
                        break;
                    }
                case 4:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        iZzj = zzfd.zzj(obj, j3);
                        iZzo2 = zzbn.zzg(i14, iZzj);
                        i12 += iZzo2;
                        break;
                    }
                case 5:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzg(i14, 0L);
                    i12 += iZzo2;
                    break;
                case 6:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzj(i14, 0);
                    i12 += iZzo2;
                    break;
                case 7:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzc(i14, true);
                    i12 += iZzo2;
                    break;
                case 8:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        objZzo = zzfd.zzo(obj, j3);
                        iZzo2 = objZzo instanceof zzbb ? zzbn.zzc(i14, (zzbb) objZzo) : zzbn.zzb(i14, (String) objZzo);
                        i12 += iZzo2;
                        break;
                    }
                case 9:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzeh.zzc(i14, zzfd.zzo(obj, j3), zzad(i11));
                    i12 += iZzo2;
                    break;
                case 10:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    objZzo = zzfd.zzo(obj, j3);
                    i12 += iZzo2;
                    break;
                case 11:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        iZzj2 = zzfd.zzj(obj, j3);
                        iZzo2 = zzbn.zzh(i14, iZzj2);
                        i12 += iZzo2;
                        break;
                    }
                case 12:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        iZzj3 = zzfd.zzj(obj, j3);
                        iZzo2 = zzbn.zzl(i14, iZzj3);
                        i12 += iZzo2;
                        break;
                    }
                case 13:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzk(i14, 0);
                    i12 += iZzo2;
                    break;
                case 14:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzh(i14, 0L);
                    i12 += iZzo2;
                    break;
                case 15:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        iZzj4 = zzfd.zzj(obj, j3);
                        iZzo2 = zzbn.zzi(i14, iZzj4);
                        i12 += iZzo2;
                        break;
                    }
                case 16:
                    if (!zza(obj, i11)) {
                        break;
                    } else {
                        jZzk3 = zzfd.zzk(obj, j3);
                        iZzo2 = zzbn.zzf(i14, jZzk3);
                        i12 += iZzo2;
                        break;
                    }
                case 17:
                    if (!zza(obj, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzc(i14, (zzdo) zzfd.zzo(obj, j3), zzad(i11));
                    i12 += iZzo2;
                    break;
                case 18:
                case 23:
                case 32:
                    iZzo2 = zzeh.zzw(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 19:
                case 24:
                case 31:
                    iZzo2 = zzeh.zzv(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 20:
                    iZzo2 = zzeh.zzo(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 21:
                    iZzo2 = zzeh.zzp(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 22:
                    iZzo2 = zzeh.zzs(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 25:
                    iZzo2 = zzeh.zzx(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 26:
                    iZzo2 = zzeh.zzc(i14, zzd(obj, j3));
                    i12 += iZzo2;
                    break;
                case 27:
                    iZzo2 = zzeh.zzc(i14, zzd(obj, j3), zzad(i11));
                    i12 += iZzo2;
                    break;
                case 28:
                    iZzo2 = zzeh.zzd(i14, zzd(obj, j3));
                    i12 += iZzo2;
                    break;
                case 29:
                    iZzo2 = zzeh.zzt(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case 30:
                    iZzo2 = zzeh.zzr(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    iZzo2 = zzeh.zzu(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    iZzo2 = zzeh.zzq(i14, zzd(obj, j3), false);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    iZzi2 = zzeh.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                            unsafe2.putInt(obj, i15, iZzi2);
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    iZzi2 = zzeh.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    iZzi2 = zzeh.zza((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    iZzi2 = zzeh.zzb((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    iZzi2 = zzeh.zze((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    iZzi2 = zzeh.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    iZzi2 = zzeh.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    iZzi2 = zzeh.zzj((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    iZzi2 = zzeh.zzf((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    iZzi2 = zzeh.zzd((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    iZzi2 = zzeh.zzh((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    iZzi2 = zzeh.zzi((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    iZzi2 = zzeh.zzg((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    iZzi2 = zzeh.zzc((List) unsafe2.getObject(obj, j3));
                    if (iZzi2 > 0) {
                        if (this.zzmr) {
                        }
                        iZzo2 = zzbn.zzr(i14) + zzbn.zzt(iZzi2) + iZzi2;
                        i12 += iZzo2;
                        break;
                    } else {
                        break;
                    }
                case R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    iZzo2 = zzeh.zzd(i14, zzd(obj, j3), zzad(i11));
                    i12 += iZzo2;
                    break;
                case 50:
                    iZzo2 = this.zzmz.zzb(i14, zzfd.zzo(obj, j3), zzae(i11));
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_colorBackgroundFloating /* 51 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzb(i14, 0.0d);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzb(i14, BitmapDescriptorFactory.HUE_RED);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        jZzk = zzh(obj, j3);
                        iZzo2 = zzbn.zzd(i14, jZzk);
                        i12 += iZzo2;
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        jZzk2 = zzh(obj, j3);
                        iZzo2 = zzbn.zze(i14, jZzk2);
                        i12 += iZzo2;
                        break;
                    }
                case R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        iZzj = zzg(obj, j3);
                        iZzo2 = zzbn.zzg(i14, iZzj);
                        i12 += iZzo2;
                        break;
                    }
                case R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzg(i14, 0L);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzj(i14, 0);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzc(i14, true);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        objZzo = zzfd.zzo(obj, j3);
                        if (objZzo instanceof zzbb) {
                        }
                        i12 += iZzo2;
                        break;
                    }
                    break;
                case R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzeh.zzc(i14, zzfd.zzo(obj, j3), zzad(i11));
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    objZzo = zzfd.zzo(obj, j3);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        iZzj2 = zzg(obj, j3);
                        iZzo2 = zzbn.zzh(i14, iZzj2);
                        i12 += iZzo2;
                        break;
                    }
                case R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        iZzj3 = zzg(obj, j3);
                        iZzo2 = zzbn.zzl(i14, iZzj3);
                        i12 += iZzo2;
                        break;
                    }
                case 64:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzk(i14, 0);
                    i12 += iZzo2;
                    break;
                case 65:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzh(i14, 0L);
                    i12 += iZzo2;
                    break;
                case R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        iZzj4 = zzg(obj, j3);
                        iZzo2 = zzbn.zzi(i14, iZzj4);
                        i12 += iZzo2;
                        break;
                    }
                case R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    } else {
                        jZzk3 = zzh(obj, j3);
                        iZzo2 = zzbn.zzf(i14, jZzk3);
                        i12 += iZzo2;
                        break;
                    }
                case R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zza(obj, i14, i11)) {
                        break;
                    }
                    iZzo2 = zzbn.zzc(i14, (zzdo) zzfd.zzo(obj, j3), zzad(i11));
                    i12 += iZzo2;
                    break;
            }
            i11 += 4;
            i3 = 267386880;
        }
        return i12 + zza(this.zzmx, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a1  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzo(Object obj) {
        int i;
        int i2;
        int[] iArr = this.zzms;
        int i3 = 1;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int length = iArr.length;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            int i7 = iArr[i5];
            int iZzai = zzai(i7);
            int iZzag = zzag(iZzai);
            if (this.zzmq) {
                i = length;
                i2 = 0;
            } else {
                int i8 = this.zzmi[iZzai + 2];
                int i9 = i8 & 1048575;
                i2 = i3 << (i8 >>> 20);
                if (i9 != i4) {
                    i = length;
                    i6 = zzmh.getInt(obj, i9);
                    i4 = i9;
                } else {
                    i = length;
                }
            }
            if ((268435456 & iZzag) != 0 && !zza(obj, iZzai, i6, i2)) {
                return false;
            }
            int i10 = (267386880 & iZzag) >>> 20;
            if (i10 == 9 || i10 == 17) {
                if (zza(obj, iZzai, i6, i2) && !zza(obj, iZzag, zzad(iZzai))) {
                    return false;
                }
            } else if (i10 == 27) {
                List list = (List) zzfd.zzo(obj, iZzag & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzef zzefVarZzad = zzad(iZzai);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzefVarZzad.zzo(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (i10 == 60 || i10 == 68) {
                if (zza(obj, i7, iZzai) && !zza(obj, iZzag, zzad(iZzai))) {
                    return false;
                }
            } else if (i10 != 49) {
                if (i10 == 50 && !this.zzmz.zzh(zzfd.zzo(obj, iZzag & 1048575)).isEmpty()) {
                    this.zzmz.zzl(zzae(iZzai));
                    throw null;
                }
            }
            i5++;
            length = i;
            i3 = 1;
        }
        return !this.zzmo || this.zzmy.zza(obj).isInitialized();
    }
}
