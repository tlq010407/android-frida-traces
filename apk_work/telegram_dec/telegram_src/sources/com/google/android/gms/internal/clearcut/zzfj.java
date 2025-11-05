package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
final class zzfj extends zzfg {
    zzfj() {
    }

    private static int zza(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzff.zzam(i);
        }
        if (i2 == 1) {
            return zzff.zzp(i, zzfd.zza(bArr, j));
        }
        if (i2 == 2) {
            return zzff.zzd(i, zzfd.zza(bArr, j), zzfd.zza(bArr, j + 1));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0060, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008f, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.clearcut.zzfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zzb(int i, byte[] bArr, int i2, int i3) {
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
                if (zzfd.zza(bArr, j3) < 0) {
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
                bZza = zzfd.zza(bArr, j5);
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
                        byte bZza2 = zzfd.zza(bArr, j5);
                        if (bZza2 <= -65 && (((bZza << 28) + (bZza2 + 112)) >> 30) == 0) {
                            long j8 = j5 + 2;
                            if (zzfd.zza(bArr, j7) > -65) {
                                break;
                            }
                            j5 += 3;
                            if (zzfd.zza(bArr, j8) > -65) {
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
                    byte bZza3 = zzfd.zza(bArr, j5);
                    if (bZza3 > -65 || ((bZza == -32 && bZza3 < -96) || (bZza == -19 && bZza3 >= -96))) {
                        break;
                    }
                    j5 += 2;
                    if (zzfd.zza(bArr, j9) > -65) {
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
                if (zzfd.zza(bArr, j5) > -65) {
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

    @Override // com.google.android.gms.internal.clearcut.zzfg
    final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
            zzfd.zza(bArr, j4, (byte) cCharAt);
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
                                throw new zzfi(i4, length);
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
                                zzfd.zza(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                j3 = j5;
                                zzfd.zza(bArr, j4 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j6 = 3 + j4;
                                zzfd.zza(bArr, j4 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                j4 += 4;
                                zzfd.zza(bArr, j6, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new zzfi(i4 - 1, length);
                    }
                    zzfd.zza(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j7 = j4 + 2;
                    zzfd.zza(bArr, j4 + 1, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    j4 += 3;
                    zzfd.zza(bArr, j7, (byte) ((cCharAt3 & '?') | 128));
                } else {
                    str = str3;
                    str2 = str4;
                    long j8 = j4 + j;
                    zzfd.zza(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    j4 += 2;
                    zzfd.zza(bArr, j8, (byte) ((cCharAt3 & '?') | 128));
                }
                j3 = j5;
                j2 = 1;
            } else {
                zzfd.zza(bArr, j4, (byte) cCharAt3);
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

    @Override // com.google.android.gms.internal.clearcut.zzfg
    final void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        long j;
        char c;
        int i;
        long j2;
        long j3;
        int i2;
        long j4;
        int i3;
        char cCharAt;
        ByteBuffer byteBuffer2 = byteBuffer;
        long jZzb = zzfd.zzb(byteBuffer);
        long jPosition = byteBuffer.position() + jZzb;
        long jLimit = byteBuffer.limit() + jZzb;
        int length = charSequence.length();
        if (length > jLimit - jPosition) {
            char cCharAt2 = charSequence.charAt(length - 1);
            int iLimit = byteBuffer.limit();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(iLimit);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            j = 1;
            c = 128;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzfd.zza(jPosition, (byte) cCharAt);
            i4++;
            jPosition = 1 + jPosition;
        }
        if (i4 == length) {
            i = (int) (jPosition - jZzb);
        } else {
            while (i4 < length) {
                char cCharAt3 = charSequence.charAt(i4);
                if (cCharAt3 < c && jPosition < jLimit) {
                    zzfd.zza(jPosition, (byte) cCharAt3);
                    j2 = jZzb;
                    j3 = jLimit;
                    i2 = i4;
                    j4 = j;
                    jPosition += j;
                } else if (cCharAt3 >= 2048 || jPosition > jLimit - 2) {
                    j2 = jZzb;
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || jPosition > jLimit - 3) {
                        if (jPosition > jLimit - 4) {
                            if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                                throw new zzfi(i4, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(cCharAt3);
                            sb2.append(" at index ");
                            sb2.append(jPosition);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        i2 = i4 + 1;
                        if (i2 != length) {
                            char cCharAt4 = charSequence.charAt(i2);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                j4 = 1;
                                zzfd.zza(jPosition, (byte) ((codePoint >>> 18) | 240));
                                j3 = jLimit;
                                zzfd.zza(jPosition + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j5 = jPosition + 3;
                                zzfd.zza(jPosition + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                jPosition += 4;
                                zzfd.zza(j5, (byte) ((codePoint & 63) | 128));
                            } else {
                                i4 = i2;
                            }
                        }
                        throw new zzfi(i4 - 1, length);
                    }
                    long j6 = jPosition + j;
                    zzfd.zza(jPosition, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j7 = jPosition + 2;
                    zzfd.zza(j6, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    jPosition += 3;
                    zzfd.zza(j7, (byte) ((cCharAt3 & '?') | 128));
                    j3 = jLimit;
                    i2 = i4;
                    j4 = 1;
                    i4 = i2 + 1;
                    jZzb = j2;
                    j = j4;
                    jLimit = j3;
                    c = 128;
                } else {
                    j2 = jZzb;
                    long j8 = jPosition + j;
                    zzfd.zza(jPosition, (byte) ((cCharAt3 >>> 6) | 960));
                    jPosition += 2;
                    zzfd.zza(j8, (byte) ((cCharAt3 & '?') | 128));
                    j3 = jLimit;
                    i2 = i4;
                    j4 = j;
                }
                i4 = i2 + 1;
                jZzb = j2;
                j = j4;
                jLimit = j3;
                c = 128;
            }
            i = (int) (jPosition - jZzb);
            byteBuffer2 = byteBuffer;
        }
        byteBuffer2.position(i);
    }
}
