package com.google.android.gms.internal.vision;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzmj extends zzme {
    zzmj() {
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzmd.zzb(i);
        }
        if (i2 == 1) {
            return zzmd.zzb(i, zzma.zza(bArr, j));
        }
        if (i2 == 2) {
            return zzmd.zzb(i, zzma.zza(bArr, j), zzma.zza(bArr, j + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0060, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008f, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.vision.zzme
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zza(int i, byte[] bArr, int i2, int i3) {
        int i4;
        int i5 = 2;
        int i6 = 0;
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j = i2;
        int i7 = (int) (i3 - j);
        long j2 = 1;
        if (i7 >= 16) {
            long j3 = j;
            i4 = 0;
            while (true) {
                if (i4 >= i7) {
                    i4 = i7;
                    break;
                }
                long j4 = j3 + 1;
                if (zzma.zza(bArr, j3) < 0) {
                    break;
                }
                i4++;
                j3 = j4;
            }
        } else {
            i4 = 0;
        }
        int i8 = i7 - i4;
        long j5 = j + i4;
        while (true) {
            byte bZza = 0;
            while (true) {
                if (i8 <= 0) {
                    break;
                }
                long j6 = j5 + j2;
                bZza = zzma.zza(bArr, j5);
                if (bZza < 0) {
                    j5 = j6;
                    break;
                }
                i8--;
                j5 = j6;
            }
            if (i8 == 0) {
                return i6;
            }
            int i9 = i8 - 1;
            if (bZza >= -32) {
                if (bZza >= -16) {
                    if (i9 >= 3) {
                        i8 -= 4;
                        long j7 = j5 + j2;
                        byte bZza2 = zzma.zza(bArr, j5);
                        if (bZza2 <= -65 && (((bZza << 28) + (bZza2 + 112)) >> 30) == 0) {
                            long j8 = j5 + 2;
                            if (zzma.zza(bArr, j7) > -65) {
                                break;
                            }
                            j5 += 3;
                            if (zzma.zza(bArr, j8) > -65) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        return zza(bArr, bZza, j5, i9);
                    }
                } else {
                    if (i9 < i5) {
                        return zza(bArr, bZza, j5, i9);
                    }
                    i8 -= 3;
                    long j9 = j5 + j2;
                    byte bZza3 = zzma.zza(bArr, j5);
                    if (bZza3 > -65 || ((bZza == -32 && bZza3 < -96) || (bZza == -19 && bZza3 >= -96))) {
                        break;
                    }
                    j5 += 2;
                    if (zzma.zza(bArr, j9) > -65) {
                        break;
                    }
                    i5 = 2;
                    i6 = 0;
                }
            } else if (i9 != 0) {
                i8 -= 2;
                if (bZza < -62) {
                    break;
                }
                long j10 = j5 + j2;
                if (zzma.zza(bArr, j5) > -65) {
                    break;
                }
                j5 = j10;
            } else {
                return bZza;
            }
            i5 = 2;
            i6 = 0;
            j2 = 1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.vision.zzme
    final int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        long j;
        String str;
        String str2;
        int i3;
        long j2;
        long j3;
        char cCharAt;
        long j4 = i;
        long j5 = i2 + j4;
        int length = charSequence.length();
        String str3 = " at index ";
        String str4 = "Failed writing ";
        if (length > i2 || bArr.length - i2 < i) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            j = 1;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzma.zza(bArr, j4, (byte) cCharAt);
            i4++;
            j4 = 1 + j4;
        }
        if (i4 == length) {
            return (int) j4;
        }
        while (i4 < length) {
            char cCharAt3 = charSequence.charAt(i4);
            if (cCharAt3 >= 128 || j4 >= j5) {
                if (cCharAt3 >= 2048 || j4 > j5 - 2) {
                    str = str3;
                    str2 = str4;
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                        if (j4 > j5 - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new zzmg(i4, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append(str2);
                            sb2.append(cCharAt3);
                            sb2.append(str);
                            sb2.append(j4);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char cCharAt4 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                j2 = 1;
                                zzma.zza(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                j3 = j5;
                                zzma.zza(bArr, j4 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j6 = 3 + j4;
                                zzma.zza(bArr, j4 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                j4 += 4;
                                zzma.zza(bArr, j6, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new zzmg(i4 - 1, length);
                    }
                    zzma.zza(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j7 = j4 + 2;
                    zzma.zza(bArr, j4 + 1, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    j4 += 3;
                    zzma.zza(bArr, j7, (byte) ((cCharAt3 & '?') | 128));
                } else {
                    str = str3;
                    str2 = str4;
                    long j8 = j4 + j;
                    zzma.zza(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    j4 += 2;
                    zzma.zza(bArr, j8, (byte) ((cCharAt3 & '?') | 128));
                }
                j3 = j5;
                j2 = 1;
            } else {
                zzma.zza(bArr, j4, (byte) cCharAt3);
                j3 = j5;
                str2 = str4;
                j2 = j;
                j4 += j;
                str = str3;
            }
            i4++;
            str3 = str;
            str4 = str2;
            j = j2;
            j5 = j3;
        }
        return (int) j4;
    }

    @Override // com.google.android.gms.internal.vision.zzme
    final String zzb(byte[] bArr, int i, int i2) throws zzjk {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte bZza = zzma.zza(bArr, i);
            if (!zzmf.zzd(bZza)) {
                break;
            }
            i++;
            zzmf.zzb(bZza, cArr, i4);
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte bZza2 = zzma.zza(bArr, i);
            if (zzmf.zzd(bZza2)) {
                int i7 = i5 + 1;
                zzmf.zzb(bZza2, cArr, i5);
                while (i6 < i3) {
                    byte bZza3 = zzma.zza(bArr, i6);
                    if (!zzmf.zzd(bZza3)) {
                        break;
                    }
                    i6++;
                    zzmf.zzb(bZza3, cArr, i7);
                    i7++;
                }
                i5 = i7;
                i = i6;
            } else if (zzmf.zze(bZza2)) {
                if (i6 >= i3) {
                    throw zzjk.zzh();
                }
                i += 2;
                zzmf.zzb(bZza2, zzma.zza(bArr, i6), cArr, i5);
                i5++;
            } else if (zzmf.zzf(bZza2)) {
                if (i6 >= i3 - 1) {
                    throw zzjk.zzh();
                }
                int i8 = i + 2;
                i += 3;
                zzmf.zzb(bZza2, zzma.zza(bArr, i6), zzma.zza(bArr, i8), cArr, i5);
                i5++;
            } else {
                if (i6 >= i3 - 2) {
                    throw zzjk.zzh();
                }
                byte bZza4 = zzma.zza(bArr, i6);
                int i9 = i + 3;
                byte bZza5 = zzma.zza(bArr, i + 2);
                i += 4;
                zzmf.zzb(bZza2, bZza4, bZza5, zzma.zza(bArr, i9), cArr, i5);
                i5 += 2;
            }
        }
        return new String(cArr, 0, i5);
    }
}
