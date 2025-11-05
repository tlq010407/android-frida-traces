package org.apache.commons.compress.compressors.bzip2;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class BZip2CompressorInputStream extends CompressorInputStream {
    private BitInputStream bin;
    private boolean blockRandomised;
    private int blockSize100k;
    private int computedBlockCRC;
    private int computedCombinedCRC;
    private final CRC crc;
    private int currentState;
    private Data data;
    private final boolean decompressConcatenated;
    private int last;
    private int nInUse;
    private int origPtr;
    private int storedBlockCRC;
    private int storedCombinedCRC;
    private int su_ch2;
    private int su_chPrev;
    private int su_count;
    private int su_i2;
    private int su_j2;
    private int su_rNToGo;
    private int su_rTPos;
    private int su_tPos;
    private char su_z;

    private static final class Data {
        final int[][] base;
        final int[] cftab;
        final char[] getAndMoveToFrontDecode_yy;
        final int[][] limit;
        final byte[] ll8;
        final int[] minLens;
        final int[][] perm;
        final byte[] recvDecodingTables_pos;
        final char[][] temp_charArray2d;
        int[] tt;
        final boolean[] inUse = new boolean[256];
        final byte[] seqToUnseq = new byte[256];
        final byte[] selector = new byte[18002];
        final byte[] selectorMtf = new byte[18002];
        final int[] unzftab = new int[256];

        Data(int i) {
            Class cls = Integer.TYPE;
            this.limit = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.base = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.perm = (int[][]) Array.newInstance((Class<?>) cls, 6, 258);
            this.minLens = new int[6];
            this.cftab = new int[257];
            this.getAndMoveToFrontDecode_yy = new char[256];
            this.temp_charArray2d = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, 258);
            this.recvDecodingTables_pos = new byte[6];
            this.ll8 = new byte[i * 100000];
        }

        int[] initTT(int i) {
            int[] iArr = this.tt;
            if (iArr != null && iArr.length >= i) {
                return iArr;
            }
            int[] iArr2 = new int[i];
            this.tt = iArr2;
            return iArr2;
        }
    }

    public BZip2CompressorInputStream(InputStream inputStream) {
        this(inputStream, false);
    }

    public BZip2CompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this.crc = new CRC();
        this.currentState = 1;
        this.bin = new BitInputStream(inputStream == System.in ? new CloseShieldFilterInputStream(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        this.decompressConcatenated = z;
        init(true);
        initBlock();
    }

    private static boolean bsGetBit(BitInputStream bitInputStream) {
        return bsR(bitInputStream, 1) != 0;
    }

    private static int bsGetInt(BitInputStream bitInputStream) {
        return bsR(bitInputStream, 32);
    }

    private static char bsGetUByte(BitInputStream bitInputStream) {
        return (char) bsR(bitInputStream, 8);
    }

    private static int bsR(BitInputStream bitInputStream, int i) throws IOException {
        long bits = bitInputStream.readBits(i);
        if (bits >= 0) {
            return (int) bits;
        }
        throw new IOException("Unexpected end of stream");
    }

    private static void checkBounds(int i, int i2, String str) throws IOException {
        if (i < 0) {
            throw new IOException("Corrupted input, " + str + " value negative");
        }
        if (i < i2) {
            return;
        }
        throw new IOException("Corrupted input, " + str + " value too big");
    }

    private boolean complete() throws IOException {
        int iBsGetInt = bsGetInt(this.bin);
        this.storedCombinedCRC = iBsGetInt;
        this.currentState = 0;
        this.data = null;
        if (iBsGetInt == this.computedCombinedCRC) {
            return (this.decompressConcatenated && init(false)) ? false : true;
        }
        throw new IOException("BZip2 CRC error");
    }

    private void createHuffmanDecodingTables(int i, int i2) throws IOException {
        Data data = this.data;
        char[][] cArr = data.temp_charArray2d;
        int[] iArr = data.minLens;
        int[][] iArr2 = data.limit;
        int[][] iArr3 = data.base;
        int[][] iArr4 = data.perm;
        for (int i3 = 0; i3 < i2; i3++) {
            char[] cArr2 = cArr[i3];
            char c = ' ';
            int i4 = i;
            char c2 = 0;
            while (true) {
                i4--;
                if (i4 >= 0) {
                    char c3 = cArr2[i4];
                    if (c3 > c2) {
                        c2 = c3;
                    }
                    if (c3 < c) {
                        c = c3;
                    }
                }
            }
            hbCreateDecodeTables(iArr2[i3], iArr3[i3], iArr4[i3], cArr[i3], c, c2, i);
            iArr[i3] = c;
        }
    }

    private void endBlock() throws IOException {
        int finalCRC = this.crc.getFinalCRC();
        this.computedBlockCRC = finalCRC;
        int i = this.storedBlockCRC;
        if (i == finalCRC) {
            int i2 = this.computedCombinedCRC;
            this.computedCombinedCRC = finalCRC ^ ((i2 >>> 31) | (i2 << 1));
        } else {
            int i3 = this.storedCombinedCRC;
            this.computedCombinedCRC = ((i3 >>> 31) | (i3 << 1)) ^ i;
            throw new IOException("BZip2 CRC error");
        }
    }

    private void getAndMoveToFrontDecode() throws IOException {
        int i;
        String str;
        int i2;
        int i3;
        char c;
        int i4;
        String str2;
        int i5;
        BZip2CompressorInputStream bZip2CompressorInputStream = this;
        BitInputStream bitInputStream = bZip2CompressorInputStream.bin;
        bZip2CompressorInputStream.origPtr = bsR(bitInputStream, 24);
        recvDecodingTables();
        Data data = bZip2CompressorInputStream.data;
        byte[] bArr = data.ll8;
        int[] iArr = data.unzftab;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.seqToUnseq;
        char[] cArr = data.getAndMoveToFrontDecode_yy;
        int[] iArr2 = data.minLens;
        int[][] iArr3 = data.limit;
        int[][] iArr4 = data.base;
        int[][] iArr5 = data.perm;
        int i6 = bZip2CompressorInputStream.blockSize100k * 100000;
        int i7 = 256;
        while (true) {
            i7--;
            if (i7 < 0) {
                break;
            }
            cArr[i7] = (char) i7;
            iArr[i7] = 0;
        }
        int i8 = bZip2CompressorInputStream.nInUse + 1;
        int andMoveToFrontDecode0 = getAndMoveToFrontDecode0();
        int i9 = bArr2[0] & 255;
        checkBounds(i9, 6, "zt");
        int[] iArr6 = iArr4[i9];
        int[] iArr7 = iArr3[i9];
        int[] iArr8 = iArr5[i9];
        int i10 = iArr2[i9];
        int i11 = andMoveToFrontDecode0;
        int i12 = -1;
        int i13 = 0;
        int i14 = 49;
        while (i11 != i8) {
            int i15 = i8;
            String str3 = "groupNo";
            BitInputStream bitInputStream2 = bitInputStream;
            if (i11 == 0 || i11 == 1) {
                int[] iArr9 = iArr2;
                int i16 = i11;
                int i17 = i6;
                byte[] bArr4 = bArr;
                i11 = i16;
                int i18 = -1;
                int i19 = i14;
                int i20 = i13;
                int i21 = i10;
                int[] iArr10 = iArr8;
                int[] iArr11 = iArr7;
                int[] iArr12 = iArr6;
                int i22 = 1;
                while (true) {
                    if (i11 != 0) {
                        i = i12;
                        if (i11 != 1) {
                            break;
                        } else {
                            i18 += i22 << 1;
                        }
                    } else {
                        i18 += i22;
                        i = i12;
                    }
                    if (i19 == 0) {
                        int i23 = i20 + 1;
                        checkBounds(i23, 18002, str3);
                        int i24 = bArr2[i23] & 255;
                        str = str3;
                        checkBounds(i24, 6, "zt");
                        iArr12 = iArr4[i24];
                        iArr11 = iArr3[i24];
                        iArr10 = iArr5[i24];
                        i20 = i23;
                        i2 = iArr9[i24];
                        i3 = 258;
                        i19 = 49;
                    } else {
                        str = str3;
                        i19--;
                        i2 = i21;
                        i3 = 258;
                    }
                    checkBounds(i2, i3, "zn");
                    int iBsR = bsR(bitInputStream2, i2);
                    int i25 = i2;
                    while (iBsR > iArr11[i25]) {
                        int i26 = i25 + 1;
                        checkBounds(i26, 258, "zn");
                        iBsR = (iBsR << 1) | bsR(bitInputStream2, 1);
                        i25 = i26;
                        iArr5 = iArr5;
                    }
                    int i27 = iBsR - iArr12[i25];
                    checkBounds(i27, 258, "zvec");
                    i22 <<= 1;
                    i11 = iArr10[i27];
                    i21 = i2;
                    i12 = i;
                    str3 = str;
                    iArr5 = iArr5;
                }
                bZip2CompressorInputStream = this;
                int[][] iArr13 = iArr5;
                checkBounds(i18, bZip2CompressorInputStream.data.ll8.length, "s");
                char c2 = cArr[0];
                checkBounds(c2, 256, "yy");
                byte b = bArr3[c2];
                int i28 = b & 255;
                iArr[i28] = iArr[i28] + i18 + 1;
                int i29 = i + 1;
                int i30 = i18 + i29;
                checkBounds(i30, bZip2CompressorInputStream.data.ll8.length, "lastShadow");
                Arrays.fill(bArr4, i29, i30 + 1, b);
                if (i30 >= i17) {
                    throw new IOException("Block overrun while expanding RLE in MTF, " + i30 + " exceeds " + i17);
                }
                i12 = i30;
                iArr6 = iArr12;
                iArr7 = iArr11;
                iArr8 = iArr10;
                i10 = i21;
                i13 = i20;
                i8 = i15;
                i14 = i19;
                iArr2 = iArr9;
                bArr = bArr4;
                iArr5 = iArr13;
                i6 = i17;
                bitInputStream = bitInputStream2;
            } else {
                i12++;
                if (i12 >= i6) {
                    throw new IOException("Block overrun in MTF, " + i12 + " exceeds " + i6);
                }
                int i31 = i6;
                checkBounds(i11, 257, "nextSym");
                int i32 = i11 - 1;
                char c3 = cArr[i32];
                int[] iArr14 = iArr2;
                checkBounds(c3, 256, "yy");
                byte b2 = bArr3[c3];
                int i33 = b2 & 255;
                iArr[i33] = iArr[i33] + 1;
                bArr[i12] = b2;
                if (i11 <= 16) {
                    while (i32 > 0) {
                        int i34 = i32 - 1;
                        cArr[i32] = cArr[i34];
                        i32 = i34;
                    }
                    c = 0;
                } else {
                    c = 0;
                    System.arraycopy(cArr, 0, cArr, 1, i32);
                }
                cArr[c] = c3;
                if (i14 == 0) {
                    int i35 = i13 + 1;
                    checkBounds(i35, 18002, "groupNo");
                    int i36 = bArr2[i35] & 255;
                    checkBounds(i36, 6, "zt");
                    int[] iArr15 = iArr4[i36];
                    int[] iArr16 = iArr3[i36];
                    int[] iArr17 = iArr5[i36];
                    i4 = iArr14[i36];
                    i13 = i35;
                    iArr6 = iArr15;
                    iArr7 = iArr16;
                    iArr8 = iArr17;
                    str2 = "zn";
                    i5 = 258;
                    i14 = 49;
                } else {
                    i14--;
                    i4 = i10;
                    str2 = "zn";
                    i5 = 258;
                }
                checkBounds(i4, i5, str2);
                int iBsR2 = bsR(bitInputStream2, i4);
                int i37 = i4;
                while (iBsR2 > iArr7[i37]) {
                    i37++;
                    checkBounds(i37, 258, str2);
                    iBsR2 = (iBsR2 << 1) | bsR(bitInputStream2, 1);
                }
                int i38 = iBsR2 - iArr6[i37];
                checkBounds(i38, 258, "zvec");
                i11 = iArr8[i38];
                i10 = i4;
                bitInputStream = bitInputStream2;
                i8 = i15;
                i6 = i31;
                iArr2 = iArr14;
                bZip2CompressorInputStream = this;
            }
        }
        bZip2CompressorInputStream.last = i12;
    }

    private int getAndMoveToFrontDecode0() throws IOException {
        Data data = this.data;
        int i = data.selector[0] & 255;
        checkBounds(i, 6, "zt");
        int[] iArr = data.limit[i];
        int i2 = data.minLens[i];
        checkBounds(i2, 258, "zn");
        int iBsR = bsR(this.bin, i2);
        while (iBsR > iArr[i2]) {
            i2++;
            checkBounds(i2, 258, "zn");
            iBsR = (iBsR << 1) | bsR(this.bin, 1);
        }
        int i3 = iBsR - data.base[i][i2];
        checkBounds(i3, 258, "zvec");
        return data.perm[i][i3];
    }

    private static void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        int i8 = 23;
        while (true) {
            i8--;
            if (i8 <= 0) {
                break;
            }
            iArr2[i8] = 0;
            iArr[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            char c = cArr[i9];
            checkBounds(c, 258, "length");
            int i10 = c + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        int i11 = iArr2[0];
        for (int i12 = 1; i12 < 23; i12++) {
            i11 += iArr2[i12];
            iArr2[i12] = i11;
        }
        int i13 = iArr2[i];
        int i14 = i;
        while (i14 <= i2) {
            int i15 = i14 + 1;
            int i16 = iArr2[i15];
            int i17 = i4 + (i16 - i13);
            iArr[i14] = i17 - 1;
            i4 = i17 << 1;
            i14 = i15;
            i13 = i16;
        }
        for (int i18 = i + 1; i18 <= i2; i18++) {
            iArr2[i18] = ((iArr[i18 - 1] + 1) << 1) - iArr2[i18];
        }
    }

    private boolean init(boolean z) throws IOException {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream == null) {
            throw new IOException("No InputStream");
        }
        if (!z) {
            bitInputStream.clearBitCache();
        }
        int nextByte = readNextByte(this.bin);
        if (nextByte == -1 && !z) {
            return false;
        }
        int nextByte2 = readNextByte(this.bin);
        int nextByte3 = readNextByte(this.bin);
        if (nextByte != 66 || nextByte2 != 90 || nextByte3 != 104) {
            throw new IOException(z ? "Stream is not in the BZip2 format" : "Garbage after a valid BZip2 stream");
        }
        int nextByte4 = readNextByte(this.bin);
        if (nextByte4 < 49 || nextByte4 > 57) {
            throw new IOException("BZip2 block size is invalid");
        }
        this.blockSize100k = nextByte4 - 48;
        this.computedCombinedCRC = 0;
        return true;
    }

    private void initBlock() throws IOException {
        BitInputStream bitInputStream = this.bin;
        do {
            char cBsGetUByte = bsGetUByte(bitInputStream);
            char cBsGetUByte2 = bsGetUByte(bitInputStream);
            char cBsGetUByte3 = bsGetUByte(bitInputStream);
            char cBsGetUByte4 = bsGetUByte(bitInputStream);
            char cBsGetUByte5 = bsGetUByte(bitInputStream);
            char cBsGetUByte6 = bsGetUByte(bitInputStream);
            if (cBsGetUByte != 23 || cBsGetUByte2 != 'r' || cBsGetUByte3 != 'E' || cBsGetUByte4 != '8' || cBsGetUByte5 != 'P' || cBsGetUByte6 != 144) {
                if (cBsGetUByte != '1' || cBsGetUByte2 != 'A' || cBsGetUByte3 != 'Y' || cBsGetUByte4 != '&' || cBsGetUByte5 != 'S' || cBsGetUByte6 != 'Y') {
                    this.currentState = 0;
                    throw new IOException("Bad block header");
                }
                this.storedBlockCRC = bsGetInt(bitInputStream);
                this.blockRandomised = bsR(bitInputStream, 1) == 1;
                if (this.data == null) {
                    this.data = new Data(this.blockSize100k);
                }
                getAndMoveToFrontDecode();
                this.crc.initializeCRC();
                this.currentState = 1;
                return;
            }
        } while (!complete());
    }

    private void makeMaps() {
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.seqToUnseq;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (zArr[i2]) {
                bArr[i] = (byte) i2;
                i++;
            }
        }
        this.nInUse = i;
    }

    private int read0() {
        switch (this.currentState) {
            case 0:
                return -1;
            case 1:
                return setupBlock();
            case 2:
                throw new IllegalStateException();
            case 3:
                return setupRandPartB();
            case 4:
                return setupRandPartC();
            case 5:
                throw new IllegalStateException();
            case 6:
                return setupNoRandPartB();
            case 7:
                return setupNoRandPartC();
            default:
                throw new IllegalStateException();
        }
    }

    private int readNextByte(BitInputStream bitInputStream) {
        return (int) bitInputStream.readBits(8);
    }

    private void recvDecodingTables() throws IOException {
        BitInputStream bitInputStream = this.bin;
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.recvDecodingTables_pos;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.selectorMtf;
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            if (bsGetBit(bitInputStream)) {
                i |= 1 << i2;
            }
        }
        Arrays.fill(zArr, false);
        for (int i3 = 0; i3 < 16; i3++) {
            if (((1 << i3) & i) != 0) {
                int i4 = i3 << 4;
                for (int i5 = 0; i5 < 16; i5++) {
                    if (bsGetBit(bitInputStream)) {
                        zArr[i4 + i5] = true;
                    }
                }
            }
        }
        makeMaps();
        int i6 = this.nInUse + 2;
        int iBsR = bsR(bitInputStream, 3);
        int iBsR2 = bsR(bitInputStream, 15);
        if (iBsR2 < 0) {
            throw new IOException("Corrupted input, nSelectors value negative");
        }
        checkBounds(i6, 259, "alphaSize");
        checkBounds(iBsR, 7, "nGroups");
        for (int i7 = 0; i7 < iBsR2; i7++) {
            int i8 = 0;
            while (bsGetBit(bitInputStream)) {
                i8++;
            }
            if (i7 < 18002) {
                bArr3[i7] = (byte) i8;
            }
        }
        if (iBsR2 > 18002) {
            iBsR2 = 18002;
        }
        int i9 = iBsR;
        while (true) {
            i9--;
            if (i9 < 0) {
                break;
            } else {
                bArr[i9] = (byte) i9;
            }
        }
        for (int i10 = 0; i10 < iBsR2; i10++) {
            int i11 = bArr3[i10] & 255;
            checkBounds(i11, 6, "selectorMtf");
            byte b = bArr[i11];
            while (i11 > 0) {
                bArr[i11] = bArr[i11 - 1];
                i11--;
            }
            bArr[0] = b;
            bArr2[i10] = b;
        }
        char[][] cArr = data.temp_charArray2d;
        for (int i12 = 0; i12 < iBsR; i12++) {
            int iBsR3 = bsR(bitInputStream, 5);
            char[] cArr2 = cArr[i12];
            for (int i13 = 0; i13 < i6; i13++) {
                while (bsGetBit(bitInputStream)) {
                    iBsR3 += bsGetBit(bitInputStream) ? -1 : 1;
                }
                cArr2[i13] = (char) iBsR3;
            }
        }
        createHuffmanDecodingTables(i6, iBsR);
    }

    private int setupBlock() throws IOException {
        Data data;
        if (this.currentState == 0 || (data = this.data) == null) {
            return -1;
        }
        int[] iArr = data.cftab;
        int i = this.last + 1;
        int[] iArrInitTT = data.initTT(i);
        Data data2 = this.data;
        byte[] bArr = data2.ll8;
        iArr[0] = 0;
        System.arraycopy(data2.unzftab, 0, iArr, 1, 256);
        int i2 = iArr[0];
        for (int i3 = 1; i3 <= 256; i3++) {
            i2 += iArr[i3];
            iArr[i3] = i2;
        }
        int i4 = this.last;
        for (int i5 = 0; i5 <= i4; i5++) {
            int i6 = bArr[i5] & 255;
            int i7 = iArr[i6];
            iArr[i6] = i7 + 1;
            checkBounds(i7, i, "tt index");
            iArrInitTT[i7] = i5;
        }
        int i8 = this.origPtr;
        if (i8 < 0 || i8 >= iArrInitTT.length) {
            throw new IOException("Stream corrupted");
        }
        this.su_tPos = iArrInitTT[i8];
        this.su_count = 0;
        this.su_i2 = 0;
        this.su_ch2 = 256;
        if (!this.blockRandomised) {
            return setupNoRandPartA();
        }
        this.su_rNToGo = 0;
        this.su_rTPos = 0;
        return setupRandPartA();
    }

    private int setupNoRandPartA() throws IOException {
        if (this.su_i2 > this.last) {
            this.currentState = 5;
            endBlock();
            initBlock();
            return setupBlock();
        }
        this.su_chPrev = this.su_ch2;
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i = this.su_tPos;
        int i2 = bArr[i] & 255;
        this.su_ch2 = i2;
        checkBounds(i, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        this.su_i2++;
        this.currentState = 6;
        this.crc.updateCRC(i2);
        return i2;
    }

    private int setupNoRandPartB() throws IOException {
        if (this.su_ch2 != this.su_chPrev) {
            this.su_count = 1;
            return setupNoRandPartA();
        }
        int i = this.su_count + 1;
        this.su_count = i;
        if (i < 4) {
            return setupNoRandPartA();
        }
        checkBounds(this.su_tPos, this.data.ll8.length, "su_tPos");
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i2 = this.su_tPos;
        this.su_z = (char) (bArr[i2] & 255);
        this.su_tPos = data.tt[i2];
        this.su_j2 = 0;
        return setupNoRandPartC();
    }

    private int setupNoRandPartC() {
        if (this.su_j2 >= this.su_z) {
            this.su_i2++;
            this.su_count = 0;
            return setupNoRandPartA();
        }
        int i = this.su_ch2;
        this.crc.updateCRC(i);
        this.su_j2++;
        this.currentState = 7;
        return i;
    }

    private int setupRandPartA() throws IOException {
        if (this.su_i2 > this.last) {
            endBlock();
            initBlock();
            return setupBlock();
        }
        this.su_chPrev = this.su_ch2;
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i = this.su_tPos;
        int i2 = bArr[i] & 255;
        checkBounds(i, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        int i3 = this.su_rNToGo;
        if (i3 == 0) {
            this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
            int i4 = this.su_rTPos + 1;
            this.su_rTPos = i4;
            if (i4 == 512) {
                this.su_rTPos = 0;
            }
        } else {
            this.su_rNToGo = i3 - 1;
        }
        int i5 = i2 ^ (this.su_rNToGo == 1 ? 1 : 0);
        this.su_ch2 = i5;
        this.su_i2++;
        this.currentState = 3;
        this.crc.updateCRC(i5);
        return i5;
    }

    private int setupRandPartB() throws IOException {
        if (this.su_ch2 != this.su_chPrev) {
            this.currentState = 2;
            this.su_count = 1;
        } else {
            int i = this.su_count + 1;
            this.su_count = i;
            if (i >= 4) {
                Data data = this.data;
                byte[] bArr = data.ll8;
                int i2 = this.su_tPos;
                this.su_z = (char) (bArr[i2] & 255);
                checkBounds(i2, data.tt.length, "su_tPos");
                this.su_tPos = this.data.tt[this.su_tPos];
                int i3 = this.su_rNToGo;
                if (i3 == 0) {
                    this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
                    int i4 = this.su_rTPos + 1;
                    this.su_rTPos = i4;
                    if (i4 == 512) {
                        this.su_rTPos = 0;
                    }
                } else {
                    this.su_rNToGo = i3 - 1;
                }
                this.su_j2 = 0;
                this.currentState = 4;
                if (this.su_rNToGo == 1) {
                    this.su_z = (char) (this.su_z ^ 1);
                }
                return setupRandPartC();
            }
            this.currentState = 2;
        }
        return setupRandPartA();
    }

    private int setupRandPartC() {
        if (this.su_j2 < this.su_z) {
            this.crc.updateCRC(this.su_ch2);
            this.su_j2++;
            return this.su_ch2;
        }
        this.currentState = 2;
        this.su_i2++;
        this.su_count = 0;
        return setupRandPartA();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream != null) {
            try {
                bitInputStream.close();
            } finally {
                this.data = null;
                this.bin = null;
            }
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.bin == null) {
            throw new IOException("Stream closed");
        }
        int i = read0();
        count(i < 0 ? -1 : 1);
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("offs(" + i + ") < 0.");
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len(" + i2 + ") < 0.");
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            throw new IndexOutOfBoundsException("offs(" + i + ") + len(" + i2 + ") > dest.length(" + bArr.length + ").");
        }
        if (this.bin == null) {
            throw new IOException("Stream closed");
        }
        if (i2 == 0) {
            return 0;
        }
        int i4 = i;
        while (i4 < i3) {
            int i5 = read0();
            if (i5 < 0) {
                break;
            }
            bArr[i4] = (byte) i5;
            count(1);
            i4++;
        }
        if (i4 == i) {
            return -1;
        }
        return i4 - i;
    }
}
