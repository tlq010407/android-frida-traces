package com.google.android.gms.internal.play_billing;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
abstract class zzao {
    static int zza(byte[] bArr, int i, zzan zzanVar) {
        int iZzj = zzj(bArr, i, zzanVar);
        int i2 = zzanVar.zza;
        if (i2 < 0) {
            throw zzci.zzd();
        }
        if (i2 > bArr.length - iZzj) {
            throw zzci.zzg();
        }
        if (i2 == 0) {
            zzanVar.zzc = zzba.zzb;
            return iZzj;
        }
        zzanVar.zzc = zzba.zzl(bArr, iZzj, i2);
        return iZzj + i2;
    }

    static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    static int zzc(zzdp zzdpVar, byte[] bArr, int i, int i2, int i3, zzan zzanVar) {
        Object objZze = zzdpVar.zze();
        int iZzn = zzn(objZze, zzdpVar, bArr, i, i2, i3, zzanVar);
        zzdpVar.zzf(objZze);
        zzanVar.zzc = objZze;
        return iZzn;
    }

    static int zzd(zzdp zzdpVar, byte[] bArr, int i, int i2, zzan zzanVar) {
        Object objZze = zzdpVar.zze();
        int iZzo = zzo(objZze, zzdpVar, bArr, i, i2, zzanVar);
        zzdpVar.zzf(objZze);
        zzanVar.zzc = objZze;
        return iZzo;
    }

    static int zze(zzdp zzdpVar, int i, byte[] bArr, int i2, int i3, zzcf zzcfVar, zzan zzanVar) {
        int iZzd = zzd(zzdpVar, bArr, i2, i3, zzanVar);
        while (true) {
            zzcfVar.add(zzanVar.zzc);
            if (iZzd >= i3) {
                break;
            }
            int iZzj = zzj(bArr, iZzd, zzanVar);
            if (i != zzanVar.zza) {
                break;
            }
            iZzd = zzd(zzdpVar, bArr, iZzj, i3, zzanVar);
        }
        return iZzd;
    }

