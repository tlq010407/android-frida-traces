package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.DolbyVisionConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.MediaController;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
abstract class AtomParsers {
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    private static final class EsdsData {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public EsdsData(String str, byte[] bArr, long j, long j2) {
            this.mimeType = str;
            this.initializationData = bArr;
            this.bitrate = j;
            this.peakBitrate = j2;
        }
    }

    private interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static final class StsdData {
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom, Format format) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if ("audio/raw".equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (unsignedIntToInt == 0 || unsignedIntToInt % pcmFrameSize != 0) {
                    Log.w("AtomParsers", "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + unsignedIntToInt);
                    unsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = unsignedIntToInt == 0 ? -1 : unsignedIntToInt;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == -1 ? this.data.readUnsignedIntToInt() : i;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 != 0) {
                return this.currentByte & 15;
            }
            int unsignedByte = this.data.readUnsignedByte();
            this.currentByte = unsignedByte;
            return (unsignedByte & 240) >> 4;
        }
    }

    private static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    private static ByteBuffer allocateHdrStaticInfo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private static int findBoxPosition(ParsableByteArray parsableByteArray, int i, int i2, int i3) throws ParserException {
        int position = parsableByteArray.getPosition();
        ExtractorUtil.checkContainerInput(position >= i2, null);
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int i4 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i4 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == i) {
                return position;
            }
            position += i4;
        }
        return -1;
    }

    private static int getTrackTypeForHdlr(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static void maybeSkipRemainingMetaAtomHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int unsignedShort;
        int unsignedFixedPoint1616;
        int i6;
        int unsignedIntToInt;
        String str2;
        String str3;
        int i7;
        Format formatBuild;
        int i8 = i2;
        int i9 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i8 + 16);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        if (unsignedShort == 0 || unsignedShort == 1) {
            int unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 4);
            i6 = parsableByteArray.readInt();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
            unsignedIntToInt = unsignedShort2;
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            unsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
            i6 = 0;
        }
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733217) {
            Pair sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i8, i9);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = "audio/vnd.dts";
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = "audio/vnd.dts.hd";
        } else if (iIntValue == 1685353317) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = "audio/3gpp";
        } else {
            if (iIntValue != 1935767394) {
                str3 = "audio/raw";
                if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    i7 = 2;
                } else if (iIntValue == 1953984371) {
                    i7 = 268435456;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    str2 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = "audio/alac";
                } else if (iIntValue == 1634492791) {
                    str2 = "audio/g711-alaw";
                } else if (iIntValue == 1970037111) {
                    str2 = "audio/g711-mlaw";
                } else if (iIntValue == 1332770163) {
                    str2 = "audio/opus";
                } else if (iIntValue == 1716281667) {
                    str2 = "audio/flac";
                } else if (iIntValue == 1835823201) {
                    str2 = "audio/true-hd";
                } else {
                    i7 = -1;
                    str3 = null;
                }
                String str4 = str3;
                EsdsData esdsFromParent = null;
                String str5 = null;
                List listOf = null;
                while (position - i8 < i9) {
                    parsableByteArray.setPosition(position);
                    int i10 = parsableByteArray.readInt();
                    ExtractorUtil.checkContainerInput(i10 > 0, "childAtomSize must be positive");
                    int i11 = parsableByteArray.readInt();
                    if (i11 == 1835557187) {
                        int i12 = i10 - 13;
                        byte[] bArr = new byte[i12];
                        parsableByteArray.setPosition(position + 13);
                        parsableByteArray.readBytes(bArr, 0, i12);
                        listOf = ImmutableList.of((Object) bArr);
                    } else {
                        if (i11 == 1702061171 || (z && i11 == 2002876005)) {
                            int iFindBoxPosition = i11 == 1702061171 ? position : findBoxPosition(parsableByteArray, 1702061171, position, i10);
                            if (iFindBoxPosition != -1) {
                                esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindBoxPosition);
                                String str6 = esdsFromParent.mimeType;
                                byte[] bArr2 = esdsFromParent.initializationData;
                                if (bArr2 != null) {
                                    if (MediaController.AUDIO_MIME_TYPE.equals(str6)) {
                                        AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr2);
                                        unsignedFixedPoint1616 = audioSpecificConfig.sampleRateHz;
                                        unsignedIntToInt = audioSpecificConfig.channelCount;
                                        str5 = audioSpecificConfig.codecs;
                                    }
                                    listOf = ImmutableList.of((Object) bArr2);
                                }
                                str4 = str6;
                            }
                        } else {
                            if (i11 == 1684103987) {
                                parsableByteArray.setPosition(position + 8);
                                formatBuild = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i11 == 1684366131) {
                                parsableByteArray.setPosition(position + 8);
                                formatBuild = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i11 == 1684103988) {
                                parsableByteArray.setPosition(position + 8);
                                formatBuild = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i11 == 1684892784) {
                                if (i6 <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + i6, null);
                                }
                                unsignedFixedPoint1616 = i6;
                                unsignedIntToInt = 2;
                            } else if (i11 == 1684305011) {
                                formatBuild = new Format.Builder().setId(i4).setSampleMimeType(str4).setChannelCount(unsignedIntToInt).setSampleRate(unsignedFixedPoint1616).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                            } else if (i11 == 1682927731) {
                                int i13 = i10 - 8;
                                byte[] bArr3 = opusMagic;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i13);
                                parsableByteArray.setPosition(position + 8);
                                parsableByteArray.readBytes(bArrCopyOf, bArr3.length, i13);
                                listOf = OpusUtil.buildInitializationData(bArrCopyOf);
                            } else if (i11 == 1684425825) {
                                byte[] bArr4 = new byte[i10 - 8];
                                bArr4[0] = 102;
                                bArr4[1] = 76;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                parsableByteArray.setPosition(position + 12);
                                parsableByteArray.readBytes(bArr4, 4, i10 - 12);
                                listOf = ImmutableList.of((Object) bArr4);
                            } else if (i11 == 1634492771) {
                                int i14 = i10 - 12;
                                byte[] bArr5 = new byte[i14];
                                parsableByteArray.setPosition(position + 12);
                                parsableByteArray.readBytes(bArr5, 0, i14);
                                Pair alacAudioSpecificConfig = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(bArr5);
                                int iIntValue2 = ((Integer) alacAudioSpecificConfig.first).intValue();
                                int iIntValue3 = ((Integer) alacAudioSpecificConfig.second).intValue();
                                listOf = ImmutableList.of((Object) bArr5);
                                unsignedIntToInt = iIntValue3;
                                unsignedFixedPoint1616 = iIntValue2;
                            }
                            stsdData.format = formatBuild;
                        }
                        position += i10;
                        i8 = i2;
                        i9 = i3;
                    }
                    position += i10;
                    i8 = i2;
                    i9 = i3;
                }
                if (stsdData.format == null || str4 == null) {
                }
                Format.Builder language = new Format.Builder().setId(i4).setSampleMimeType(str4).setCodecs(str5).setChannelCount(unsignedIntToInt).setSampleRate(unsignedFixedPoint1616).setPcmEncoding(i7).setInitializationData(listOf).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str);
                if (esdsFromParent != null) {
                    language.setAverageBitrate(Ints.saturatedCast(esdsFromParent.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsFromParent.peakBitrate));
                }
                stsdData.format = language.build();
                return;
            }
            str2 = "audio/amr-wb";
        }
        str3 = str2;
        i7 = -1;
        String str42 = str3;
        EsdsData esdsFromParent2 = null;
        String str52 = null;
        List listOf2 = null;
        while (position - i8 < i9) {
        }
        if (stsdData.format == null) {
        }
    }

    static Pair parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        int i3 = i + 8;
        String string = null;
        Integer numValueOf = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i6 = parsableByteArray.readInt();
            int i7 = parsableByteArray.readInt();
            if (i7 == 1718775137) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i7 == 1935894637) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i7 == 1935894633) {
                i4 = i3;
                i5 = i6;
            }
            i3 += i6;
        }
        if (!"cenc".equals(string) && !"cbc1".equals(string) && !"cens".equals(string) && !"cbcs".equals(string)) {
            return null;
        }
        ExtractorUtil.checkContainerInput(numValueOf != null, "frma atom is mandatory");
        ExtractorUtil.checkContainerInput(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, string);
        ExtractorUtil.checkContainerInput(schiFromParent != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (TrackEncryptionBox) Util.castNonNull(schiFromParent));
    }

    private static Pair parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(1701606260);
        if (leafAtomOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static EsdsData parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 12);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if ("audio/mpeg".equals(mimeTypeFromMp4ObjectType) || "audio/vnd.dts".equals(mimeTypeFromMp4ObjectType) || "audio/vnd.dts.hd".equals(mimeTypeFromMp4ObjectType)) {
            return new EsdsData(mimeTypeFromMp4ObjectType, null, -1L, -1L);
        }
        parsableByteArray.skipBytes(4);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return new EsdsData(mimeTypeFromMp4ObjectType, bArr, unsignedInt2 > 0 ? unsignedInt2 : -1L, unsignedInt > 0 ? unsignedInt : -1L);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(unsignedInt), "" + ((char) (((unsignedShort >> 10) & 31) + 96)) + ((char) (((unsignedShort >> 5) & 31) + 96)) + ((char) ((unsignedShort & 31) + 96)));
    }

    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(1751411826);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(1801812339);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(1768715124);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i2] = parsableByteArray.readString(i3 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int i4 = parsableByteArray2.readInt();
            int i5 = parsableByteArray2.readInt() - 1;
            if (i5 < 0 || i5 >= i) {
                Log.w("AtomParsers", "Skipped metadata with unknown key index: " + i5);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + i4, strArr[i5]);
                if (mdtaMetadataEntryFromIlst != null) {
                    arrayList.add(mdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray2.setPosition(position + i4);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String nullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (nullTerminatedString != null) {
                stsdData.format = new Format.Builder().setId(i3).setSampleMimeType(nullTerminatedString).build();
            }
        }
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, i4 + i3);
            }
            i3 += i4;
        }
        return null;
    }

    private static Pair parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        Pair commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i3)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i3;
        }
        return null;
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = unsignedByte & 15;
                    i4 = (unsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new TrackEncryptionBox(z, str, unsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += i6;
        }
    }

    private static Metadata parseSmta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (i2 < 14) {
                    return null;
                }
                parsableByteArray.skipBytes(5);
                int unsignedByte = parsableByteArray.readUnsignedByte();
                if (unsignedByte != 12 && unsignedByte != 13) {
                    return null;
                }
                float f = unsignedByte == 12 ? 240.0f : 120.0f;
                parsableByteArray.skipBytes(1);
                return new Metadata(new SmtaMetadataEntry(f, parsableByteArray.readUnsignedByte()));
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x042a A[EDGE_INSN: B:212:0x042a->B:171:0x042a BREAK  A[LOOP:2: B:154:0x03c7->B:170:0x0422], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int unsignedIntToInt3;
        int fixedSampleSize;
        int i;
        boolean z2;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        int i6;
        Track track2;
        int i7;
        long[] jArr;
        int[] iArr;
        int i8;
        long j;
        long[] jArr2;
        int[] iArr2;
        int i9;
        int i10;
        long[] jArr3;
        int i11;
        int i12;
        long[] jArr4;
        boolean z4;
        int i13;
        boolean z5;
        int i14;
        long[] jArr5;
        int i15;
        long[] jArr6;
        int[] iArr3;
        int i16;
        int[] iArr4;
        boolean z6;
        boolean z7;
        int i17;
        int i18;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(1937011578);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType, track.format);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(1937013298);
            if (leafAtomOfType2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(1937007471);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1668232756));
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1937011555))).data;
        ParsableByteArray parsableByteArray3 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1937011827))).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(1937011571);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(1668576371);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt6 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt2 > 0) {
                unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt() - 1;
                fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
                String str = track.format.sampleMimeType;
                if (fixedSampleSize == -1 && (("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && unsignedIntToInt4 == 0 && unsignedIntToInt == 0 && unsignedIntToInt2 == 0)) {
                    i = unsignedIntToInt2;
                    z2 = true;
                } else {
                    i = unsignedIntToInt2;
                    z2 = false;
                }
                if (z2) {
                    long[] jArrCopyOf = new long[sampleCount];
                    int[] iArrCopyOf = new int[sampleCount];
                    long[] jArrCopyOf2 = new long[sampleCount];
                    int[] iArrCopyOf2 = new int[sampleCount];
                    int unsignedIntToInt7 = unsignedIntToInt3;
                    int i19 = 0;
                    int i20 = 0;
                    int i21 = 0;
                    int i22 = 0;
                    int unsignedIntToInt8 = 0;
                    long j2 = 0;
                    long j3 = 0;
                    int i23 = unsignedIntToInt;
                    int i24 = unsignedIntToInt6;
                    int i25 = unsignedIntToInt5;
                    int i26 = unsignedIntToInt4;
                    int i27 = i;
                    while (true) {
                        i2 = i26;
                        if (i19 >= sampleCount) {
                            i3 = i25;
                            i4 = i21;
                            i5 = i22;
                            break;
                        }
                        long j4 = j3;
                        int i28 = i22;
                        boolean zMoveNext = true;
                        while (i28 == 0) {
                            zMoveNext = chunkIterator.moveNext();
                            if (!zMoveNext) {
                                break;
                            }
                            int i29 = i25;
                            long j5 = chunkIterator.offset;
                            i28 = chunkIterator.numSamples;
                            j4 = j5;
                            i25 = i29;
                            i24 = i24;
                            sampleCount = sampleCount;
                        }
                        int i30 = sampleCount;
                        i3 = i25;
                        int i31 = i24;
                        if (!zMoveNext) {
                            Log.w("AtomParsers", "Unexpected end of chunk data");
                            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i19);
                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i19);
                            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i19);
                            iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i19);
                            sampleCount = i19;
                            i4 = i21;
                            i5 = i28;
                            break;
                        }
                        if (parsableByteArray5 != null) {
                            while (unsignedIntToInt8 == 0 && i23 > 0) {
                                unsignedIntToInt8 = parsableByteArray5.readUnsignedIntToInt();
                                i21 = parsableByteArray5.readInt();
                                i23--;
                            }
                            unsignedIntToInt8--;
                        }
                        int i32 = i21;
                        jArrCopyOf[i19] = j4;
                        int nextSampleSize = stz2SampleSizeBox.readNextSampleSize();
                        iArrCopyOf[i19] = nextSampleSize;
                        if (nextSampleSize > i20) {
                            i20 = nextSampleSize;
                        }
                        jArrCopyOf2[i19] = j2 + i32;
                        iArrCopyOf2[i19] = parsableByteArray4 == null ? 1 : 0;
                        if (i19 == unsignedIntToInt7) {
                            iArrCopyOf2[i19] = 1;
                            i27--;
                            if (i27 > 0) {
                                unsignedIntToInt7 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray4)).readUnsignedIntToInt() - 1;
                            }
                        }
                        int i33 = unsignedIntToInt7;
                        j2 += i31;
                        int unsignedIntToInt9 = i3 - 1;
                        if (unsignedIntToInt9 != 0 || i2 <= 0) {
                            i9 = i31;
                            i10 = i2;
                        } else {
                            unsignedIntToInt9 = parsableByteArray3.readUnsignedIntToInt();
                            i9 = parsableByteArray3.readInt();
                            i10 = i2 - 1;
                        }
                        int i34 = unsignedIntToInt9;
                        long j6 = j4 + iArrCopyOf[i19];
                        i22 = i28 - 1;
                        i19++;
                        j3 = j6;
                        unsignedIntToInt7 = i33;
                        i24 = i9;
                        sampleCount = i30;
                        i21 = i32;
                        i26 = i10;
                        i25 = i34;
                    }
                    long j7 = j2 + i4;
                    if (parsableByteArray5 != null) {
                        while (i23 > 0) {
                            if (parsableByteArray5.readUnsignedIntToInt() != 0) {
                                z3 = false;
                                break;
                            }
                            parsableByteArray5.readInt();
                            i23--;
                        }
                        z3 = true;
                        if (i27 != 0 && i3 == 0 && i5 == 0 && i2 == 0) {
                            i6 = unsignedIntToInt8;
                            if (i6 == 0 && z3) {
                                track2 = track;
                            }
                            i7 = sampleCount;
                            jArr = jArrCopyOf;
                            iArr = iArrCopyOf;
                            i8 = i20;
                            j = j7;
                            jArr2 = jArrCopyOf2;
                            iArr2 = iArrCopyOf2;
                        } else {
                            i6 = unsignedIntToInt8;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("Inconsistent stbl box for track ");
                        track2 = track;
                        sb.append(track2.id);
                        sb.append(": remainingSynchronizationSamples ");
                        sb.append(i27);
                        sb.append(", remainingSamplesAtTimestampDelta ");
                        sb.append(i3);
                        sb.append(", remainingSamplesInChunk ");
                        sb.append(i5);
                        sb.append(", remainingTimestampDeltaChanges ");
                        sb.append(i2);
                        sb.append(", remainingSamplesAtTimestampOffset ");
                        sb.append(i6);
                        sb.append(z3 ? ", ctts invalid" : "");
                        Log.w("AtomParsers", sb.toString());
                        i7 = sampleCount;
                        jArr = jArrCopyOf;
                        iArr = iArrCopyOf;
                        i8 = i20;
                        j = j7;
                        jArr2 = jArrCopyOf2;
                        iArr2 = iArrCopyOf2;
                    } else {
                        z3 = true;
                        if (i27 != 0) {
                            i6 = unsignedIntToInt8;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Inconsistent stbl box for track ");
                            track2 = track;
                            sb2.append(track2.id);
                            sb2.append(": remainingSynchronizationSamples ");
                            sb2.append(i27);
                            sb2.append(", remainingSamplesAtTimestampDelta ");
                            sb2.append(i3);
                            sb2.append(", remainingSamplesInChunk ");
                            sb2.append(i5);
                            sb2.append(", remainingTimestampDeltaChanges ");
                            sb2.append(i2);
                            sb2.append(", remainingSamplesAtTimestampOffset ");
                            sb2.append(i6);
                            sb2.append(z3 ? ", ctts invalid" : "");
                            Log.w("AtomParsers", sb2.toString());
                            i7 = sampleCount;
                            jArr = jArrCopyOf;
                            iArr = iArrCopyOf;
                            i8 = i20;
                            j = j7;
                            jArr2 = jArrCopyOf2;
                            iArr2 = iArrCopyOf2;
                        }
                    }
                } else {
                    int i35 = chunkIterator.length;
                    long[] jArr7 = new long[i35];
                    int[] iArr5 = new int[i35];
                    while (chunkIterator.moveNext()) {
                        int i36 = chunkIterator.index;
                        jArr7[i36] = chunkIterator.offset;
                        iArr5[i36] = chunkIterator.numSamples;
                    }
                    FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr7, iArr5, unsignedIntToInt6);
                    long[] jArr8 = resultsRechunk.offsets;
                    int[] iArr6 = resultsRechunk.sizes;
                    int i37 = resultsRechunk.maximumSize;
                    long[] jArr9 = resultsRechunk.timestamps;
                    int[] iArr7 = resultsRechunk.flags;
                    long j8 = resultsRechunk.duration;
                    track2 = track;
                    i7 = sampleCount;
                    jArr = jArr8;
                    iArr = iArr6;
                    i8 = i37;
                    iArr2 = iArr7;
                    j = j8;
                    jArr2 = jArr9;
                }
                long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j, 1000000L, track2.timescale);
                jArr3 = track2.editListDurations;
                if (jArr3 != null) {
                    Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
                    return new TrackSampleTable(track, jArr, iArr, i8, jArr2, iArr2, jScaleLargeTimestamp);
                }
                if (jArr3.length == 1 && track2.type == 1 && jArr2.length >= 2) {
                    long j9 = ((long[]) Assertions.checkNotNull(track2.editListMediaTimes))[0];
                    long jScaleLargeTimestamp2 = j9 + Util.scaleLargeTimestamp(track2.editListDurations[0], track2.timescale, track2.movieTimescale);
                    i11 = i7;
                    if (canApplyEditWithGaplessInfo(jArr2, j, j9, jScaleLargeTimestamp2)) {
                        long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j9 - jArr2[0], track2.format.sampleRate, track2.timescale);
                        i12 = i8;
                        long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j - jScaleLargeTimestamp2, track2.format.sampleRate, track2.timescale);
                        if ((jScaleLargeTimestamp3 != 0 || jScaleLargeTimestamp4 != 0) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                            gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                            gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                            Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
                            return new TrackSampleTable(track, jArr, iArr, i12, jArr2, iArr2, Util.scaleLargeTimestamp(track2.editListDurations[0], 1000000L, track2.movieTimescale));
                        }
                    }
                    jArr4 = track2.editListDurations;
                    if (jArr4.length != 1 && jArr4[0] == 0) {
                        long j10 = ((long[]) Assertions.checkNotNull(track2.editListMediaTimes))[0];
                        for (int i38 = 0; i38 < jArr2.length; i38++) {
                            jArr2[i38] = Util.scaleLargeTimestamp(jArr2[i38] - j10, 1000000L, track2.timescale);
                        }
                        return new TrackSampleTable(track, jArr, iArr, i12, jArr2, iArr2, Util.scaleLargeTimestamp(j - j10, 1000000L, track2.timescale));
                    }
                    z4 = track2.type != 1;
                    int[] iArr8 = new int[jArr4.length];
                    int[] iArr9 = new int[jArr4.length];
                    long[] jArr10 = (long[]) Assertions.checkNotNull(track2.editListMediaTimes);
                    i13 = 0;
                    int i39 = 0;
                    z5 = false;
                    i14 = 0;
                    while (true) {
                        jArr5 = track2.editListDurations;
                        if (i13 < jArr5.length) {
                            break;
                        }
                        long[] jArr11 = jArr;
                        int[] iArr10 = iArr;
                        long j11 = jArr10[i13];
                        if (j11 != -1) {
                            long j12 = jArr5[i13];
                            boolean z8 = z5;
                            int i40 = i14;
                            long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(j12, track2.timescale, track2.movieTimescale);
                            iArr8[i13] = Util.binarySearchFloor(jArr2, j11, true, true);
                            z6 = z4;
                            iArr9[i13] = Util.binarySearchCeil(jArr2, j11 + jScaleLargeTimestamp5, z6, false);
                            while (true) {
                                i18 = iArr8[i13];
                                i17 = iArr9[i13];
                                if (i18 >= i17 || (iArr2[i18] & 1) != 0) {
                                    break;
                                }
                                iArr8[i13] = i18 + 1;
                            }
                            i39 += i17 - i18;
                            z7 = z8 | (i40 != i18);
                        } else {
                            int i41 = i14;
                            z6 = z4;
                            z7 = z5;
                            i17 = i41;
                        }
                        i13++;
                        z5 = z7;
                        z4 = z6;
                        jArr = jArr11;
                        i14 = i17;
                        iArr = iArr10;
                    }
                    long[] jArr12 = jArr;
                    int[] iArr11 = iArr;
                    boolean z9 = z5;
                    i15 = 0;
                    boolean z10 = z9 | (i39 == i11);
                    long[] jArr13 = !z10 ? new long[i39] : jArr12;
                    int[] iArr12 = !z10 ? new int[i39] : iArr11;
                    int i42 = !z10 ? 0 : i12;
                    int[] iArr13 = !z10 ? new int[i39] : iArr2;
                    long[] jArr14 = new long[i39];
                    int i43 = i42;
                    int[] iArr14 = iArr11;
                    long j13 = 0;
                    int i44 = 0;
                    while (i15 < track2.editListDurations.length) {
                        long j14 = track2.editListMediaTimes[i15];
                        int i45 = iArr8[i15];
                        int[] iArr15 = iArr8;
                        int i46 = iArr9[i15];
                        int[] iArr16 = iArr9;
                        if (z10) {
                            int i47 = i46 - i45;
                            System.arraycopy(jArr12, i45, jArr13, i44, i47);
                            jArr6 = jArr12;
                            iArr3 = iArr14;
                            System.arraycopy(iArr3, i45, iArr12, i44, i47);
                            System.arraycopy(iArr2, i45, iArr13, i44, i47);
                        } else {
                            jArr6 = jArr12;
                            iArr3 = iArr14;
                        }
                        int i48 = i43;
                        while (true) {
                            i16 = i15;
                            iArr4 = iArr13;
                            if (i45 < i46) {
                                long[] jArr15 = jArr2;
                                int[] iArr17 = iArr2;
                                long j15 = j13;
                                jArr14[i44] = Util.scaleLargeTimestamp(j13, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(Math.max(0L, jArr2[i45] - j14), 1000000L, track2.timescale);
                                if (z10 && iArr12[i44] > i48) {
                                    i48 = iArr3[i45];
                                }
                                i44++;
                                i45++;
                                iArr2 = iArr17;
                                j13 = j15;
                                jArr2 = jArr15;
                                iArr13 = iArr4;
                                i15 = i16;
                            }
                        }
                        i43 = i48;
                        j13 += track2.editListDurations[i16];
                        iArr14 = iArr3;
                        iArr9 = iArr16;
                        jArr12 = jArr6;
                        iArr13 = iArr4;
                        i15 = i16 + 1;
                        iArr8 = iArr15;
                    }
                    return new TrackSampleTable(track, jArr13, iArr12, i43, jArr14, iArr13, Util.scaleLargeTimestamp(j13, 1000000L, track2.movieTimescale));
                }
                i11 = i7;
                i12 = i8;
                jArr4 = track2.editListDurations;
                if (jArr4.length != 1) {
                }
                if (track2.type != 1) {
                }
                int[] iArr82 = new int[jArr4.length];
                int[] iArr92 = new int[jArr4.length];
                long[] jArr102 = (long[]) Assertions.checkNotNull(track2.editListMediaTimes);
                i13 = 0;
                int i392 = 0;
                z5 = false;
                i14 = 0;
                while (true) {
                    jArr5 = track2.editListDurations;
                    if (i13 < jArr5.length) {
                    }
                    i13++;
                    z5 = z7;
                    z4 = z6;
                    jArr = jArr11;
                    i14 = i17;
                    iArr = iArr10;
                }
                long[] jArr122 = jArr;
                int[] iArr112 = iArr;
                boolean z92 = z5;
                i15 = 0;
                boolean z102 = z92 | (i392 == i11);
                if (!z102) {
                }
                if (!z102) {
                }
                if (!z102) {
                }
                if (!z102) {
                }
                long[] jArr142 = new long[i392];
                int i432 = i42;
                int[] iArr142 = iArr112;
                long j132 = 0;
                int i442 = 0;
                while (i15 < track2.editListDurations.length) {
                }
                return new TrackSampleTable(track, jArr13, iArr12, i432, jArr142, iArr13, Util.scaleLargeTimestamp(j132, 1000000L, track2.movieTimescale));
            }
            parsableByteArray4 = null;
        } else {
            unsignedIntToInt2 = 0;
        }
        unsignedIntToInt3 = -1;
        fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
        String str2 = track.format.sampleMimeType;
        if (fixedSampleSize == -1) {
            i = unsignedIntToInt2;
            z2 = false;
        }
        if (z2) {
        }
        long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(j, 1000000L, track2.timescale);
        jArr3 = track2.editListDurations;
        if (jArr3 != null) {
        }
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        int i3;
        parsableByteArray.setPosition(12);
        int i4 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            int position = parsableByteArray.getPosition();
            int i6 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i6 > 0, "childAtomSize must be positive");
            int i7 = parsableByteArray.readInt();
            if (i7 == 1635148593 || i7 == 1635148595 || i7 == 1701733238 || i7 == 1831958048 || i7 == 1836070006 || i7 == 1752589105 || i7 == 1751479857 || i7 == 1932670515 || i7 == 1211250227 || i7 == 1987063864 || i7 == 1987063865 || i7 == 1635135537 || i7 == 1685479798 || i7 == 1685479729 || i7 == 1685481573 || i7 == 1685481521) {
                i3 = position;
                parseVideoSampleEntry(parsableByteArray, i7, i3, i6, i, i2, drmInitData, stsdData, i5);
            } else if (i7 == 1836069985 || i7 == 1701733217 || i7 == 1633889587 || i7 == 1700998451 || i7 == 1633889588 || i7 == 1835823201 || i7 == 1685353315 || i7 == 1685353317 || i7 == 1685353320 || i7 == 1685353324 || i7 == 1685353336 || i7 == 1935764850 || i7 == 1935767394 || i7 == 1819304813 || i7 == 1936684916 || i7 == 1953984371 || i7 == 778924082 || i7 == 778924083 || i7 == 1835557169 || i7 == 1835560241 || i7 == 1634492771 || i7 == 1634492791 || i7 == 1970037111 || i7 == 1332770163 || i7 == 1716281667) {
                i3 = position;
                parseAudioSampleEntry(parsableByteArray, i7, position, i6, i, str, z, drmInitData, stsdData, i5);
            } else {
                if (i7 == 1414810956 || i7 == 1954034535 || i7 == 2004251764 || i7 == 1937010800 || i7 == 1664495672) {
                    parseTextSampleEntry(parsableByteArray, i7, position, i6, i, str, stsdData);
                } else if (i7 == 1835365492) {
                    parseMetaDataSampleEntry(parsableByteArray, i7, position, i, stsdData);
                } else if (i7 == 1667329389) {
                    stsdData.format = new Format.Builder().setId(i).setSampleMimeType("application/x-camera-motion").build();
                }
                i3 = position;
            }
            parsableByteArray.setPosition(i3 + i6);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        String str2 = "application/ttml+xml";
        ImmutableList immutableListOf = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableListOf = ImmutableList.of((Object) bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new IllegalStateException();
                }
                stsdData.requiredSampleTransformation = 1;
                str2 = "application/x-mp4-cea-608";
            }
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableListOf).build();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long j;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = fullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            j = -9223372036854775807L;
            if (i4 >= i2) {
                parsableByteArray.skipBytes(i2);
                break;
            }
            if (parsableByteArray.getData()[position + i4] != -1) {
                long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                if (unsignedInt != 0) {
                    j = unsignedInt;
                }
            } else {
                i4++;
            }
        }
        parsableByteArray.skipBytes(16);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && i7 == -65536 && i8 == 0) {
            i3 = 90;
        } else if (i5 == 0 && i6 == -65536 && i7 == 65536 && i8 == 0) {
            i3 = 270;
        } else if (i5 == -65536 && i6 == 0 && i7 == 0 && i8 == -65536) {
            i3 = 180;
        }
        return new TkhdData(i, j, i3);
    }

    private static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        Atom.LeafAtom leafAtom2;
        long j2;
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType;
        Pair edts;
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.checkNotNull(containerAtom.getContainerAtomOfType(1835297121));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(1751411826))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1953196132))).data);
        if (j == -9223372036854775807L) {
            leafAtom2 = leafAtom;
            j2 = tkhd.duration;
        } else {
            leafAtom2 = leafAtom;
            j2 = j;
        }
        long mvhd = parseMvhd(leafAtom2.data);
        long jScaleLargeTimestamp = j2 != -9223372036854775807L ? Util.scaleLargeTimestamp(j2, 1000000L, mvhd) : -9223372036854775807L;
        Atom.ContainerAtom containerAtom3 = (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(1835626086))).getContainerAtomOfType(1937007212));
        Pair mdhd = parseMdhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(1835296868))).data);
        Atom.LeafAtom leafAtomOfType = containerAtom3.getLeafAtomOfType(1937011556);
        if (leafAtomOfType == null) {
            throw ParserException.createForMalformedContainer("Malformed sample table (stbl) missing sample description (stsd)", null);
        }
        StsdData stsd = parseStsd(leafAtomOfType.data, tkhd.id, tkhd.rotationDegrees, (String) mdhd.second, drmInitData, z2);
        if (z || (containerAtomOfType = containerAtom.getContainerAtomOfType(1701082227)) == null || (edts = parseEdts(containerAtomOfType)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        return new Track(tkhd.id, trackTypeForHdlr, ((Long) mdhd.first).longValue(), mvhd, jScaleLargeTimestamp, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static List parseTraks(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, long j, DrmInitData drmInitData, boolean z, boolean z2, Function function) {
        Track track;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (track = (Track) function.apply(parseTrak(containerAtom2, (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1836476516)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(track, (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(1835297121))).getContainerAtomOfType(1835626086))).getContainerAtomOfType(1937007212)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static Pair parseUdta(Atom.LeafAtom leafAtom) {
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        Metadata udtaMeta = null;
        Metadata smta = null;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            int i2 = parsableByteArray.readInt();
            if (i2 == 1835365473) {
                parsableByteArray.setPosition(position);
                udtaMeta = parseUdtaMeta(parsableByteArray, position + i);
            } else if (i2 == 1936553057) {
                parsableByteArray.setPosition(position);
                smta = parseSmta(parsableByteArray, position + i);
            }
            parsableByteArray.setPosition(position + i);
        }
        return Pair.create(udtaMeta, smta);
    }

    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaAtomHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i2);
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        DrmInitData drmInitData2;
        int i7;
        int i8;
        byte[] bArr;
        float f;
        List list;
        String str;
        int i9 = i2;
        int i10 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        StsdData stsdData2 = stsdData;
        parsableByteArray.setPosition(i9 + 16);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i9, i10);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData2.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str2 = "video/3gpp";
        String str3 = iIntValue == 1831958048 ? "video/mpeg" : iIntValue == 1211250227 ? "video/3gpp" : null;
        float paspFromParent = 1.0f;
        byte[] projFromParent = null;
        String str4 = null;
        List listOf = null;
        int i11 = -1;
        int iIsoColorPrimariesToColorSpace = -1;
        int i12 = -1;
        int iIsoTransferCharacteristicsToColorTransfer = -1;
        ByteBuffer byteBufferAllocateHdrStaticInfo = null;
        EsdsData esdsFromParent = null;
        boolean z = false;
        while (true) {
            if (position - i9 >= i10) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                break;
            }
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            String str5 = str2;
            int i13 = parsableByteArray.readInt();
            if (i13 == 0) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                if (parsableByteArray.getPosition() - i9 == i10) {
                    break;
                }
            } else {
                drmInitData2 = drmInitDataCopyWithSchemeType;
            }
            ExtractorUtil.checkContainerInput(i13 > 0, "childAtomSize must be positive");
            int i14 = parsableByteArray.readInt();
            if (i14 == 1635148611) {
                ExtractorUtil.checkContainerInput(str3 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                listOf = avcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthHeightRatio;
                }
                str4 = avcConfig.codecs;
                str = MediaController.VIDEO_MIME_TYPE;
            } else if (i14 == 1752589123) {
                ExtractorUtil.checkContainerInput(str3 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                listOf = hevcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = hevcConfig.pixelWidthHeightRatio;
                }
                str4 = hevcConfig.codecs;
                str = "video/hevc";
            } else {
                if (i14 == 1685480259 || i14 == 1685485123) {
                    i7 = unsignedShort2;
                    i8 = iIntValue;
                    bArr = projFromParent;
                    f = paspFromParent;
                    list = listOf;
                    DolbyVisionConfig dolbyVisionConfig = DolbyVisionConfig.parse(parsableByteArray);
                    if (dolbyVisionConfig != null) {
                        str4 = dolbyVisionConfig.codecs;
                        str3 = "video/dolby-vision";
                    }
                } else if (i14 == 1987076931) {
                    ExtractorUtil.checkContainerInput(str3 == null, null);
                    str = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                } else if (i14 == 1635135811) {
                    ExtractorUtil.checkContainerInput(str3 == null, null);
                    str = "video/av01";
                } else if (i14 == 1668050025) {
                    if (byteBufferAllocateHdrStaticInfo == null) {
                        byteBufferAllocateHdrStaticInfo = allocateHdrStaticInfo();
                    }
                    ByteBuffer byteBuffer = byteBufferAllocateHdrStaticInfo;
                    byteBuffer.position(21);
                    byteBuffer.putShort(parsableByteArray.readShort());
                    byteBuffer.putShort(parsableByteArray.readShort());
                    byteBufferAllocateHdrStaticInfo = byteBuffer;
                    i7 = unsignedShort2;
                    i8 = iIntValue;
                    position += i13;
                    i9 = i2;
                    i10 = i3;
                    stsdData2 = stsdData;
                    str2 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = i8;
                    unsignedShort2 = i7;
                } else if (i14 == 1835295606) {
                    if (byteBufferAllocateHdrStaticInfo == null) {
                        byteBufferAllocateHdrStaticInfo = allocateHdrStaticInfo();
                    }
                    ByteBuffer byteBuffer2 = byteBufferAllocateHdrStaticInfo;
                    short s = parsableByteArray.readShort();
                    short s2 = parsableByteArray.readShort();
                    short s3 = parsableByteArray.readShort();
                    i8 = iIntValue;
                    short s4 = parsableByteArray.readShort();
                    short s5 = parsableByteArray.readShort();
                    List list2 = listOf;
                    short s6 = parsableByteArray.readShort();
                    byte[] bArr2 = projFromParent;
                    short s7 = parsableByteArray.readShort();
                    float f2 = paspFromParent;
                    short s8 = parsableByteArray.readShort();
                    long unsignedInt = parsableByteArray.readUnsignedInt();
                    long unsignedInt2 = parsableByteArray.readUnsignedInt();
                    i7 = unsignedShort2;
                    byteBuffer2.position(1);
                    byteBuffer2.putShort(s5);
                    byteBuffer2.putShort(s6);
                    byteBuffer2.putShort(s);
                    byteBuffer2.putShort(s2);
                    byteBuffer2.putShort(s3);
                    byteBuffer2.putShort(s4);
                    byteBuffer2.putShort(s7);
                    byteBuffer2.putShort(s8);
                    byteBuffer2.putShort((short) (unsignedInt / 10000));
                    byteBuffer2.putShort((short) (unsignedInt2 / 10000));
                    byteBufferAllocateHdrStaticInfo = byteBuffer2;
                    listOf = list2;
                    projFromParent = bArr2;
                    paspFromParent = f2;
                    position += i13;
                    i9 = i2;
                    i10 = i3;
                    stsdData2 = stsdData;
                    str2 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = i8;
                    unsignedShort2 = i7;
                } else {
                    i7 = unsignedShort2;
                    i8 = iIntValue;
                    bArr = projFromParent;
                    f = paspFromParent;
                    list = listOf;
                    if (i14 == 1681012275) {
                        ExtractorUtil.checkContainerInput(str3 == null, null);
                        str3 = str5;
                    } else if (i14 == 1702061171) {
                        ExtractorUtil.checkContainerInput(str3 == null, null);
                        esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                        String str6 = esdsFromParent.mimeType;
                        byte[] bArr3 = esdsFromParent.initializationData;
                        listOf = bArr3 != null ? ImmutableList.of((Object) bArr3) : list;
                        str3 = str6;
                        projFromParent = bArr;
                        paspFromParent = f;
                        position += i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        str2 = str5;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                        iIntValue = i8;
                        unsignedShort2 = i7;
                    } else {
                        if (i14 == 1885434736) {
                            paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                            listOf = list;
                            projFromParent = bArr;
                            z = true;
                        } else if (i14 == 1937126244) {
                            projFromParent = parseProjFromParent(parsableByteArray, position2, i13);
                            listOf = list;
                            paspFromParent = f;
                        } else if (i14 == 1936995172) {
                            int unsignedByte = parsableByteArray.readUnsignedByte();
                            parsableByteArray.skipBytes(3);
                            if (unsignedByte == 0) {
                                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                                if (unsignedByte2 == 0) {
                                    listOf = list;
                                    projFromParent = bArr;
                                    paspFromParent = f;
                                    i11 = 0;
                                } else if (unsignedByte2 == 1) {
                                    listOf = list;
                                    projFromParent = bArr;
                                    paspFromParent = f;
                                    i11 = 1;
                                } else if (unsignedByte2 == 2) {
                                    listOf = list;
                                    projFromParent = bArr;
                                    paspFromParent = f;
                                    i11 = 2;
                                } else if (unsignedByte2 == 3) {
                                    listOf = list;
                                    projFromParent = bArr;
                                    paspFromParent = f;
                                    i11 = 3;
                                }
                            }
                        } else if (i14 == 1668246642) {
                            int i15 = parsableByteArray.readInt();
                            if (i15 == 1852009592 || i15 == 1852009571) {
                                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                                int unsignedShort4 = parsableByteArray.readUnsignedShort();
                                parsableByteArray.skipBytes(2);
                                boolean z2 = i13 == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                                iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace(unsignedShort3);
                                i12 = z2 ? 1 : 2;
                                iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedShort4);
                            } else {
                                Log.w("AtomParsers", "Unsupported color type: " + Atom.getAtomTypeString(i15));
                            }
                        }
                        position += i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        str2 = str5;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                        iIntValue = i8;
                        unsignedShort2 = i7;
                    }
                }
                listOf = list;
                projFromParent = bArr;
                paspFromParent = f;
                position += i13;
                i9 = i2;
                i10 = i3;
                stsdData2 = stsdData;
                str2 = str5;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iIntValue = i8;
                unsignedShort2 = i7;
            }
            str3 = str;
            i7 = unsignedShort2;
            i8 = iIntValue;
            position += i13;
            i9 = i2;
            i10 = i3;
            stsdData2 = stsdData;
            str2 = str5;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iIntValue = i8;
            unsignedShort2 = i7;
        }
        int i16 = unsignedShort2;
        byte[] bArr4 = projFromParent;
        float f3 = paspFromParent;
        List list3 = listOf;
        if (str3 == null) {
            return;
        }
        Format.Builder drmInitData3 = new Format.Builder().setId(i4).setSampleMimeType(str3).setCodecs(str4).setWidth(unsignedShort).setHeight(i16).setPixelWidthHeightRatio(f3).setRotationDegrees(i5).setProjectionData(bArr4).setStereoMode(i11).setInitializationData(list3).setDrmInitData(drmInitData2);
        int i17 = iIsoColorPrimariesToColorSpace;
        int i18 = i12;
        int i19 = iIsoTransferCharacteristicsToColorTransfer;
        if (i17 != -1 || i18 != -1 || i19 != -1 || byteBufferAllocateHdrStaticInfo != null) {
            drmInitData3.setColorInfo(new ColorInfo(i17, i18, i19, byteBufferAllocateHdrStaticInfo != null ? byteBufferAllocateHdrStaticInfo.array() : null));
        }
        if (esdsFromParent != null) {
            drmInitData3.setAverageBitrate(Ints.saturatedCast(esdsFromParent.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsFromParent.peakBitrate));
        }
        stsdData.format = drmInitData3.build();
    }
}
