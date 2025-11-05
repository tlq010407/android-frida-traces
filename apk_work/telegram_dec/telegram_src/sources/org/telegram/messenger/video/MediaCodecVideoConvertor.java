package org.telegram.messenger.video;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.R;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.video.audio_input.AudioInput;
import org.telegram.messenger.video.audio_input.GeneralAudioInput;
import org.telegram.ui.Stories.recorder.CollageLayout;
import org.telegram.ui.Stories.recorder.StoryEntry;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class MediaCodecVideoConvertor {
    private static final int MEDIACODEC_TIMEOUT_DEFAULT = 2500;
    private static final int MEDIACODEC_TIMEOUT_INCREASED = 22000;
    private static final int PROCESSOR_TYPE_INTEL = 2;
    private static final int PROCESSOR_TYPE_MTK = 3;
    private static final int PROCESSOR_TYPE_OTHER = 0;
    private static final int PROCESSOR_TYPE_QCOM = 1;
    private static final int PROCESSOR_TYPE_SEC = 4;
    private static final int PROCESSOR_TYPE_TI = 5;
    private MediaController.VideoConvertorListener callback;
    private long endPresentationTime;
    private MediaExtractor extractor;
    private Muxer muxer;
    private String outputMimeType;

    public class ConversionCanceledException extends RuntimeException {
        public ConversionCanceledException() {
            super("canceled conversion");
        }
    }

    public static class ConvertVideoParams {
        int account;
        long avatarStartTime;
        String backgroundPath;
        int bitrate;
        String blurPath;
        File cacheFile;
        MediaController.VideoConvertorListener callback;
        CollageLayout collage;
        ArrayList<VideoEditedInfo.Part> collageParts;
        MediaController.CropState cropState;
        long duration;
        long endTime;
        int framerate;
        Integer gradientBottomColor;
        Integer gradientTopColor;
        StoryEntry.HDRInfo hdrInfo;
        boolean isDark;
        boolean isPhoto;
        boolean isRound;
        boolean isSecret;
        boolean isSticker;
        boolean isStory;
        ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        String messagePath;
        String messageVideoMaskPath;
        boolean muted;
        boolean needCompress;
        int originalBitrate;
        int originalHeight;
        int originalWidth;
        String paintPath;
        int resultHeight;
        int resultWidth;
        int rotationValue;
        MediaController.SavedFilterState savedFilterState;
        public ArrayList<MixedSoundInfo> soundInfos = new ArrayList<>();
        long startTime;
        String videoPath;
        float volume;
        long wallpaperPeerId;

        private ConvertVideoParams() {
        }

        public static ConvertVideoParams of(String str, File file, int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, long j2, long j3, boolean z2, long j4, MediaController.VideoConvertorListener videoConvertorListener, VideoEditedInfo videoEditedInfo) {
            ConvertVideoParams convertVideoParams = new ConvertVideoParams();
            convertVideoParams.videoPath = str;
            convertVideoParams.cacheFile = file;
            convertVideoParams.rotationValue = i;
            convertVideoParams.isSecret = z;
            convertVideoParams.originalWidth = i2;
            convertVideoParams.originalHeight = i3;
            convertVideoParams.resultWidth = i4;
            convertVideoParams.resultHeight = i5;
            convertVideoParams.framerate = i6;
            convertVideoParams.bitrate = i7;
            convertVideoParams.originalBitrate = i8;
            convertVideoParams.startTime = j;
            convertVideoParams.endTime = j2;
            convertVideoParams.avatarStartTime = j3;
            convertVideoParams.needCompress = z2;
            convertVideoParams.duration = j4;
            convertVideoParams.savedFilterState = videoEditedInfo.filterState;
            convertVideoParams.paintPath = videoEditedInfo.paintPath;
            convertVideoParams.blurPath = videoEditedInfo.blurPath;
            convertVideoParams.mediaEntities = videoEditedInfo.mediaEntities;
            convertVideoParams.isPhoto = videoEditedInfo.isPhoto;
            convertVideoParams.cropState = videoEditedInfo.cropState;
            convertVideoParams.isRound = videoEditedInfo.roundVideo;
            convertVideoParams.callback = videoConvertorListener;
            convertVideoParams.gradientTopColor = videoEditedInfo.gradientTopColor;
            convertVideoParams.gradientBottomColor = videoEditedInfo.gradientBottomColor;
            convertVideoParams.muted = videoEditedInfo.muted;
            convertVideoParams.volume = videoEditedInfo.volume;
            convertVideoParams.isStory = videoEditedInfo.isStory;
            convertVideoParams.hdrInfo = videoEditedInfo.hdrInfo;
            convertVideoParams.isDark = videoEditedInfo.isDark;
            convertVideoParams.wallpaperPeerId = videoEditedInfo.wallpaperPeerId;
            convertVideoParams.account = videoEditedInfo.account;
            convertVideoParams.messagePath = videoEditedInfo.messagePath;
            convertVideoParams.messageVideoMaskPath = videoEditedInfo.messageVideoMaskPath;
            convertVideoParams.backgroundPath = videoEditedInfo.backgroundPath;
            convertVideoParams.isSticker = videoEditedInfo.isSticker;
            convertVideoParams.collage = videoEditedInfo.collage;
            convertVideoParams.collageParts = videoEditedInfo.collageParts;
            return convertVideoParams;
        }
    }

    public static class MixedSoundInfo {
        final String audioFile;
        public long audioOffset;
        public long duration;
        public long startTime;
        public float volume = 1.0f;

        public MixedSoundInfo(String str) {
            this.audioFile = str;
        }
    }

    public static class Muxer {
        public final MediaMuxer mediaMuxer;
        public final MP4Builder mp4Builder;
        private boolean started;

        public Muxer(MediaMuxer mediaMuxer) {
            this.started = false;
            this.mp4Builder = null;
            this.mediaMuxer = mediaMuxer;
        }

        public Muxer(MP4Builder mP4Builder) {
            this.started = false;
            this.mp4Builder = mP4Builder;
            this.mediaMuxer = null;
        }

        public int addTrack(MediaFormat mediaFormat, boolean z) {
            MediaMuxer mediaMuxer = this.mediaMuxer;
            if (mediaMuxer != null) {
                return mediaMuxer.addTrack(mediaFormat);
            }
            MP4Builder mP4Builder = this.mp4Builder;
            if (mP4Builder != null) {
                return mP4Builder.addTrack(mediaFormat, z);
            }
            return 0;
        }

        public void finishMovie() {
            MediaMuxer mediaMuxer = this.mediaMuxer;
            if (mediaMuxer != null) {
                mediaMuxer.stop();
                this.mediaMuxer.release();
            } else {
                MP4Builder mP4Builder = this.mp4Builder;
                if (mP4Builder != null) {
                    mP4Builder.finishMovie();
                }
            }
        }

        public long getLastFrameTimestamp(int i, MediaCodec.BufferInfo bufferInfo) {
            if (this.mediaMuxer != null) {
                return bufferInfo.presentationTimeUs;
            }
            MP4Builder mP4Builder = this.mp4Builder;
            if (mP4Builder != null) {
                return mP4Builder.getLastFrameTimestamp(i);
            }
            return 0L;
        }

        public void start() {
            MediaMuxer mediaMuxer = this.mediaMuxer;
            if (mediaMuxer != null) {
                mediaMuxer.start();
            }
        }

        public long writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, boolean z) {
            MediaMuxer mediaMuxer = this.mediaMuxer;
            if (mediaMuxer == null) {
                MP4Builder mP4Builder = this.mp4Builder;
                if (mP4Builder != null) {
                    return mP4Builder.writeSampleData(i, byteBuffer, bufferInfo, z);
                }
                return 0L;
            }
            if (!this.started) {
                mediaMuxer.start();
                this.started = true;
            }
            this.mediaMuxer.writeSampleData(i, byteBuffer, bufferInfo);
            return 0L;
        }
    }

    private static void applyAudioInputs(ArrayList<MixedSoundInfo> arrayList, ArrayList<AudioInput> arrayList2) {
        if (arrayList == null) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            MixedSoundInfo mixedSoundInfo = arrayList.get(i);
            try {
                GeneralAudioInput generalAudioInput = new GeneralAudioInput(mixedSoundInfo.audioFile);
                generalAudioInput.setVolume(mixedSoundInfo.volume);
                long j = mixedSoundInfo.startTime;
                if (j > 0) {
                    generalAudioInput.setStartOffsetUs(j);
                }
                long j2 = mixedSoundInfo.audioOffset;
                if (j2 > 0) {
                    generalAudioInput.setStartTimeUs(j2);
                } else {
                    j2 = 0;
                }
                long j3 = mixedSoundInfo.duration;
                if (j3 > 0) {
                    generalAudioInput.setEndTimeUs(j2 + j3);
                }
                arrayList2.add(generalAudioInput);
            } catch (Exception e) {
                FileLog.e(e);
            }
        }
    }

    private void checkConversionCanceled() {
        MediaController.VideoConvertorListener videoConvertorListener = this.callback;
        if (videoConvertorListener != null && videoConvertorListener.checkConversionCanceled()) {
            throw new ConversionCanceledException();
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    private boolean convertVideoInternal(org.telegram.messenger.video.MediaCodecVideoConvertor.ConvertVideoParams r94, boolean r95, int r96) {
        /*
            Method dump skipped, instructions count: 7952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.video.MediaCodecVideoConvertor.convertVideoInternal(org.telegram.messenger.video.MediaCodecVideoConvertor$ConvertVideoParams, boolean, int):boolean");
    }

    private MediaCodec createEncoderForMimeType() throws IOException {
        MediaCodec mediaCodecCreateEncoderByType;
        if (!this.outputMimeType.equals("video/hevc") || Build.VERSION.SDK_INT < 29) {
            if (this.outputMimeType.equals("video/hevc")) {
                this.outputMimeType = MediaController.VIDEO_MIME_TYPE;
            }
            mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(this.outputMimeType);
        } else {
            String strFindGoodHevcEncoder = SharedConfig.findGoodHevcEncoder();
            mediaCodecCreateEncoderByType = strFindGoodHevcEncoder != null ? MediaCodec.createByCodecName(strFindGoodHevcEncoder) : null;
        }
        if (mediaCodecCreateEncoderByType != null || !this.outputMimeType.equals("video/hevc")) {
            return mediaCodecCreateEncoderByType;
        }
        this.outputMimeType = MediaController.VIDEO_MIME_TYPE;
        return MediaCodec.createEncoderByType(MediaController.VIDEO_MIME_TYPE);
    }

    private static String createFragmentShader(int i, int i2, int i3, int i4, boolean z, int i5) {
        StringBuilder sb;
        String str;
        int iClamp = (int) Utilities.clamp((Math.max(i, i2) / Math.max(i4, i3)) * 0.8f, 2.0f, 1.0f);
        if (iClamp > 1 && SharedConfig.deviceIsAverage()) {
            iClamp = 1;
        }
        int iMin = Math.min(i5, iClamp);
        FileLog.d("source size " + i + "x" + i2 + "    dest size " + i3 + i4 + "   kernelRadius " + iMin);
        if (z) {
            sb = new StringBuilder();
            sb.append("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = ");
            sb.append(iMin);
            sb.append(".0;\nconst float pixelSizeX = 1.0 / ");
            sb.append(i);
            sb.append(".0;\nconst float pixelSizeY = 1.0 / ");
            sb.append(i2);
            str = ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n";
        } else {
            sb = new StringBuilder();
            sb.append("precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = ");
            sb.append(iMin);
            sb.append(".0;\nconst float pixelSizeX = 1.0 / ");
            sb.append(i2);
            sb.append(".0;\nconst float pixelSizeY = 1.0 / ");
            sb.append(i);
            str = ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n";
        }
        sb.append(str);
        return sb.toString();
    }

    public static void cutOfNalData(String str, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        int i = str.equals("video/hevc") ? 3 : 1;
        if (bufferInfo.size > 100) {
            byteBuffer.position(bufferInfo.offset);
            byte[] bArr = new byte[100];
            byteBuffer.get(bArr);
            int i2 = 0;
            for (int i3 = 0; i3 < 96; i3++) {
                if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 0 && bArr[i3 + 3] == 1 && (i2 = i2 + 1) > i) {
                    bufferInfo.offset += i3;
                    bufferInfo.size -= i3;
                    return;
                }
            }
        }
    }

    private MediaCodec getDecoderByFormat(MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            throw new RuntimeException("getDecoderByFormat: format is null");
        }
        ArrayList arrayList = new ArrayList();
        String string = mediaFormat.getString("mime");
        arrayList.add(string);
        if ("video/dolby-vision".equals(string)) {
            arrayList.add("video/hevc");
            arrayList.add(MediaController.VIDEO_MIME_TYPE);
        }
        Exception exc = null;
        while (!arrayList.isEmpty()) {
            try {
                String str = (String) arrayList.remove(0);
                mediaFormat.setString("mime", str);
                return MediaCodec.createDecoderByType(str);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        throw new RuntimeException(exc);
    }

    private static String hdrFragmentShader(int i, int i2, int i3, int i4, boolean z, StoryEntry.HDRInfo hDRInfo) {
        if (!z) {
            return "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
        }
        return AndroidUtilities.readRes(hDRInfo.getHDRType() == 1 ? R.raw.hdr2sdr_hlg : R.raw.hdr2sdr_pq).replace("$dstWidth", i3 + ".0").replace("$dstHeight", i4 + ".0") + "\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = TEX(vTextureCoord);\n}";
    }

    private boolean isMediatekAvcEncoder(MediaCodec mediaCodec) {
        return mediaCodec.getName().equals("c2.mtk.avc.encoder");
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x01e3 A[PHI: r8 r20 r22 r26 r27 r37 r39
      0x01e3: PHI (r8v4 boolean) = (r8v2 boolean), (r8v12 boolean) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x01e3: PHI (r20v2 long) = (r20v1 long), (r20v5 long) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x01e3: PHI (r22v2 long) = (r22v1 long), (r22v4 long) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x01e3: PHI (r26v2 int) = (r26v1 int), (r26v4 int) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x01e3: PHI (r27v1 int) = (r27v0 int), (r27v3 int) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x01e3: PHI (r37v3 int) = (r37v2 int), (r37v6 int) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]
      0x01e3: PHI (r39v2 boolean) = (r39v1 boolean), (r39v5 boolean) binds: [B:126:0x01e2, B:121:0x01ce] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0123 A[PHI: r26 r27
      0x0123: PHI (r26v9 int) = (r26v7 int), (r26v15 int) binds: [B:77:0x012a, B:73:0x0120] A[DONT_GENERATE, DONT_INLINE]
      0x0123: PHI (r27v7 int) = (r27v5 int), (r27v8 int) binds: [B:77:0x012a, B:73:0x0120] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private long readAndWriteTracks(MediaExtractor mediaExtractor, Muxer muxer, MediaCodec.BufferInfo bufferInfo, long j, long j2, long j3, File file, boolean z) {
        long j4;
        int iFindTrack;
        int iMax;
        int iAddTrack;
        int iAddTrack2;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        long j5;
        byte[] bArrArray;
        int i5;
        int i6;
        int integer;
        int iFindTrack2 = MediaController.findTrack(mediaExtractor, false);
        if (z) {
            j4 = j3;
            iFindTrack = MediaController.findTrack(mediaExtractor, true);
        } else {
            j4 = j3;
            iFindTrack = -1;
        }
        float f = j4 / 1000.0f;
        if (iFindTrack2 >= 0) {
            mediaExtractor.selectTrack(iFindTrack2);
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(iFindTrack2);
            iAddTrack = muxer.addTrack(trackFormat, false);
            try {
                integer = trackFormat.getInteger("max-input-size");
            } catch (Exception e) {
                FileLog.e(e);
                integer = 0;
            }
            if (j > 0) {
                mediaExtractor.seekTo(j, 0);
            } else {
                mediaExtractor.seekTo(0L, 0);
            }
            iMax = integer;
        } else {
            iMax = 0;
            iAddTrack = -1;
        }
        if (iFindTrack >= 0) {
            mediaExtractor.selectTrack(iFindTrack);
            MediaFormat trackFormat2 = mediaExtractor.getTrackFormat(iFindTrack);
            if (trackFormat2.getString("mime").equals("audio/unknown")) {
                iAddTrack2 = -1;
                iFindTrack = -1;
            } else {
                iAddTrack2 = muxer.addTrack(trackFormat2, true);
                try {
                    iMax = Math.max(trackFormat2.getInteger("max-input-size"), iMax);
                } catch (Exception e2) {
                    FileLog.e(e2);
                }
                if (j > 0) {
                    mediaExtractor.seekTo(j, 0);
                } else {
                    mediaExtractor.seekTo(0L, 0);
                }
            }
        } else {
            iAddTrack2 = -1;
        }
        if (iMax <= 0) {
            iMax = 65536;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iMax);
        if (iFindTrack < 0 && iFindTrack2 < 0) {
            return -1L;
        }
        checkConversionCanceled();
        long j6 = 0;
        long j7 = -1;
        boolean z4 = false;
        while (!z4) {
            checkConversionCanceled();
            int i7 = Build.VERSION.SDK_INT;
            if (i7 >= 28) {
                long sampleSize = mediaExtractor.getSampleSize();
                i = iFindTrack;
                if (sampleSize > iMax) {
                    int i8 = (int) (sampleSize + 1024);
                    iMax = i8;
                    byteBufferAllocateDirect = ByteBuffer.allocateDirect(i8);
                }
            } else {
                i = iFindTrack;
            }
            bufferInfo.size = mediaExtractor.readSampleData(byteBufferAllocateDirect, 0);
            int sampleTrackIndex = mediaExtractor.getSampleTrackIndex();
            int i9 = i;
            int i10 = sampleTrackIndex == iFindTrack2 ? iAddTrack : sampleTrackIndex == i9 ? iAddTrack2 : -1;
            if (i10 != -1) {
                if (i7 < 21) {
                    byteBufferAllocateDirect.position(0);
                    byteBufferAllocateDirect.limit(bufferInfo.size);
                }
                if (sampleTrackIndex != i9 && (bArrArray = byteBufferAllocateDirect.array()) != null) {
                    int iArrayOffset = byteBufferAllocateDirect.arrayOffset();
                    int iLimit = iArrayOffset + byteBufferAllocateDirect.limit();
                    i2 = iAddTrack2;
                    int i11 = -1;
                    while (true) {
                        z2 = z4;
                        int i12 = iLimit - 4;
                        if (iArrayOffset > i12) {
                            break;
                        }
                        if (bArrArray[iArrayOffset] == 0 && bArrArray[iArrayOffset + 1] == 0 && bArrArray[iArrayOffset + 2] == 0) {
                            i5 = iMax;
                            i6 = i9;
                            if (bArrArray[iArrayOffset + 3] == 1) {
                                if (i11 != -1) {
                                    int i13 = (iArrayOffset - i11) - (iArrayOffset == i12 ? 0 : 4);
                                    bArrArray[i11] = (byte) (i13 >> 24);
                                    bArrArray[i11 + 1] = (byte) (i13 >> 16);
                                    bArrArray[i11 + 2] = (byte) (i13 >> 8);
                                    bArrArray[i11 + 3] = (byte) i13;
                                }
                                i11 = iArrayOffset;
                            }
                            iArrayOffset++;
                            z4 = z2;
                            i9 = i6;
                            iMax = i5;
                        } else {
                            i5 = iMax;
                            i6 = i9;
                        }
                        if (iArrayOffset == i12) {
                        }
                        iArrayOffset++;
                        z4 = z2;
                        i9 = i6;
                        iMax = i5;
                    }
                } else {
                    i2 = iAddTrack2;
                    z2 = z4;
                }
                i3 = iMax;
                i4 = i9;
                if (bufferInfo.size >= 0) {
                    bufferInfo.presentationTimeUs = mediaExtractor.getSampleTime();
                    z3 = false;
                } else {
                    bufferInfo.size = 0;
                    z3 = true;
                }
                if (bufferInfo.size > 0 && !z3) {
                    if (sampleTrackIndex == iFindTrack2) {
                        j5 = 0;
                        if (j > 0 && j7 == -1) {
                            j7 = bufferInfo.presentationTimeUs;
                        }
                    } else {
                        j5 = 0;
                    }
                    if (j2 < j5 || bufferInfo.presentationTimeUs < j2) {
                        bufferInfo.offset = 0;
                        bufferInfo.flags = mediaExtractor.getSampleFlags();
                        long jWriteSampleData = muxer.writeSampleData(i10, byteBufferAllocateDirect, bufferInfo, false);
                        if (jWriteSampleData != 0) {
                            MediaController.VideoConvertorListener videoConvertorListener = this.callback;
                            if (videoConvertorListener != null) {
                                long j8 = bufferInfo.presentationTimeUs - j7;
                                if (j8 <= j6) {
                                    j8 = j6;
                                }
                                videoConvertorListener.didWriteData(jWriteSampleData, (j8 / 1000.0f) / f);
                                j6 = j8;
                            }
                            if (!z3) {
                            }
                        }
                        if (!z3) {
                        }
                    } else {
                        z3 = true;
                    }
                    if (!z3) {
                    }
                } else if (!z3) {
                    mediaExtractor.advance();
                }
            } else {
                i2 = iAddTrack2;
                z2 = z4;
                i3 = iMax;
                i4 = i9;
                if (sampleTrackIndex == -1) {
                    z3 = true;
                } else {
                    z3 = false;
                    mediaExtractor.advance();
                }
            }
            iAddTrack2 = i2;
            if (z3) {
                iFindTrack = i4;
                iMax = i3;
                z4 = true;
            } else {
                z4 = z2;
                iFindTrack = i4;
                iMax = i3;
            }
        }
        int i14 = iFindTrack;
        if (iFindTrack2 >= 0) {
            mediaExtractor.unselectTrack(iFindTrack2);
        }
        if (i14 >= 0) {
            mediaExtractor.unselectTrack(i14);
        }
        return j7;
    }

    public boolean convertVideo(ConvertVideoParams convertVideoParams) {
        if (convertVideoParams.isSticker) {
            return WebmEncoder.convert(convertVideoParams, 0);
        }
        this.callback = convertVideoParams.callback;
        return convertVideoInternal(convertVideoParams, false, 0);
    }

    public long getLastFrameTimestamp() {
        return this.endPresentationTime;
    }
}