    static int zzf(byte[] bArr, int i, zzcf zzcfVar, zzan zzanVar) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVar);
        int iZzj = zzj(bArr, i, zzanVar);
        int i2 = zzanVar.zza + iZzj;
        if (iZzj < i2) {
            zzj(bArr, iZzj, zzanVar);
            throw null;
        }
        if (iZzj == i2) {
            return iZzj;
        }
        throw zzci.zzg();
    }

    static int zzg(byte[] bArr, int i, zzan zzanVar) throws zzci {
        int iZzj = zzj(bArr, i, zzanVar);
        int i2 = zzanVar.zza;
        if (i2 < 0) {
            throw zzci.zzd();
        }
        if (i2 == 0) {
            zzanVar.zzc = "";
            return iZzj;
        }
        zzanVar.zzc = new String(bArr, iZzj, i2, zzcg.zzb);
        return iZzj + i2;
    }

    static int zzh(byte[] bArr, int i, zzan zzanVar) throws zzci {
        int iZzj = zzj(bArr, i, zzanVar);
        int i2 = zzanVar.zza;
        if (i2 < 0) {
            throw zzci.zzd();
        }
        if (i2 == 0) {
            zzanVar.zzc = "";
            return iZzj;
        }
        int i3 = zzev.$r8$clinit;
        int length = bArr.length;
        if ((((length - iZzj) - i2) | iZzj | i2) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzj), Integer.valueOf(i2)));
        }
        int i4 = iZzj + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        while (iZzj < i4) {
            byte b = bArr[iZzj];
            if (!zzer.zzd(b)) {
                break;
            }
            iZzj++;
            cArr[i5] = (char) b;
            i5++;
        }
        int i6 = i5;
        while (iZzj < i4) {
            int i7 = iZzj + 1;
            byte b2 = bArr[iZzj];
            if (zzer.zzd(b2)) {
                cArr[i6] = (char) b2;
                i6++;
                iZzj = i7;
                while (iZzj < i4) {
                    byte b3 = bArr[iZzj];
                    if (zzer.zzd(b3)) {
                        iZzj++;
                        cArr[i6] = (char) b3;
                        i6++;
                    }
                }
            } else if (b2 < -32) {
                if (i7 >= i4) {
                    throw zzci.zzc();
                }
                iZzj += 2;
                zzer.zzc(b2, bArr[i7], cArr, i6);
                i6++;
            } else if (b2 < -16) {
                if (i7 >= i4 - 1) {
                    throw zzci.zzc();
                }
                int i8 = iZzj + 2;
                iZzj += 3;
                zzer.zzb(b2, bArr[i7], bArr[i8], cArr, i6);
                i6++;
            } else {
                if (i7 >= i4 - 2) {
                    throw zzci.zzc();
                }
                byte b4 = bArr[i7];
                int i9 = iZzj + 3;
                byte b5 = bArr[iZzj + 2];
                iZzj += 4;
                zzer.zza(b2, b4, b5, bArr[i9], cArr, i6);
                i6 += 2;
            }
        }
        zzanVar.zzc = new String(cArr, 0, i6);
        return i4;
    }

    static int zzi(int i, byte[] bArr, int i2, int i3, zzeh zzehVar, zzan zzanVar) {
        if ((i >>> 3) == 0) {
            throw zzci.zzb();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzm = zzm(bArr, i2, zzanVar);
            zzehVar.zzj(i, Long.valueOf(zzanVar.zzb));
            return iZzm;
        }
        if (i4 == 1) {
            zzehVar.zzj(i, Long.valueOf(zzp(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzj = zzj(bArr, i2, zzanVar);
            int i5 = zzanVar.zza;
            if (i5 < 0) {
                throw zzci.zzd();
            }
            if (i5 > bArr.length - iZzj) {
                throw zzci.zzg();
            }
            zzehVar.zzj(i, i5 == 0 ? zzba.zzb : zzba.zzl(bArr, iZzj, i5));
            return iZzj + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw zzci.zzb();
            }
            zzehVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzeh zzehVarZzf = zzeh.zzf();
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZzj2 = zzj(bArr, i2, zzanVar);
            int i8 = zzanVar.zza;
            i7 = i8;
            if (i8 == i6) {
                i2 = iZzj2;
                break;
            }
            int iZzi = zzi(i7, bArr, iZzj2, i3, zzehVarZzf, zzanVar);
            i7 = i8;
            i2 = iZzi;
        }
        if (i2 > i3 || i7 != i6) {
            throw zzci.zze();
        }
        zzehVar.zzj(i, zzehVarZzf);
        return i2;
    }

    static int zzj(byte[] bArr, int i, zzan zzanVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzk(b, bArr, i2, zzanVar);
        }
        zzanVar.zza = b;
        return i2;
    }

    static int zzk(int i, byte[] bArr, int i2, zzan zzanVar) {
        int i3;
        byte b = bArr[i2];
        int i4 = i2 + 1;
        int i5 = i & 127;
        if (b >= 0) {
            i3 = b << 7;
        } else {
            int i6 = i5 | ((b & 127) << 7);
            int i7 = i2 + 2;
            byte b2 = bArr[i4];
            if (b2 >= 0) {
                zzanVar.zza = i6 | (b2 << 14);
                return i7;
            }
            i5 = i6 | ((b2 & 127) << 14);
            i4 = i2 + 3;
            byte b3 = bArr[i7];
            if (b3 >= 0) {
                i3 = b3 << 21;
            } else {
                int i8 = i5 | ((b3 & 127) << 21);
                int i9 = i2 + 4;
                byte b4 = bArr[i4];
                if (b4 >= 0) {
                    zzanVar.zza = i8 | (b4 << 28);
                    return i9;
                }
                int i10 = i8 | ((b4 & 127) << 28);
                while (true) {
                    int i11 = i9 + 1;
                    if (bArr[i9] >= 0) {
                        zzanVar.zza = i10;
                        return i11;
                    }
                    i9 = i11;
                }
            }
        }
        zzanVar.zza = i5 | i3;
        return i4;
    }

    static int zzl(int i, byte[] bArr, int i2, int i3, zzcf zzcfVar, zzan zzanVar) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(zzcfVar);
        zzj(bArr, i2, zzanVar);
        int i4 = zzanVar.zza;
        throw null;
    }

    static int zzm(byte[] bArr, int i, zzan zzanVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzanVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & 127) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & 127) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        zzanVar.zzb = j2;
        return i3;
    }

    static int zzn(Object obj, zzdp zzdpVar, byte[] bArr, int i, int i2, int i3, zzan zzanVar) {
        int iZzc = ((zzdi) zzdpVar).zzc(obj, bArr, i, i2, i3, zzanVar);
        zzanVar.zzc = obj;
        return iZzc;
    }

    static int zzo(Object obj, zzdp zzdpVar, byte[] bArr, int i, int i2, zzan zzanVar) {
        int iZzk = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzk = zzk(i3, bArr, iZzk, zzanVar);
            i3 = zzanVar.zza;
        }
        int i4 = iZzk;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzci.zzg();
        }
        int i5 = i3 + i4;
        zzdpVar.zzh(obj, bArr, i4, i5, zzanVar);
        zzanVar.zzc = obj;
        return i5;
    }

    static long zzp(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }
}
