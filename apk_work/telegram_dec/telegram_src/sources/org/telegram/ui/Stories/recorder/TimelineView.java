package org.telegram.ui.Stories.recorder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.huawei.hms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.R;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.BlurringShader;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.Scroller;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Stories.recorder.TimelineView;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes5.dex */
public class TimelineView extends View {
    private Runnable askExactSeek;
    private StaticLayout audioAuthor;
    private float audioAuthorLeft;
    private final TextPaint audioAuthorPaint;
    private float audioAuthorWidth;
    private final BlurringShader.StoryBlurDrawer audioBlur;
    private final RectF audioBounds;
    private final Path audioClipPath;
    private final Paint audioDotPaint;
    private long audioDuration;
    private final Drawable audioIcon;
    private float audioLeft;
    private long audioOffset;
    private String audioPath;
    private float audioRight;
    private boolean audioSelected;
    private final AnimatedFloat audioSelectedT;
    private final AnimatedFloat audioT;
    private StaticLayout audioTitle;
    private float audioTitleLeft;
    private final TextPaint audioTitlePaint;
    private float audioTitleWidth;
    private float audioVolume;
    private final BlurringShader.StoryBlurDrawer audioWaveformBlur;
    private final BlurringShader.StoryBlurDrawer backgroundBlur;
    private final BlurringShader.BlurManager blurManager;
    private final Path collageClipPath;
    private final Paint collageFramePaint;
    private Track collageMain;
    private int collageSelected;
    private final ArrayList collageTracks;
    private final ArrayList collageWaveforms;
    private final TextPaint countTextPaint;
    private long coverEnd;
    private long coverStart;
    private TimelineDelegate delegate;
    private float dragSpeed;
    private boolean dragged;
    private boolean draggingProgress;
    private final LinearGradient ellipsizeGradient;
    private final Matrix ellipsizeMatrix;
    private final Paint ellipsizePaint;
    private int h;
    private boolean hadDragChange;
    private boolean hasAudio;
    private boolean hasRound;
    private boolean isCover;
    private int lastHeight;
    private long lastTime;
    private float lastX;
    private final AnimatedFloat loopProgress;
    private long loopProgressFrom;
    private int maxCount;
    private Runnable onHeightChange;
    private final Runnable onLongPress;
    private Runnable onTimelineClick;
    public boolean open;
    private final AnimatedFloat openT;
    private int ph;
    private int pressCollageIndex;
    private int pressHandle;
    private int pressHandleCollageIndex;
    private long pressTime;
    private int pressType;
    private final View previewContainer;
    private long progress;
    private final Paint progressShadowPaint;
    private final Paint progressWhitePaint;
    private int px;
    private int py;
    private final Paint regionCutPaint;
    private final Paint regionHandlePaint;
    private final Paint regionPaint;
    private boolean resetWaveform;
    private final Theme.ResourcesProvider resourcesProvider;
    private final RectF roundBounds;
    private final Path roundClipPath;
    private long roundDuration;
    private float roundLeft;
    private long roundOffset;
    private String roundPath;
    private float roundRight;
    private boolean roundSelected;
    private final AnimatedFloat roundSelectedT;
    private final AnimatedFloat roundT;
    private VideoThumbsLoader roundThumbs;
    private float roundVolume;
    private long scroll;
    private final Scroller scroller;
    private boolean scrolling;
    private int scrollingCollage;
    private boolean scrollingVideo;
    private final Path selectedCollageClipPath;
    private final Path selectedVideoClipPath;
    final float[] selectedVideoRadii;
    private int sw;
    private final RectF timelineBounds;
    private final Path timelineClipPath;
    private final Drawable timelineIcon;
    private final Text timelineText;
    private final AnimatedFloat timelineWaveformLoaded;
    private final AnimatedFloat timelineWaveformMax;
    private final WaveformPath timelineWaveformPath;
    private VelocityTracker velocityTracker;
    private final RectF videoBounds;
    private final Path videoClipPath;
    private final Paint videoFramePaint;
    private Track videoTrack;
    private int w;
    private int wasScrollX;
    private AudioWaveformLoader waveform;
    private boolean waveformIsLoaded;
    private final AnimatedFloat waveformMax;
    private final Paint waveformPaint;
    private final WaveformPath waveformPath;

    /* JADX INFO: Access modifiers changed from: private */
    class AudioWaveformLoader {
        private final AnimatedFloat animatedLoaded;
        private final int count;
        private final short[] data;
        private long duration;
        private final MediaExtractor extractor;
        private MediaFormat inputFormat;
        private short max;
        private FfmpegAudioWaveformLoader waveformLoader;
        private int loaded = 0;
        private final Object lock = new Object();
        private boolean stop = false;

        public AudioWaveformLoader(String str, int i) throws IOException {
            this.animatedLoaded = new AnimatedFloat(TimelineView.this, 0L, 600L, CubicBezierInterpolator.EASE_OUT_QUINT);
            int i2 = 0;
            MediaExtractor mediaExtractor = new MediaExtractor();
            this.extractor = mediaExtractor;
            String string = null;
            try {
                mediaExtractor.setDataSource(str);
                int trackCount = mediaExtractor.getTrackCount();
                while (true) {
                    if (i2 < trackCount) {
                        MediaFormat trackFormat = this.extractor.getTrackFormat(i2);
                        string = trackFormat.getString("mime");
                        if (string != null && string.startsWith("audio/")) {
                            this.extractor.selectTrack(i2);
                            this.inputFormat = trackFormat;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
                MediaFormat mediaFormat = this.inputFormat;
                if (mediaFormat != null) {
                    this.duration = mediaFormat.getLong("durationUs") / 1000000;
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
            int iMin = Math.min(Math.round((((this.duration * 1000) / Math.min(TimelineView.this.videoTrack != null ? TimelineView.this.videoTrack.duration : !TimelineView.this.collageTracks.isEmpty() ? TimelineView.this.getBaseDuration() : TimelineView.this.hasRound ? TimelineView.this.roundDuration : this.duration * 1000, TimelineView.this.getMaxScrollDuration())) * i) / Math.round(AndroidUtilities.dpf2(3.3333f))), 4000);
            this.count = iMin;
            this.data = new short[iMin];
            if (this.duration <= 0 || this.inputFormat == null) {
                return;
            }
            if ("audio/mpeg".equals(string) || "audio/mp3".equals(string) || "audio/mp4a".equals(string) || MediaController.AUDIO_MIME_TYPE.equals(string)) {
                this.waveformLoader = new FfmpegAudioWaveformLoader(str, iMin, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$run$0((short[]) obj, ((Integer) obj2).intValue());
                    }
                });
            } else {
                Utilities.phoneBookQueue.postRunnable(new TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0(this));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: receiveData, reason: merged with bridge method [inline-methods] */
        public void lambda$run$0(short[] sArr, int i) {
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = this.loaded + i2;
                short[] sArr2 = this.data;
                if (i3 >= sArr2.length) {
                    break;
                }
                sArr2[i3] = sArr[i2];
                short s = this.max;
                short s2 = sArr[i2];
                if (s < s2) {
                    this.max = s2;
                }
            }
            this.loaded += i;
            TimelineView.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x015d, code lost:
        
            r3 = r16;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws MediaCodec.CryptoException, IOException {
            MediaCodec.BufferInfo bufferInfo;
            int i;
            int i2;
            short s;
            try {
                int iRound = Math.round(((this.duration * this.inputFormat.getInteger("sample-rate")) / this.count) / 5.0f);
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(this.inputFormat.getString("mime"));
                if (mediaCodecCreateDecoderByType == null) {
                    return;
                }
                mediaCodecCreateDecoderByType.configure(this.inputFormat, (Surface) null, (MediaCrypto) null, 0);
                mediaCodecCreateDecoderByType.start();
                ByteBuffer[] inputBuffers = mediaCodecCreateDecoderByType.getInputBuffers();
                ByteBuffer[] outputBuffers = mediaCodecCreateDecoderByType.getOutputBuffers();
                final short[] sArr = new short[32];
                int iDequeueOutputBuffer = -1;
                int i3 = 0;
                boolean z = false;
                int i4 = 0;
                int i5 = 0;
                short s2 = 0;
                while (true) {
                    MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
                    int iDequeueInputBuffer = mediaCodecCreateDecoderByType.dequeueInputBuffer(2500L);
                    if (iDequeueInputBuffer >= 0) {
                        int sampleData = this.extractor.readSampleData(Build.VERSION.SDK_INT < 21 ? inputBuffers[iDequeueInputBuffer] : mediaCodecCreateDecoderByType.getInputBuffer(iDequeueInputBuffer), 0);
                        if (sampleData < 0) {
                            i = 21;
                            bufferInfo = bufferInfo2;
                            mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                            z = true;
                        } else {
                            bufferInfo = bufferInfo2;
                            i = 21;
                            mediaCodecCreateDecoderByType.queueInputBuffer(iDequeueInputBuffer, 0, sampleData, this.extractor.getSampleTime(), 0);
                            this.extractor.advance();
                        }
                    } else {
                        bufferInfo = bufferInfo2;
                        i = 21;
                    }
                    if (iDequeueOutputBuffer >= 0) {
                        (Build.VERSION.SDK_INT < i ? outputBuffers[iDequeueOutputBuffer] : mediaCodecCreateDecoderByType.getOutputBuffer(iDequeueOutputBuffer)).position(0);
                    }
                    MediaCodec.BufferInfo bufferInfo3 = bufferInfo;
                    long j = 2500;
                    while (true) {
                        iDequeueOutputBuffer = mediaCodecCreateDecoderByType.dequeueOutputBuffer(bufferInfo3, j);
                        if (iDequeueOutputBuffer == -1 || z) {
                            break;
                        }
                        if (iDequeueOutputBuffer >= 0) {
                            ByteBuffer outputBuffer = Build.VERSION.SDK_INT < i ? outputBuffers[iDequeueOutputBuffer] : mediaCodecCreateDecoderByType.getOutputBuffer(iDequeueOutputBuffer);
                            if (outputBuffer != null && bufferInfo3.size > 0) {
                                int i6 = i5;
                                while (outputBuffer.remaining() > 0) {
                                    short s3 = (short) (((outputBuffer.get() & 255) << 8) | (outputBuffer.get() & 255));
                                    if (i6 >= iRound) {
                                        sArr[i3 - i4] = s2;
                                        int i7 = i3 + 1;
                                        final int i8 = i7 - i4;
                                        if (i8 >= sArr.length || i7 >= this.count) {
                                            short[] sArr2 = new short[sArr.length];
                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda2
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    this.f$0.lambda$run$0(sArr, i8);
                                                }
                                            });
                                            sArr = sArr2;
                                            i4 = i7;
                                        }
                                        i3 = i7;
                                        if (i7 >= this.data.length) {
                                            i5 = 0;
                                            s2 = 0;
                                            break;
                                        } else {
                                            s = 0;
                                            i6 = 0;
                                        }
                                    } else {
                                        s = s2;
                                    }
                                    s2 = s < s3 ? s3 : s;
                                    i6++;
                                    if (outputBuffer.remaining() < 8) {
                                        break;
                                    } else {
                                        outputBuffer.position(outputBuffer.position() + 8);
                                    }
                                }
                                i5 = i6;
                            }
                            mediaCodecCreateDecoderByType.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            if ((bufferInfo3.flags & 4) != 0) {
                                i2 = i3;
                                z = true;
                                break;
                            }
                        } else if (iDequeueOutputBuffer == -3) {
                            outputBuffers = mediaCodecCreateDecoderByType.getOutputBuffers();
                        }
                        j = 2500;
                        i = 21;
                    }
                    synchronized (this.lock) {
                        try {
                            if (!this.stop) {
                                if (z || i2 >= this.count) {
                                    break;
                                } else {
                                    i3 = i2;
                                }
                            } else {
                                break;
                            }
                        } finally {
                        }
                    }
                }
                mediaCodecCreateDecoderByType.stop();
                mediaCodecCreateDecoderByType.release();
                this.extractor.release();
            } catch (Exception e) {
                FileLog.e(e);
            }
        }

        public void destroy() {
            FfmpegAudioWaveformLoader ffmpegAudioWaveformLoader = this.waveformLoader;
            if (ffmpegAudioWaveformLoader != null) {
                ffmpegAudioWaveformLoader.destroy();
            }
            Utilities.phoneBookQueue.cancelRunnable(new TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0(this));
            synchronized (this.lock) {
                this.stop = true;
            }
        }

        public short getBar(int i) {
            return this.data[i];
        }

        public int getCount() {
            return this.count;
        }

        public int getLoadedCount() {
            return this.loaded;
        }

        public short getMaxBar() {
            return this.max;
        }
    }

    public interface TimelineDelegate {

        /* renamed from: org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onAudioLeftChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onAudioOffsetChange(TimelineDelegate timelineDelegate, long j) {
            }

            public static void $default$onAudioRemove(TimelineDelegate timelineDelegate) {
            }

            public static void $default$onAudioRightChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onAudioVolumeChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onProgressChange(TimelineDelegate timelineDelegate, long j, boolean z) {
            }

            public static void $default$onProgressDragChange(TimelineDelegate timelineDelegate, boolean z) {
            }

            public static void $default$onRoundLeftChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onRoundOffsetChange(TimelineDelegate timelineDelegate, long j) {
            }

            public static void $default$onRoundRemove(TimelineDelegate timelineDelegate) {
            }

            public static void $default$onRoundRightChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onRoundSelectChange(TimelineDelegate timelineDelegate, boolean z) {
            }

            public static void $default$onRoundVolumeChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onVideoLeftChange(TimelineDelegate timelineDelegate, int i, float f) {
            }

            public static void $default$onVideoOffsetChange(TimelineDelegate timelineDelegate, int i, long j) {
            }

            public static void $default$onVideoRightChange(TimelineDelegate timelineDelegate, int i, float f) {
            }

            public static void $default$onVideoRightChange(TimelineDelegate timelineDelegate, boolean z, float f) {
            }

            public static void $default$onVideoSelected(TimelineDelegate timelineDelegate, int i) {
            }

            public static void $default$onVideoVolumeChange(TimelineDelegate timelineDelegate, float f) {
            }

            public static void $default$onVideoVolumeChange(TimelineDelegate timelineDelegate, int i, float f) {
            }
        }

        void onAudioLeftChange(float f);

        void onAudioOffsetChange(long j);

        void onAudioRemove();

        void onAudioRightChange(float f);

        void onAudioVolumeChange(float f);

        void onProgressChange(long j, boolean z);

        void onProgressDragChange(boolean z);

        void onRoundLeftChange(float f);

        void onRoundOffsetChange(long j);

        void onRoundRemove();

        void onRoundRightChange(float f);

        void onRoundSelectChange(boolean z);

        void onRoundVolumeChange(float f);

        void onVideoLeftChange(int i, float f);

        void onVideoLeftChange(boolean z, float f);

        void onVideoOffsetChange(int i, long j);

        void onVideoRightChange(int i, float f);

        void onVideoRightChange(boolean z, float f);

        void onVideoSelected(int i);

        void onVideoVolumeChange(float f);

        void onVideoVolumeChange(int i, float f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Track {
        final RectF bounds;
        long duration;
        int index;
        boolean isRound;
        float left;
        long offset;
        String path;
        float right;
        private final AnimatedFloat selectedT;
        VideoThumbsLoader thumbs;
        float volume;

        private Track() {
            this.bounds = new RectF();
            this.selectedT = new AnimatedFloat(TimelineView.this, 360L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setupThumbs$0() {
            VideoThumbsLoader videoThumbsLoader = this.thumbs;
            if (videoThumbsLoader == null || videoThumbsLoader.getDuration() <= 0) {
                return;
            }
            this.duration = this.thumbs.getDuration();
            TimelineView.this.sortCollage();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setupThumbs(boolean z) throws IOException {
            if (TimelineView.this.getMeasuredWidth() > 0) {
                VideoThumbsLoader videoThumbsLoader = this.thumbs;
                if (videoThumbsLoader == null || z) {
                    if (videoThumbsLoader != null) {
                        videoThumbsLoader.destroy();
                        this.thumbs = null;
                    }
                    TimelineView timelineView = TimelineView.this;
                    boolean z2 = this.isRound;
                    String str = this.path;
                    int i = (timelineView.w - TimelineView.this.px) - TimelineView.this.px;
                    int iDp = AndroidUtilities.dp(38.0f);
                    long j = this.duration;
                    this.thumbs = timelineView.new VideoThumbsLoader(z2, str, i, iDp, j > 2 ? Long.valueOf(j) : null, TimelineView.this.getMaxScrollDuration(), TimelineView.this.coverStart, TimelineView.this.coverEnd, new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$Track$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setupThumbs$0();
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setupWaveform(boolean z) {
            int i = this.index;
            if (i < 0 || i >= TimelineView.this.collageWaveforms.size()) {
                return;
            }
            AudioWaveformLoader audioWaveformLoader = (AudioWaveformLoader) TimelineView.this.collageWaveforms.get(this.index);
            if (TimelineView.this.getMeasuredWidth() > 0) {
                if (audioWaveformLoader == null || z) {
                    if (audioWaveformLoader != null) {
                        audioWaveformLoader.destroy();
                    }
                    TimelineView timelineView = TimelineView.this;
                    TimelineView.this.collageWaveforms.set(this.index, timelineView.new AudioWaveformLoader(this.path, (timelineView.getMeasuredWidth() - TimelineView.this.getPaddingLeft()) - TimelineView.this.getPaddingRight()));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class VideoThumbsLoader {
        private Path clipPath;
        private int count;
        private boolean destroyed;
        private long duration;
        private volatile int frameHeight;
        private volatile long frameIterator;
        private volatile int frameWidth;
        private final boolean isRound;
        private long nextFrame;
        private final ArrayList frames = new ArrayList();
        private boolean loading = false;
        private final Paint bitmapPaint = new Paint(3);
        private MediaMetadataRetriever metadataRetriever = new MediaMetadataRetriever();

        public class BitmapFrame {
            private final AnimatedFloat alpha;
            public Bitmap bitmap;

            public BitmapFrame(Bitmap bitmap) {
                this.alpha = new AnimatedFloat(BitmapDescriptorFactory.HUE_RED, TimelineView.this, 0L, 240L, CubicBezierInterpolator.EASE_OUT_QUINT);
                this.bitmap = bitmap;
            }

            public float getAlpha() {
                return this.alpha.set(1.0f);
            }
        }

        public VideoThumbsLoader(boolean z, final String str, final int i, final int i2, final Long l, final long j, final long j2, final long j3, final Runnable runnable) {
            this.isRound = z;
            Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() throws IllegalArgumentException {
                    this.f$0.lambda$new$0(str, l, j2, j3, i2, j, i, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f A[PHI: r5 r7 r8
          0x005f: PHI (r5v3 long) = (r5v2 long), (r5v9 long), (r5v9 long) binds: [B:27:0x0063, B:19:0x0050, B:24:0x005c] A[DONT_GENERATE, DONT_INLINE]
          0x005f: PHI (r7v2 int) = (r7v1 int), (r7v10 int), (r7v10 int) binds: [B:27:0x0063, B:19:0x0050, B:24:0x005c] A[DONT_GENERATE, DONT_INLINE]
          0x005f: PHI (r8v2 int) = (r8v1 int), (r8v11 int), (r8v11 int) binds: [B:27:0x0063, B:19:0x0050, B:24:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$new$0(String str, Long l, long j, long j2, int i, long j3, int i2, Runnable runnable) throws IllegalArgumentException {
            int i3;
            String strExtractMetadata;
            long maxScrollDuration = TimelineView.this.getMaxScrollDuration();
            try {
                this.metadataRetriever.setDataSource(str);
                String strExtractMetadata2 = this.metadataRetriever.extractMetadata(9);
                if (strExtractMetadata2 != null) {
                    maxScrollDuration = Long.parseLong(strExtractMetadata2);
                    this.duration = maxScrollDuration;
                }
                String strExtractMetadata3 = this.metadataRetriever.extractMetadata(18);
                i3 = strExtractMetadata3 != null ? Integer.parseInt(strExtractMetadata3) : 0;
                try {
                    String strExtractMetadata4 = this.metadataRetriever.extractMetadata(19);
                    i = strExtractMetadata4 != null ? Integer.parseInt(strExtractMetadata4) : 0;
                    strExtractMetadata = this.metadataRetriever.extractMetadata(24);
                } catch (Exception e) {
                    e = e;
                    this.metadataRetriever = null;
                    FileLog.e(e);
                    int i4 = i3;
                    i3 = i;
                    i = i4;
                    if (l != null) {
                    }
                    if (j != -1) {
                        maxScrollDuration = j2 - j;
                    }
                    float fClamp = Utilities.clamp((i != 0 || i3 == 0) ? 1.0f : i / i3, 1.3333334f, 0.5625f);
                    this.frameHeight = Math.max(1, i);
                    this.frameWidth = Math.max(1, (int) Math.ceil(i * fClamp));
                    int iCeil = (int) Math.ceil(((Math.max(maxScrollDuration, j3) / j3) * i2) / this.frameWidth);
                    this.count = iCeil;
                    this.frameIterator = (long) (maxScrollDuration / iCeil);
                    this.nextFrame = -this.frameIterator;
                    if (j != -1) {
                    }
                    load();
                    if (runnable == null) {
                    }
                }
            } catch (Exception e2) {
                e = e2;
                i3 = 0;
            }
            if (strExtractMetadata != null) {
                int i5 = Integer.parseInt(strExtractMetadata);
                if (i5 != 90 && i5 != 270) {
                    int i42 = i3;
                    i3 = i;
                    i = i42;
                }
            }
            if (l != null) {
                maxScrollDuration = l.longValue();
                this.duration = maxScrollDuration;
            }
            if (j != -1 && j2 != -1) {
                maxScrollDuration = j2 - j;
            }
            float fClamp2 = Utilities.clamp((i != 0 || i3 == 0) ? 1.0f : i / i3, 1.3333334f, 0.5625f);
            this.frameHeight = Math.max(1, i);
            this.frameWidth = Math.max(1, (int) Math.ceil(i * fClamp2));
            int iCeil2 = (int) Math.ceil(((Math.max(maxScrollDuration, j3) / j3) * i2) / this.frameWidth);
            this.count = iCeil2;
            this.frameIterator = (long) (maxScrollDuration / iCeil2);
            this.nextFrame = -this.frameIterator;
            if (j != -1) {
                this.nextFrame = j - this.frameIterator;
            }
            load();
            if (runnable == null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: receiveFrame, reason: merged with bridge method [inline-methods] */
        public void lambda$retrieveFrame$1(Bitmap bitmap) {
            if (!this.loading || this.destroyed) {
                return;
            }
            this.frames.add(new BitmapFrame(bitmap));
            this.loading = false;
            TimelineView.this.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void retrieveFrame() {
            MediaMetadataRetriever mediaMetadataRetriever = this.metadataRetriever;
            if (mediaMetadataRetriever == null) {
                return;
            }
            final Bitmap frameAtTime = null;
            try {
                frameAtTime = mediaMetadataRetriever.getFrameAtTime(this.nextFrame * 1000, 2);
                if (frameAtTime != null) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.frameWidth, this.frameHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    float fMax = Math.max(this.frameWidth / frameAtTime.getWidth(), this.frameHeight / frameAtTime.getHeight());
                    Rect rect = new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight());
                    Rect rect2 = new Rect((int) ((bitmapCreateBitmap.getWidth() - (frameAtTime.getWidth() * fMax)) / 2.0f), (int) ((bitmapCreateBitmap.getHeight() - (frameAtTime.getHeight() * fMax)) / 2.0f), (int) ((bitmapCreateBitmap.getWidth() + (frameAtTime.getWidth() * fMax)) / 2.0f), (int) ((bitmapCreateBitmap.getHeight() + (frameAtTime.getHeight() * fMax)) / 2.0f));
                    if (this.isRound) {
                        if (this.clipPath == null) {
                            this.clipPath = new Path();
                        }
                        this.clipPath.rewind();
                        this.clipPath.addCircle(this.frameWidth / 2.0f, this.frameHeight / 2.0f, Math.min(this.frameWidth, this.frameHeight) / 2.0f, Path.Direction.CW);
                        canvas.clipPath(this.clipPath);
                    }
                    canvas.drawBitmap(frameAtTime, rect, rect2, this.bitmapPaint);
                    frameAtTime.recycle();
                    frameAtTime = bitmapCreateBitmap;
                }
            } catch (Exception e) {
                FileLog.e(e);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$retrieveFrame$1(frameAtTime);
                }
            });
        }

        public void destroy() throws IOException {
            this.destroyed = true;
            Utilities.themeQueue.cancelRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
            Iterator it = this.frames.iterator();
            while (it.hasNext()) {
                Bitmap bitmap = ((BitmapFrame) it.next()).bitmap;
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            this.frames.clear();
            MediaMetadataRetriever mediaMetadataRetriever = this.metadataRetriever;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception e) {
                    this.metadataRetriever = null;
                    FileLog.e(e);
                }
            }
        }

        public long getDuration() {
            return this.duration;
        }

        public int getFrameWidth() {
            return this.frameWidth;
        }

        public void load() {
            if (this.loading || this.metadataRetriever == null || this.frames.size() >= this.count) {
                return;
            }
            this.loading = true;
            this.nextFrame += this.frameIterator;
            Utilities.themeQueue.cancelRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
            Utilities.themeQueue.postRunnable(new TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(this));
        }
    }

    static class WaveformPath extends Path {
        private float lastAudioHeight;
        private float lastAudioSelected;
        private float lastBottom;
        private float lastLeft;
        private float lastMaxBar;
        private float lastRight;
        private long lastScrollDuration;
        private float lastStart;
        private ArrayList lastWaveformCounts;
        private ArrayList lastWaveformLoaded;
        private final int ph = AndroidUtilities.dp(10.0f);
        private final float[] waveformRadii;

        WaveformPath() {
            this.waveformRadii = new float[]{fDp, fDp, fDp, fDp, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
            float fDp = AndroidUtilities.dp(2.0f);
        }

        private boolean eqCount(ArrayList arrayList, ArrayList arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (((Integer) arrayList.get(i)).intValue() != (arrayList2.get(i) == null ? 0 : ((AudioWaveformLoader) arrayList2.get(i)).getCount())) {
                    return false;
                }
            }
            return true;
        }

        private boolean eqLoadedCounts(ArrayList arrayList, ArrayList arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if (arrayList == null || arrayList2 == null || arrayList.size() != arrayList2.size()) {
                return false;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                if (((Float) arrayList.get(i)).floatValue() != (arrayList2.get(i) == null ? BitmapDescriptorFactory.HUE_RED : ((AudioWaveformLoader) arrayList2.get(i)).animatedLoaded.set(((AudioWaveformLoader) arrayList2.get(i)).getLoadedCount()))) {
                    return false;
                }
            }
            return true;
        }

        public static int getMaxBar(ArrayList arrayList) {
            if (arrayList == null) {
                return 0;
            }
            int maxBar = 0;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) != null) {
                    maxBar += ((AudioWaveformLoader) arrayList.get(i)).getMaxBar();
                }
            }
            return maxBar;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0081 A[PHI: r10
          0x0081: PHI (r10v9 float) = (r10v8 float), (r10v7 float) binds: [B:21:0x007e, B:19:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void layout(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, AudioWaveformLoader audioWaveformLoader) {
            rewind();
            float fRound = Math.round(AndroidUtilities.dpf2(3.3333f));
            int count = audioWaveformLoader.getCount();
            int iMin = Math.min(count - 1, (int) Math.ceil(((f3 + this.ph) - f) / fRound));
            for (int iMax = Math.max(0, (int) (((f2 - this.ph) - f) / fRound)); iMax <= iMin; iMax++) {
                float f9 = iMax;
                float fDp = (f9 * fRound) + f + AndroidUtilities.dp(2.0f);
                float bar = f5 <= BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : (audioWaveformLoader.getBar(iMax) / f5) * f6 * 0.6f;
                if (f9 < f8 && iMax + 1 > f8) {
                    bar *= f8 - f9;
                } else if (f9 > f8) {
                    bar = BitmapDescriptorFactory.HUE_RED;
                }
                if (fDp < f2 || fDp > f3) {
                    bar *= f4;
                    if (bar > BitmapDescriptorFactory.HUE_RED) {
                        float fMax = Math.max(bar, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fDp, AndroidUtilities.lerp(f7 - fMax, f7 - ((f6 + fMax) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + fDp, AndroidUtilities.lerp(f7, f7 - ((f6 - fMax) / 2.0f), f4));
                        addRoundRect(rectF, this.waveformRadii, Path.Direction.CW);
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00f3 A[PHI: r12
          0x00f3: PHI (r12v11 float) = (r12v10 float), (r12v9 float) binds: [B:39:0x00f0, B:37:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void layout(float f, float f2, float f3, float f4, float f5, float f6, float f7, ArrayList arrayList, ArrayList arrayList2) {
            rewind();
            float fRound = Math.round(AndroidUtilities.dpf2(3.3333f));
            int iMax = 0;
            for (int i = 0; i < arrayList2.size(); i++) {
                if (arrayList2.get(i) != null) {
                    iMax = Math.max(iMax, ((AudioWaveformLoader) arrayList2.get(i)).getCount());
                }
            }
            int iMax2 = Math.max(0, (int) (((f2 - this.ph) - f) / fRound));
            int iMin = Math.min(iMax - 1, (int) Math.ceil(((f3 + this.ph) - f) / fRound));
            while (iMax2 <= iMin) {
                float f8 = iMax2;
                float fDp = f + (f8 * fRound) + AndroidUtilities.dp(2.0f);
                int i2 = 0;
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    short bar = (arrayList2.get(i3) == null || iMax2 >= ((AudioWaveformLoader) arrayList2.get(i3)).getCount()) ? (short) 0 : ((AudioWaveformLoader) arrayList2.get(i3)).getBar(iMax2);
                    if (f8 < ((Float) arrayList.get(i3)).floatValue() && iMax2 + 1 > ((Float) arrayList.get(i3)).floatValue()) {
                        bar = (short) (bar * (((Float) arrayList.get(i3)).floatValue() - f8));
                    } else if (f8 > ((Float) arrayList.get(i3)).floatValue()) {
                        bar = 0;
                    }
                    i2 += bar;
                }
                float f9 = f5 <= BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : (i2 / f5) * f6 * 0.6f;
                if (fDp < f2 || fDp > f3) {
                    f9 *= f4;
                    if (f9 > BitmapDescriptorFactory.HUE_RED) {
                        float fMax = Math.max(f9, AndroidUtilities.lerp(AndroidUtilities.dpf2(0.66f), AndroidUtilities.dpf2(1.5f), f4));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(fDp, AndroidUtilities.lerp(f7 - fMax, f7 - ((f6 + fMax) / 2.0f), f4), AndroidUtilities.dpf2(1.66f) + fDp, AndroidUtilities.lerp(f7, f7 - ((f6 - fMax) / 2.0f), f4));
                        addRoundRect(rectF, this.waveformRadii, Path.Direction.CW);
                    }
                }
                iMax2++;
            }
        }

        public void check(float f, float f2, float f3, float f4, float f5, float f6, float f7, ArrayList arrayList) {
            if (arrayList == null || arrayList.isEmpty()) {
                rewind();
                return;
            }
            if (Math.abs(this.lastAudioHeight - f5) > 1.0f || Math.abs(this.lastMaxBar - f6) > 0.01f || Math.abs(this.lastAudioSelected - f4) > 0.1f || Math.abs(this.lastBottom - f7) > 1.0f || Math.abs(this.lastStart - f) > 1.0f || Math.abs(this.lastLeft - f2) > 1.0f || Math.abs(this.lastRight - f3) > 1.0f || eqCount(this.lastWaveformCounts, arrayList) || eqLoadedCounts(this.lastWaveformLoaded, arrayList)) {
                ArrayList arrayList2 = this.lastWaveformCounts;
                if (arrayList2 == null) {
                    this.lastWaveformCounts = new ArrayList();
                } else {
                    arrayList2.clear();
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    this.lastWaveformCounts.add(Integer.valueOf(arrayList.get(i) == null ? 0 : ((AudioWaveformLoader) arrayList.get(i)).getCount()));
                }
                ArrayList arrayList3 = this.lastWaveformLoaded;
                if (arrayList3 == null) {
                    this.lastWaveformLoaded = new ArrayList();
                } else {
                    arrayList3.clear();
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    this.lastWaveformLoaded.add(Float.valueOf(arrayList.get(i2) == null ? BitmapDescriptorFactory.HUE_RED : ((AudioWaveformLoader) arrayList.get(i2)).animatedLoaded.set(((AudioWaveformLoader) arrayList.get(i2)).getLoadedCount())));
                }
                this.lastStart = f;
                this.lastLeft = f2;
                this.lastRight = f3;
                this.lastAudioSelected = f4;
                this.lastMaxBar = f6;
                this.lastAudioHeight = f5;
                this.lastBottom = f7;
                layout(f, f2, f3, f4, f6, f5, f7, this.lastWaveformLoaded, arrayList);
            }
        }

        public void check(float f, float f2, float f3, float f4, long j, float f5, float f6, float f7, AudioWaveformLoader audioWaveformLoader) {
            ArrayList arrayList;
            if (audioWaveformLoader == null) {
                rewind();
                return;
            }
            float f8 = audioWaveformLoader.animatedLoaded.set(audioWaveformLoader.getLoadedCount());
            if (this.lastScrollDuration == j && Math.abs(this.lastAudioHeight - f5) <= 1.0f && Math.abs(this.lastMaxBar - f6) <= 0.01f && Math.abs(this.lastAudioSelected - f4) <= 0.1f && Math.abs(this.lastBottom - f7) <= 1.0f && Math.abs(this.lastStart - f) <= 1.0f && Math.abs(this.lastLeft - f2) <= 1.0f && Math.abs(this.lastRight - f3) <= 1.0f && (arrayList = this.lastWaveformCounts) != null && arrayList.size() == 1) {
                ArrayList arrayList2 = this.lastWaveformLoaded;
                if (Math.abs(((arrayList2 == null || arrayList2.isEmpty()) ? BitmapDescriptorFactory.HUE_RED : ((Float) this.lastWaveformLoaded.get(0)).floatValue()) - f8) <= 0.01f) {
                    return;
                }
            }
            ArrayList arrayList3 = this.lastWaveformCounts;
            if (arrayList3 == null) {
                this.lastWaveformCounts = new ArrayList();
            } else {
                arrayList3.clear();
            }
            this.lastWaveformCounts.add(Integer.valueOf(audioWaveformLoader.getCount()));
            ArrayList arrayList4 = this.lastWaveformLoaded;
            if (arrayList4 == null) {
                this.lastWaveformLoaded = new ArrayList();
            } else {
                arrayList4.clear();
            }
            this.lastWaveformLoaded.add(Float.valueOf(f8));
            this.lastStart = f;
            this.lastLeft = f2;
            this.lastRight = f3;
            this.lastAudioSelected = f4;
            this.lastMaxBar = f6;
            this.lastAudioHeight = f5;
            this.lastBottom = f7;
            layout(f, f2, f3, f4, f6, f5, f7, audioWaveformLoader.animatedLoaded.set(audioWaveformLoader.getLoadedCount()), audioWaveformLoader);
        }
    }

    public TimelineView(Context context, final ViewGroup viewGroup, final View view, final Theme.ResourcesProvider resourcesProvider, final BlurringShader.BlurManager blurManager) {
        super(context);
        this.collageSelected = 0;
        this.collageWaveforms = new ArrayList();
        this.collageTracks = new ArrayList();
        this.collageFramePaint = new Paint(3);
        this.collageClipPath = new Path();
        this.selectedCollageClipPath = new Path();
        this.maxCount = 1;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.roundT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.roundSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.audioT = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.audioSelectedT = new AnimatedFloat(this, 360L, cubicBezierInterpolator);
        this.waveformMax = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.timelineWaveformLoaded = new AnimatedFloat(this, 0L, 600L, cubicBezierInterpolator);
        this.timelineWaveformMax = new AnimatedFloat(this, 0L, 360L, cubicBezierInterpolator);
        this.openT = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
        this.open = true;
        this.timelineBounds = new RectF();
        this.timelineClipPath = new Path();
        this.timelineWaveformPath = new WaveformPath();
        this.videoBounds = new RectF();
        this.videoFramePaint = new Paint(3);
        this.videoClipPath = new Path();
        this.selectedVideoClipPath = new Path();
        this.roundBounds = new RectF();
        this.roundClipPath = new Path();
        Paint paint = new Paint(1);
        this.regionPaint = paint;
        Paint paint2 = new Paint(1);
        this.regionCutPaint = paint2;
        Paint paint3 = new Paint(1);
        this.regionHandlePaint = paint3;
        Paint paint4 = new Paint(1);
        this.progressShadowPaint = paint4;
        Paint paint5 = new Paint(1);
        this.progressWhitePaint = paint5;
        TextPaint textPaint = new TextPaint(1);
        this.countTextPaint = textPaint;
        this.audioBounds = new RectF();
        this.audioClipPath = new Path();
        Paint paint6 = new Paint(1);
        this.waveformPaint = paint6;
        this.waveformPath = new WaveformPath();
        Paint paint7 = new Paint(1);
        this.audioDotPaint = paint7;
        TextPaint textPaint2 = new TextPaint(1);
        this.audioAuthorPaint = textPaint2;
        TextPaint textPaint3 = new TextPaint(1);
        this.audioTitlePaint = textPaint3;
        LinearGradient linearGradient = new LinearGradient(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 16.0f, BitmapDescriptorFactory.HUE_RED, new int[]{16777215, -1}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
        this.ellipsizeGradient = linearGradient;
        this.ellipsizeMatrix = new Matrix();
        Paint paint8 = new Paint(1);
        this.ellipsizePaint = paint8;
        this.scroller = new Scroller(getContext());
        this.coverStart = -1L;
        this.coverEnd = -1L;
        this.loopProgress = new AnimatedFloat(BitmapDescriptorFactory.HUE_RED, this, 0L, 340L, cubicBezierInterpolator);
        this.loopProgressFrom = -1L;
        this.pressHandle = -1;
        this.pressHandleCollageIndex = -1;
        this.pressType = -1;
        this.pressCollageIndex = -1;
        this.dragSpeed = 1.0f;
        this.scrollingVideo = true;
        this.scrollingCollage = -1;
        this.scrolling = false;
        this.selectedVideoRadii = new float[8];
        this.previewContainer = view;
        this.resourcesProvider = resourcesProvider;
        paint7.setColor(Integer.MAX_VALUE);
        textPaint2.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint2.setTypeface(AndroidUtilities.bold());
        textPaint2.setColor(-1);
        textPaint3.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint3.setColor(-1);
        paint6.setColor(1090519039);
        paint8.setShader(linearGradient);
        paint8.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint.setColor(-1);
        paint.setShadowLayer(AndroidUtilities.dp(1.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(1.0f), 436207616);
        textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        textPaint.setColor(-1);
        textPaint.setShadowLayer(AndroidUtilities.dp(2.0f), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(2.0f), 1073741824);
        textPaint.setTypeface(AndroidUtilities.bold());
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint3.setColor(-16777216);
        paint5.setColor(-1);
        paint4.setColor(637534208);
        this.timelineText = new Text(LocaleController.getString(R.string.StoryTimeline), 12.0f, AndroidUtilities.bold());
        Drawable drawableMutate = getContext().getResources().getDrawable(R.drawable.timeline).mutate();
        this.timelineIcon = drawableMutate;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, mode));
        Drawable drawableMutate2 = getContext().getResources().getDrawable(R.drawable.filled_widget_music).mutate();
        this.audioIcon = drawableMutate2;
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.blurManager = blurManager;
        this.backgroundBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 0);
        this.audioBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 3);
        this.audioWaveformBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 4);
        this.onLongPress = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$6(viewGroup, resourcesProvider, blurManager, view);
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int detectHandle(MotionEvent motionEvent) {
        boolean z;
        float f;
        float f2;
        float f3;
        float f4;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        float fClamp = Utilities.clamp(this.progress, getBaseDuration(), 0L);
        Track track = this.collageMain;
        float f5 = jMin;
        float f6 = this.px + this.ph + (this.sw * (((fClamp + (track != null ? track.offset + (track.left * track.duration) : this.videoTrack == null ? this.audioOffset : 0L)) - this.scroll) / f5));
        if (!this.isCover && x >= f6 - AndroidUtilities.dp(12.0f) && x <= f6 + AndroidUtilities.dp(12.0f)) {
            return 0;
        }
        boolean z2 = this.videoTrack != null && y > (((float) (this.h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(2.0f));
        boolean z3 = !this.collageTracks.isEmpty() && y > ((((((float) (this.h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(4.0f))) - getCollageHeight()) - ((float) AndroidUtilities.dp(4.0f))) - ((float) AndroidUtilities.dp(2.0f)) && y < (((float) (this.h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(2.0f));
        if (this.hasRound) {
            if (y > (((((((this.h - this.py) - getVideoHeight()) - AndroidUtilities.dp(4.0f)) - getCollageHeight()) - AndroidUtilities.dp(this.collageTracks.isEmpty() ? BitmapDescriptorFactory.HUE_RED : 4.0f)) - getRoundHeight()) - AndroidUtilities.dp(4.0f)) - AndroidUtilities.dp(2.0f)) {
                z = y < (((((float) (this.h - this.py)) - getVideoHeight()) - ((float) AndroidUtilities.dp(2.0f))) - getCollageHeight()) - ((float) AndroidUtilities.dp(this.collageTracks.isEmpty() ? BitmapDescriptorFactory.HUE_RED : 4.0f));
            }
        }
        if (z3) {
            for (int i = 0; i < this.collageTracks.size(); i++) {
                Track track2 = (Track) this.collageTracks.get(i);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(track2.bounds);
                rectF.inset(-AndroidUtilities.dp(2.0f), -AndroidUtilities.dp(2.0f));
                if (rectF.contains(x, y)) {
                    float f7 = this.px + this.ph;
                    float f8 = track2.offset;
                    float f9 = this.sw;
                    float f10 = ((f8 / f5) * f9) + f7;
                    float f11 = track2.left;
                    float f12 = track2.duration;
                    float f13 = ((((f11 * f12) + f8) / f5) * f9) + f7;
                    float f14 = (((f8 + (track2.right * f12)) / f5) * f9) + f7;
                    float f15 = f7 + (((r4 + r11) / f5) * f9);
                    this.pressHandleCollageIndex = i;
                    if (x >= f13 - AndroidUtilities.dp(15.0f)) {
                        f4 = 5.0f;
                        if (x <= AndroidUtilities.dp(5.0f) + f13) {
                            return 13;
                        }
                    } else {
                        f4 = 5.0f;
                    }
                    if (x >= f14 - AndroidUtilities.dp(f4) && x <= AndroidUtilities.dp(15.0f) + f14) {
                        return 14;
                    }
                    if (x < f13 || x > f14 || (track2.left <= 0.01f && track2.right >= 0.99f)) {
                        return (x < f10 || x > f15) ? -1 : 16;
                    }
                    return 15;
                }
            }
        } else if (z2) {
            float f16 = this.px + this.ph;
            Track track3 = this.videoTrack;
            float f17 = track3.left;
            float f18 = track3.duration;
            float f19 = this.scroll;
            float f20 = this.sw;
            float f21 = ((((f17 * f18) - f19) / f5) * f20) + f16;
            float f22 = f16 + ((((track3.right * f18) - f19) / f5) * f20);
            if (this.isCover) {
                return (getBaseDuration() < getMaxScrollDuration() || (x >= f21 - ((float) AndroidUtilities.dp(15.0f)) && x <= f22 + ((float) AndroidUtilities.dp(15.0f)))) ? 4 : 1;
            }
            if (x >= f21 - AndroidUtilities.dp(15.0f)) {
                f3 = 5.0f;
                if (x <= AndroidUtilities.dp(5.0f) + f21) {
                    return 2;
                }
            } else {
                f3 = 5.0f;
            }
            if (x >= f22 - AndroidUtilities.dp(f3) && x <= AndroidUtilities.dp(15.0f) + f22) {
                return 3;
            }
            if (x >= f21 && x <= f22) {
                Track track4 = this.videoTrack;
                if (track4.left > 0.01f || track4.right < 0.99f) {
                    return 4;
                }
            }
        } else if (z) {
            float f23 = this.px + this.ph;
            float f24 = this.roundOffset;
            float f25 = this.roundLeft;
            float f26 = this.roundDuration;
            float f27 = this.scroll;
            float f28 = this.sw;
            float f29 = (((((f25 * f26) + f24) - f27) / f5) * f28) + f23;
            float f30 = f23 + ((((f24 + (this.roundRight * f26)) - f27) / f5) * f28);
            if (this.roundSelected || this.videoTrack == null) {
                if (x >= f29 - AndroidUtilities.dp(15.0f)) {
                    f2 = 5.0f;
                    if (x <= AndroidUtilities.dp(5.0f) + f29) {
                        return 10;
                    }
                } else {
                    f2 = 5.0f;
                }
                if (x >= f30 - AndroidUtilities.dp(f2) && x <= AndroidUtilities.dp(15.0f) + f30) {
                    return 11;
                }
                if (x >= f29 && x <= f30) {
                    return this.videoTrack == null ? 12 : 9;
                }
                float f31 = this.px + this.ph;
                long j = this.roundOffset;
                long j2 = this.scroll;
                float f32 = this.sw;
                float f33 = (((j - j2) / f5) * f32) + f31;
                f30 = f31 + ((((j + this.roundDuration) - j2) / f5) * f32);
                f29 = f33;
            }
            if (x >= f29 && x <= f30) {
                return 9;
            }
        } else if (this.hasAudio) {
            float f34 = this.px + this.ph;
            float f35 = this.audioOffset;
            float f36 = this.audioLeft;
            float f37 = this.audioDuration;
            float f38 = this.scroll;
            float f39 = this.sw;
            float f40 = (((((f36 * f37) + f35) - f38) / f5) * f39) + f34;
            float f41 = f34 + ((((f35 + (this.audioRight * f37)) - f38) / f5) * f39);
            if (this.audioSelected || (this.videoTrack == null && !this.hasRound)) {
                if (x >= f40 - AndroidUtilities.dp(15.0f)) {
                    f = 5.0f;
                    if (x <= AndroidUtilities.dp(5.0f) + f40) {
                        return 6;
                    }
                } else {
                    f = 5.0f;
                }
                if (x >= f41 - AndroidUtilities.dp(f) && x <= AndroidUtilities.dp(15.0f) + f41) {
                    return 7;
                }
                if (x >= f40 && x <= f41) {
                    return this.videoTrack == null ? 8 : 5;
                }
                float f42 = this.px + this.ph;
                long j3 = this.audioOffset;
                long j4 = this.scroll;
                float f43 = this.sw;
                float f44 = (((j3 - j4) / f5) * f43) + f42;
                f41 = f42 + ((((j3 + this.audioDuration) - j4) / f5) * f43);
                f40 = f44;
            }
            if (x >= f40 && x <= f41) {
                return 5;
            }
        }
        Track track5 = this.videoTrack;
        return (track5 == null || track5.duration <= getMaxScrollDuration() || !z2) ? -1 : 1;
    }

    private void drawProgress(Canvas canvas, float f, float f2, long j, float f3) {
        float f4;
        if (this.isCover) {
            return;
        }
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        float fClamp = Utilities.clamp(j, getBaseDuration(), 0L);
        Track track = this.collageMain;
        if (track != null) {
            f4 = track.offset + (track.left * track.duration);
        } else {
            f4 = this.videoTrack == null ? this.audioOffset : 0L;
        }
        float f5 = this.px + this.ph + (this.sw * (((fClamp + f4) - this.scroll) / jMin));
        float f6 = (((f2 - f) / 2.0f) / 2.0f) * (1.0f - f3);
        float f7 = f + f6;
        float f8 = f2 - f6;
        this.progressShadowPaint.setAlpha((int) (38.0f * f3));
        this.progressWhitePaint.setAlpha((int) (f3 * 255.0f));
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f5 - AndroidUtilities.dpf2(1.5f), f7, AndroidUtilities.dpf2(1.5f) + f5, f8);
        rectF.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.progressShadowPaint);
        rectF.set(f5 - AndroidUtilities.dpf2(1.5f), f7, f5 + AndroidUtilities.dpf2(1.5f), f8);
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.progressWhitePaint);
    }

    private void drawRegion(Canvas canvas, Paint paint, float f, float f2, float f3, float f4, float f5) {
        if (f5 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f3 - AndroidUtilities.dp(10.0f), f, f4 + AndroidUtilities.dp(10.0f), f2);
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.w, this.h, 255, 31);
        int i = (int) (255.0f * f5);
        this.regionPaint.setAlpha(i);
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), this.regionPaint);
        rectF.inset(AndroidUtilities.dp(this.isCover ? 2.5f : 10.0f), AndroidUtilities.dp(2.0f));
        if (this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(3.0f), AndroidUtilities.dp(3.0f), this.regionCutPaint);
        } else {
            canvas.drawRect(rectF, this.regionCutPaint);
        }
        float fDp = AndroidUtilities.dp(2.0f);
        float fDp2 = AndroidUtilities.dp(10.0f);
        Paint paint2 = paint != null ? paint : this.regionHandlePaint;
        this.regionHandlePaint.setAlpha(255);
        paint2.setAlpha(i);
        float f6 = f + f2;
        float f7 = (f6 - fDp2) / 2.0f;
        float f8 = (f6 + fDp2) / 2.0f;
        rectF.set(f3 - ((AndroidUtilities.dp(this.isCover ? 2.0f : 10.0f) - fDp) / 2.0f), f7, f3 - ((AndroidUtilities.dp(this.isCover ? 2.0f : 10.0f) + fDp) / 2.0f), f8);
        if (!this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), paint2);
            if (paint != null && !this.isCover) {
                this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), this.regionHandlePaint);
            }
        }
        rectF.set(f4 + ((AndroidUtilities.dp(this.isCover ? 2.5f : 10.0f) - fDp) / 2.0f), f7, f4 + ((AndroidUtilities.dp(this.isCover ? 2.5f : 10.0f) + fDp) / 2.0f), f8);
        if (!this.isCover) {
            canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), paint2);
            if (paint != null) {
                this.regionHandlePaint.setAlpha((int) (f5 * 48.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), this.regionHandlePaint);
            }
        }
        canvas.restore();
    }

    private float getAudioHeight() {
        return AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), this.audioSelectedT.set(this.audioSelected));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getBaseDuration() {
        Track track = this.videoTrack;
        return Math.max(1L, (track == null && (track = this.collageMain) == null) ? this.hasRound ? this.roundDuration : this.audioDuration : track.duration);
    }

    private float getCollageHeight() {
        if (this.collageTracks.isEmpty()) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float fLerp = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < this.collageTracks.size(); i++) {
            if (fLerp > BitmapDescriptorFactory.HUE_RED) {
                fLerp += AndroidUtilities.dp(4.0f);
            }
            fLerp += AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), ((Track) this.collageTracks.get(i)).selectedT.get());
        }
        return fLerp;
    }

    private float getRoundHeight() {
        if (!this.hasRound) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), this.roundSelectedT.set(this.roundSelected));
    }

    private float getVideoHeight() {
        if (this.videoTrack == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), r0.selectedT.get());
    }

    public static int heightDp() {
        return 388;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Float f) {
        this.audioVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onAudioVolumeChange(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onAudioRemove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Float f) {
        this.roundVolume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onRoundVolumeChange(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onRoundRemove();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(Float f) {
        this.videoTrack.volume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onVideoVolumeChange(f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(Track track, Float f) {
        track.volume = f.floatValue();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onVideoVolumeChange(track.index, f.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager, View view) {
        int i;
        ItemOptions itemOptionsForceTop;
        float fDp;
        RectF rectF;
        int i2 = this.pressType;
        if (i2 == 2 && this.hasAudio) {
            SliderView onValueChange = new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(this.audioVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$0((Float) obj);
                }
            });
            long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
            int i3 = this.w;
            int i4 = this.px;
            int i5 = this.ph;
            float fMin = Math.min((i3 - i4) - i5, i4 + i5 + ((((this.audioOffset - this.scroll) + (AndroidUtilities.lerp(this.audioRight, 1.0f, this.audioSelectedT.get()) * this.audioDuration)) / jMin) * this.sw));
            itemOptionsForceTop = ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange).addSpaceGap().add(R.drawable.msg_delete, LocaleController.getString(R.string.StoryAudioRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1();
                }
            }).setGravity(5).forceTop(true);
            fDp = (-(this.w - fMin)) + AndroidUtilities.dp(18.0f);
            rectF = this.audioBounds;
        } else if (i2 == 1 && this.hasRound) {
            SliderView onValueChange2 = new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(this.roundVolume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$2((Float) obj);
                }
            });
            long jMin2 = Math.min(getBaseDuration(), getMaxScrollDuration());
            int i6 = this.w;
            int i7 = this.px;
            int i8 = this.ph;
            float fMin2 = Math.min((i6 - i7) - i8, i7 + i8 + ((((this.roundOffset - this.scroll) + (AndroidUtilities.lerp(this.roundRight, 1.0f, this.roundSelectedT.get()) * this.roundDuration)) / jMin2) * this.sw));
            itemOptionsForceTop = ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(onValueChange2).addSpaceGap().add(R.drawable.msg_delete, LocaleController.getString(R.string.StoryRoundRemove), new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$3();
                }
            }).setGravity(5).forceTop(true);
            fDp = (-(this.w - fMin2)) + AndroidUtilities.dp(18.0f);
            rectF = this.roundBounds;
        } else if (i2 == 0 && this.videoTrack != null) {
            itemOptionsForceTop = ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(this.videoTrack.volume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$4((Float) obj);
                }
            })).setGravity(5).forceTop(true);
            fDp = AndroidUtilities.dp(18.0f);
            rectF = this.videoBounds;
        } else {
            if (i2 != 3 || (i = this.pressCollageIndex) < 0 || i >= this.collageTracks.size()) {
                return;
            }
            final Track track = (Track) this.collageTracks.get(this.pressCollageIndex);
            itemOptionsForceTop = ItemOptions.makeOptions(viewGroup, resourcesProvider, this).addView(new SliderView(getContext(), 0).setMinMax(BitmapDescriptorFactory.HUE_RED, 1.5f).setValue(track.volume).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$new$5(track, (Float) obj);
                }
            })).setGravity(5).forceTop(true);
            fDp = AndroidUtilities.dp(18.0f);
            rectF = track.bounds;
        }
        itemOptionsForceTop.translate(fDp, rectF.top).show().setBlurBackground(blurManager, -view.getX(), -view.getY());
        try {
            performHapticFeedback(0, 1);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressAt$9(long j) {
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onProgressChange(j, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupRoundThumbs$8() {
        VideoThumbsLoader videoThumbsLoader = this.roundThumbs;
        if (videoThumbsLoader == null || videoThumbsLoader.getDuration() <= 0) {
            return;
        }
        this.roundDuration = this.roundThumbs.getDuration();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$sortCollage$7(Track track, Track track2) {
        return (int) (track2.duration - track.duration);
    }

    private long maxSelectDuration() {
        return this.maxCount * 59000;
    }

    private long minAudioSelect() {
        return (long) Math.max(1000.0f, Math.min(getBaseDuration(), 59000L) * 0.15f);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0131 A[PHI: r1
      0x0131: PHI (r1v37 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate) = 
      (r1v24 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r1v36 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r1v60 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
     binds: [B:38:0x012f, B:29:0x00e7, B:7:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void moveAudioOffset(float f) {
        float f2;
        long j;
        float f3;
        long j2;
        long j3;
        long j4;
        TimelineDelegate timelineDelegate;
        long j5;
        long j6;
        long jClamp;
        long j7;
        long j8;
        long j9;
        TimelineDelegate timelineDelegate2;
        long jClamp2;
        TimelineDelegate timelineDelegate3;
        long j10;
        long j11;
        float f4;
        Track track = this.videoTrack;
        if (track == null && !this.hasRound) {
            long j12 = this.audioOffset;
            long jClamp3 = Utilities.clamp(j12 + ((long) f), 0L, -(this.audioDuration - Math.min(getBaseDuration(), getMaxScrollDuration())));
            this.audioOffset = jClamp3;
            float f5 = jClamp3 - j12;
            this.audioLeft = Utilities.clamp(this.audioLeft - (f5 / this.audioDuration), 1.0f, BitmapDescriptorFactory.HUE_RED);
            this.audioRight = Utilities.clamp(this.audioRight - (f5 / this.audioDuration), 1.0f, BitmapDescriptorFactory.HUE_RED);
            timelineDelegate = this.delegate;
            if (timelineDelegate != null) {
            }
        } else if (this.audioSelected) {
            if (track != null) {
                f2 = track.left;
                j = track.duration;
            } else {
                f2 = this.roundLeft;
                j = this.roundDuration;
            }
            float f6 = f2 * j;
            if (track != null) {
                f3 = track.right;
                j2 = track.duration;
            } else {
                f3 = this.roundRight;
                j2 = this.roundDuration;
            }
            float f7 = f3 * j2;
            float f8 = track != null ? (track.right - track.left) * track.duration : this.roundDuration * (this.roundRight - this.roundLeft);
            float f9 = this.audioRight;
            float f10 = this.audioDuration;
            long j13 = (long) (f7 - (f9 * f10));
            float f11 = this.audioLeft;
            long j14 = (long) (f6 - (f11 * f10));
            float fMin = Math.min(f9 - f11, f8 / f10);
            long j15 = this.audioOffset;
            long j16 = (long) f;
            long j17 = j15 + j16;
            if (j17 > j13) {
                float fClamp = Utilities.clamp(((f7 - j15) - j16) / this.audioDuration, 1.0f, fMin);
                this.audioRight = fClamp;
                float fClamp2 = Utilities.clamp(fClamp - fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
                this.audioLeft = fClamp2;
                float f12 = this.audioRight;
                float f13 = this.audioDuration;
                long j18 = (long) (f7 - (f12 * f13));
                long j19 = (long) (f6 - (fClamp2 * f13));
                if (j18 < j19) {
                    j6 = j19;
                    j5 = j18;
                } else {
                    j5 = j19;
                    j6 = j18;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j16, j6, j5);
                timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onAudioLeftChange(this.audioLeft);
                    this.delegate.onAudioRightChange(this.audioRight);
                }
            } else if (j17 < j14) {
                float fClamp3 = Utilities.clamp(((f6 - j15) - j16) / this.audioDuration, 1.0f - fMin, BitmapDescriptorFactory.HUE_RED);
                this.audioLeft = fClamp3;
                float fClamp4 = Utilities.clamp(fClamp3 + fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
                this.audioRight = fClamp4;
                float f14 = this.audioDuration;
                long j20 = (long) (f7 - (fClamp4 * f14));
                long j21 = (long) (f6 - (this.audioLeft * f14));
                if (j20 < j21) {
                    j4 = j21;
                    j3 = j20;
                } else {
                    j3 = j21;
                    j4 = j20;
                }
                this.audioOffset = Utilities.clamp(this.audioOffset + j16, j4, j3);
                timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                }
            } else {
                this.audioOffset = j17;
            }
        } else {
            long j22 = this.audioOffset + ((long) f);
            float baseDuration = getBaseDuration();
            float f15 = this.audioDuration;
            this.audioOffset = Utilities.clamp(j22, (long) (baseDuration - (this.audioRight * f15)), (long) ((-this.audioLeft) * f15));
        }
        invalidate();
        TimelineDelegate timelineDelegate4 = this.delegate;
        if (timelineDelegate4 != null) {
            timelineDelegate4.onAudioOffsetChange(this.audioOffset + ((long) (this.audioLeft * this.audioDuration)));
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate3 = this.delegate) != null) {
            timelineDelegate3.onProgressDragChange(true);
            Track track2 = this.videoTrack;
            if (track2 != null) {
                j10 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f16 = track2.right;
                float f17 = track2.duration;
                j11 = (long) (f16 * f17);
                f4 = track2.left * f17;
            } else if (this.hasRound) {
                j10 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f18 = this.roundRight;
                float f19 = this.roundDuration;
                j11 = (long) (f18 * f19);
                f4 = this.roundLeft * f19;
            } else {
                float f20 = this.audioLeft;
                long j23 = this.audioDuration;
                jClamp2 = Utilities.clamp((long) (f20 * j23), j23, 0L);
                if (this.videoTrack != null && Math.abs(this.progress - jClamp2) > 400) {
                    this.loopProgressFrom = this.progress;
                    this.loopProgress.set(1.0f, true);
                }
                timelineDelegate2 = this.delegate;
                this.progress = jClamp2;
            }
            jClamp2 = Utilities.clamp(j10, j11, (long) f4);
            if (this.videoTrack != null) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            timelineDelegate2 = this.delegate;
            this.progress = jClamp2;
        } else {
            if (!z && !this.scrolling) {
                return;
            }
            Track track3 = this.videoTrack;
            if (track3 != null) {
                j7 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f21 = track3.right;
                float f22 = track3.duration;
                j8 = (long) (f21 * f22);
                j9 = (long) (track3.left * f22);
            } else if (!this.hasRound || track3 == null) {
                float f23 = this.audioLeft;
                long j24 = this.audioDuration;
                jClamp = Utilities.clamp((long) (f23 * j24), j24, 0L);
                this.progress = jClamp;
                timelineDelegate2 = this.delegate;
                if (timelineDelegate2 != null) {
                    return;
                } else {
                    jClamp2 = this.progress;
                }
            } else {
                j7 = this.audioOffset + ((long) (this.audioLeft * this.audioDuration));
                float f24 = this.roundRight;
                float f25 = track3.duration;
                j8 = (long) (f24 * f25);
                j9 = (long) (this.roundLeft * f25);
            }
            jClamp = Utilities.clamp(j7, j8, j9);
            this.progress = jClamp;
            timelineDelegate2 = this.delegate;
            if (timelineDelegate2 != null) {
            }
        }
        timelineDelegate2.onProgressChange(jClamp2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00fd A[PHI: r2
      0x00fd: PHI (r2v31 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate) = 
      (r2v30 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r2v46 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
     binds: [B:27:0x00fb, B:18:0x009f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void moveCollageOffset(Track track, float f) {
        long jClamp;
        TimelineDelegate timelineDelegate;
        long jClamp2;
        TimelineDelegate timelineDelegate2;
        long j;
        long j2;
        TimelineDelegate timelineDelegate3;
        long j3;
        long j4;
        if (track == null) {
            return;
        }
        Track track2 = this.collageMain;
        if (track2 != track && track2 != null) {
            if (this.collageSelected == this.collageTracks.indexOf(track)) {
                Track track3 = this.collageMain;
                float f2 = track3.duration;
                float f3 = track.right;
                float f4 = track.duration;
                long j5 = (long) ((f2 * 1.0f) - (f3 * f4));
                float f5 = f2 * BitmapDescriptorFactory.HUE_RED;
                float f6 = track.left;
                long j6 = (long) (f5 - (f6 * f4));
                float fMin = Math.min(f3 - f6, ((track3.right - track3.left) * f2) / f4);
                long j7 = track.offset;
                long j8 = (long) f;
                long j9 = j7 + j8;
                if (j9 > j5) {
                    float fClamp = Utilities.clamp((((this.collageMain.right * r2.duration) - j7) - j8) / track.duration, 1.0f, fMin);
                    track.right = fClamp;
                    float fClamp2 = Utilities.clamp(fClamp - fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
                    track.left = fClamp2;
                    Track track4 = this.collageMain;
                    float f7 = track4.right;
                    float f8 = track4.duration;
                    float f9 = track.right;
                    float f10 = track.duration;
                    long j10 = (long) ((f7 * f8) - (f9 * f10));
                    long j11 = (long) ((track4.left * f8) - (fClamp2 * f10));
                    if (j10 < j11) {
                        j4 = j11;
                        j3 = j10;
                    } else {
                        j3 = j11;
                        j4 = j10;
                    }
                    track.offset = Utilities.clamp(track.offset + j8, j4, j3);
                    timelineDelegate3 = this.delegate;
                    if (timelineDelegate3 != null) {
                        timelineDelegate3.onVideoLeftChange(track.index, track.left);
                        this.delegate.onVideoRightChange(track.index, track.right);
                    }
                } else if (j9 < j6) {
                    float fClamp3 = Utilities.clamp((((this.collageMain.left * r2.duration) - j7) - j8) / track.duration, 1.0f - fMin, BitmapDescriptorFactory.HUE_RED);
                    track.left = fClamp3;
                    float fClamp4 = Utilities.clamp(fClamp3 + fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
                    track.right = fClamp4;
                    Track track5 = this.collageMain;
                    float f11 = track5.right;
                    float f12 = track5.duration;
                    float f13 = track.duration;
                    long j12 = (long) ((f11 * f12) - (fClamp4 * f13));
                    long j13 = (long) ((track5.left * f12) - (track.left * f13));
                    if (j12 < j13) {
                        j2 = j12;
                        j = j13;
                    } else {
                        j = j12;
                        j2 = j13;
                    }
                    track.offset = Utilities.clamp(track.offset + j8, j, j2);
                    timelineDelegate3 = this.delegate;
                    if (timelineDelegate3 != null) {
                    }
                } else {
                    track.offset = j9;
                }
            } else {
                long j14 = track.offset + ((long) f);
                float baseDuration = getBaseDuration();
                float f14 = track.duration;
                track.offset = Utilities.clamp(j14, (long) (baseDuration - (track.right * f14)), (long) ((-track.left) * f14));
            }
        }
        invalidate();
        TimelineDelegate timelineDelegate4 = this.delegate;
        if (timelineDelegate4 != null) {
            timelineDelegate4.onVideoOffsetChange(track.index, track.offset);
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate2 = this.delegate) != null) {
            timelineDelegate2.onProgressDragChange(true);
            Track track6 = this.collageMain;
            if (track6 == track || track6 == null) {
                float f15 = track.left;
                long j15 = track.duration;
                jClamp2 = Utilities.clamp((long) (f15 * j15), j15, 0L);
            } else {
                long j16 = track.offset + ((long) (track.left * track.duration));
                float f16 = track6.right;
                float f17 = track6.duration;
                jClamp2 = Utilities.clamp(j16, (long) (f16 * f17), (long) (track6.left * f17));
            }
            Track track7 = this.collageMain;
            if (track7 != track && track7 != null && Math.abs(this.progress - jClamp2) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            timelineDelegate = this.delegate;
            this.progress = jClamp2;
        } else {
            if (!z && !this.scrolling) {
                return;
            }
            Track track8 = this.collageMain;
            if (track8 == track || track8 == null) {
                float f18 = track.left;
                long j17 = track.duration;
                jClamp = Utilities.clamp((long) (f18 * j17), j17, 0L);
            } else {
                long j18 = track.offset + ((long) (track.left * track.duration));
                float f19 = track8.right;
                float f20 = track8.duration;
                jClamp = Utilities.clamp(j18, (long) (f19 * f20), (long) (track8.left * f20));
            }
            this.progress = jClamp;
            timelineDelegate = this.delegate;
            if (timelineDelegate == null) {
                return;
            } else {
                jClamp2 = this.progress;
            }
        }
        timelineDelegate.onProgressChange(jClamp2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0128 A[PHI: r1
      0x0128: PHI (r1v38 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate) = 
      (r1v23 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r1v37 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r1v60 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
     binds: [B:25:0x0126, B:16:0x00cd, B:5:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void moveRoundOffset(float f) {
        long j;
        long j2;
        TimelineDelegate timelineDelegate;
        long j3;
        long j4;
        long jClamp;
        TimelineDelegate timelineDelegate2;
        long jClamp2;
        TimelineDelegate timelineDelegate3;
        long j5;
        long j6;
        long j7;
        Track track = this.videoTrack;
        if (track == null) {
            long j8 = this.roundOffset;
            long jClamp3 = Utilities.clamp(j8 + ((long) f), 0L, -(this.roundDuration - Math.min(getBaseDuration(), getMaxScrollDuration())));
            this.roundOffset = jClamp3;
            float f2 = jClamp3 - j8;
            this.roundLeft = Utilities.clamp(this.roundLeft - (f2 / this.roundDuration), 1.0f, BitmapDescriptorFactory.HUE_RED);
            this.roundRight = Utilities.clamp(this.roundRight - (f2 / this.roundDuration), 1.0f, BitmapDescriptorFactory.HUE_RED);
            timelineDelegate = this.delegate;
            if (timelineDelegate != null) {
                timelineDelegate.onRoundLeftChange(this.roundLeft);
                this.delegate.onRoundRightChange(this.roundRight);
            }
        } else if (this.roundSelected) {
            float f3 = track.right;
            float f4 = track.duration;
            float f5 = this.roundRight;
            float f6 = this.roundDuration;
            long j9 = (long) ((f3 * f4) - (f5 * f6));
            float f7 = track.left;
            float f8 = this.roundLeft;
            long j10 = (long) ((f7 * f4) - (f8 * f6));
            float fMin = Math.min(f5 - f8, ((f3 - f7) * f4) / f6);
            long j11 = this.roundOffset;
            long j12 = (long) f;
            long j13 = j11 + j12;
            if (j13 > j9) {
                float fClamp = Utilities.clamp((((this.videoTrack.right * r1.duration) - j11) - j12) / this.roundDuration, 1.0f, fMin);
                this.roundRight = fClamp;
                float fClamp2 = Utilities.clamp(fClamp - fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
                this.roundLeft = fClamp2;
                Track track2 = this.videoTrack;
                float f9 = track2.right;
                float f10 = track2.duration;
                float f11 = this.roundRight;
                float f12 = this.roundDuration;
                long j14 = (long) ((f9 * f10) - (f11 * f12));
                long j15 = (long) ((track2.left * f10) - (fClamp2 * f12));
                if (j14 < j15) {
                    j4 = j15;
                    j3 = j14;
                } else {
                    j3 = j15;
                    j4 = j14;
                }
                this.roundOffset = Utilities.clamp(this.roundOffset + j12, j4, j3);
                timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                }
            } else if (j13 < j10) {
                float fClamp3 = Utilities.clamp((((this.videoTrack.left * r1.duration) - j11) - j12) / this.roundDuration, 1.0f - fMin, BitmapDescriptorFactory.HUE_RED);
                this.roundLeft = fClamp3;
                float fClamp4 = Utilities.clamp(fClamp3 + fMin, 1.0f, BitmapDescriptorFactory.HUE_RED);
                this.roundRight = fClamp4;
                Track track3 = this.videoTrack;
                float f13 = track3.right;
                float f14 = track3.duration;
                float f15 = this.roundDuration;
                long j16 = (long) ((f13 * f14) - (fClamp4 * f15));
                long j17 = (long) ((track3.left * f14) - (this.roundLeft * f15));
                if (j16 < j17) {
                    j2 = j16;
                    j = j17;
                } else {
                    j = j16;
                    j2 = j17;
                }
                this.roundOffset = Utilities.clamp(this.roundOffset + j12, j, j2);
                timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                }
            } else {
                this.roundOffset = j13;
            }
        } else {
            long j18 = this.roundOffset + ((long) f);
            float baseDuration = getBaseDuration();
            float f16 = this.roundDuration;
            this.roundOffset = Utilities.clamp(j18, (long) (baseDuration - (this.roundRight * f16)), (long) ((-this.roundLeft) * f16));
        }
        invalidate();
        TimelineDelegate timelineDelegate4 = this.delegate;
        if (timelineDelegate4 != null) {
            timelineDelegate4.onRoundOffsetChange(this.roundOffset + ((long) (this.roundLeft * this.roundDuration)));
        }
        boolean z = this.dragged;
        if (!z && (timelineDelegate3 = this.delegate) != null) {
            timelineDelegate3.onProgressDragChange(true);
            Track track4 = this.videoTrack;
            if (track4 != null) {
                j6 = this.roundOffset + ((long) (this.roundLeft * this.roundDuration));
                float f17 = track4.right;
                float f18 = track4.duration;
                j5 = (long) (f17 * f18);
                j7 = (long) (track4.left * f18);
            } else {
                float f19 = this.roundLeft;
                j5 = this.roundDuration;
                j6 = (long) (f19 * j5);
                j7 = 0;
            }
            jClamp2 = Utilities.clamp(j6, j5, j7);
            if (this.videoTrack != null && Math.abs(this.progress - jClamp2) > 400) {
                this.loopProgressFrom = this.progress;
                this.loopProgress.set(1.0f, true);
            }
            timelineDelegate2 = this.delegate;
            this.progress = jClamp2;
        } else {
            if (!z && !this.scrolling) {
                return;
            }
            Track track5 = this.videoTrack;
            if (track5 != null) {
                long j19 = this.roundOffset + ((long) (this.roundLeft * this.roundDuration));
                float f20 = track5.right;
                float f21 = track5.duration;
                jClamp = Utilities.clamp(j19, (long) (f20 * f21), (long) (track5.left * f21));
            } else {
                float f22 = this.roundLeft;
                long j20 = this.roundDuration;
                jClamp = Utilities.clamp((long) (f22 * j20), j20, 0L);
            }
            this.progress = jClamp;
            timelineDelegate2 = this.delegate;
            if (timelineDelegate2 == null) {
                return;
            } else {
                jClamp2 = this.progress;
            }
        }
        timelineDelegate2.onProgressChange(jClamp2, false);
    }

    private boolean setProgressAt(float f, boolean z) {
        if (this.videoTrack == null && !this.hasAudio && this.collageTracks.isEmpty()) {
            return false;
        }
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        float f2 = ((f - this.px) - this.ph) / this.sw;
        Track track = this.collageMain;
        long j = track != null ? (long) (track.offset + (track.left * track.duration)) : 0L;
        float f3 = f2 * jMin;
        if (track == null) {
            j = this.videoTrack == null ? this.audioOffset : 0L;
        }
        final long jClamp = (long) Utilities.clamp((f3 - j) + this.scroll, getBaseDuration(), BitmapDescriptorFactory.HUE_RED);
        Track track2 = this.videoTrack;
        if (track2 != null) {
            float f4 = jClamp / track2.duration;
            if (f4 < track2.left || f4 > track2.right) {
                return false;
            }
        }
        Track track3 = this.collageMain;
        if (track3 != null && (jClamp < 0 || jClamp >= ((long) ((track3.right - track3.left) * track3.duration)))) {
            return false;
        }
        if (this.hasAudio && track2 == null && this.collageTracks.isEmpty()) {
            float f5 = jClamp / this.audioDuration;
            if (f5 < this.audioLeft || f5 > this.audioRight) {
                return false;
            }
        }
        this.progress = jClamp;
        invalidate();
        TimelineDelegate timelineDelegate = this.delegate;
        if (timelineDelegate != null) {
            timelineDelegate.onProgressChange(jClamp, z);
        }
        Runnable runnable = this.askExactSeek;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.askExactSeek = null;
        }
        if (!z) {
            return true;
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setProgressAt$9(jClamp);
            }
        };
        this.askExactSeek = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 150L);
        return true;
    }

    private void setupAudioWaveform() {
        if (getMeasuredWidth() > 0) {
            if (this.waveform == null || this.resetWaveform) {
                this.waveform = new AudioWaveformLoader(this.audioPath, (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
                this.waveformIsLoaded = false;
                this.waveformMax.set(1.0f, true);
            }
        }
    }

    private void setupRoundThumbs() {
        if (getMeasuredWidth() <= 0 || this.roundThumbs != null) {
            return;
        }
        Track track = this.videoTrack;
        if (track == null || track.duration >= 1) {
            String str = this.roundPath;
            int i = this.w;
            int i2 = this.px;
            int i3 = (i - i2) - i2;
            int iDp = AndroidUtilities.dp(38.0f);
            long j = this.roundDuration;
            Long lValueOf = j > 2 ? Long.valueOf(j) : null;
            Track track2 = this.videoTrack;
            this.roundThumbs = new VideoThumbsLoader(false, str, i3, iDp, lValueOf, track2 != null ? track2.duration : getMaxScrollDuration(), -1L, -1L, new Runnable() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setupRoundThumbs$8();
                }
            });
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.scroller.computeScrollOffset()) {
            if (this.scrolling) {
                this.scrolling = false;
                TimelineDelegate timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onProgressDragChange(false);
                    return;
                }
                return;
            }
            return;
        }
        int currX = this.scroller.getCurrX();
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        if (this.scrollingVideo) {
            this.scroll = (long) Math.max(BitmapDescriptorFactory.HUE_RED, (((currX - this.px) - this.ph) / this.sw) * jMin);
        } else {
            if (!this.audioSelected) {
                this.scroller.abortAnimation();
                return;
            }
            int i = this.px;
            int i2 = this.ph;
            float f = this.sw;
            float f2 = jMin;
            moveAudioOffset(((((currX - i) - i2) / f) * f2) - ((((this.wasScrollX - i) - i2) / f) * f2));
        }
        invalidate();
        this.wasScrollX = currX;
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x065e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0670  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0689 A[LOOP:4: B:161:0x0689->B:166:0x06c8, LOOP_START, PHI: r2 r7
      0x0689: PHI (r2v196 int) = (r2v195 int), (r2v197 int) binds: [B:160:0x0687, B:166:0x06c8] A[DONT_GENERATE, DONT_INLINE]
      0x0689: PHI (r7v45 float) = (r7v44 float), (r7v46 float) binds: [B:160:0x0687, B:166:0x06c8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x06ce  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0938  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x094a  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0967 A[LOOP:6: B:243:0x0967->B:248:0x09a6, LOOP_START, PHI: r10 r13
      0x0967: PHI (r10v49 float) = (r10v48 float), (r10v50 float) binds: [B:242:0x0965, B:248:0x09a6] A[DONT_GENERATE, DONT_INLINE]
      0x0967: PHI (r13v31 int) = (r13v30 int), (r13v32 int) binds: [B:242:0x0965, B:248:0x09a6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x09ac  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0bef  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0c05  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0c27  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0c29  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x0c60  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0e3c  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0eb3  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0ec3  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0f33  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0f82  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0f99  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x109a  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x10f1  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x1259  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x1264  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x1270  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x1298  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03f5  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void dispatchDraw(Canvas canvas) {
        long j;
        int i;
        long jClamp;
        long j2;
        long j3;
        long j4;
        TimelineDelegate timelineDelegate;
        Track track;
        Track track2;
        int i2;
        float f;
        float fMax;
        float f2;
        boolean z;
        float f3;
        float f4;
        Paint paint;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        long j5;
        float f12;
        float f13;
        float f14;
        float f15;
        long j6;
        long j7;
        float f16;
        float f17;
        Paint paint2;
        float f18;
        float f19;
        double d;
        float f20;
        float fMax2;
        float f21;
        float fLerp;
        Track track3;
        float f22;
        float f23;
        float f24;
        float f25;
        Track track4;
        long j8;
        Paint paint3;
        float f26;
        float fLerp2;
        float fLerp3;
        Paint paint4;
        int iMultAlpha;
        Paint paint5;
        float fDpf2;
        BlurringShader.BlurManager blurManager;
        long j9;
        float f27;
        float fLerp4;
        float f28;
        Paint paint6;
        boolean z2;
        float f29;
        long j10;
        int i3;
        float fLerp5;
        float f30;
        float f31;
        Track track5;
        float f32;
        float f33;
        Paint paint7;
        long j11;
        long j12;
        float f34;
        float f35;
        boolean z3;
        float f36;
        Paint paint8;
        float f37;
        Paint paint9;
        int i4;
        int i5;
        BlurringShader.BlurManager blurManager2;
        Canvas canvas2 = canvas;
        Paint paint10 = this.backgroundBlur.getPaint(1.0f);
        float f38 = this.openT.set(this.open);
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        if (f38 < 1.0f) {
            this.timelineBounds.set(this.px, (this.h - this.py) - AndroidUtilities.dp(28.0f), this.w - this.px, this.h - this.py);
            this.timelineClipPath.rewind();
            this.timelineClipPath.addRoundRect(this.timelineBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
            canvas2.saveLayerAlpha(this.timelineBounds, (int) ((1.0f - f38) * 255.0f), 31);
            canvas2.clipPath(this.timelineClipPath);
            if (this.blurManager.hasRenderNode()) {
                this.backgroundBlur.drawRect(canvas2);
            } else if (paint10 == null) {
                canvas2.drawColor(1073741824);
                if (this.collageWaveforms.isEmpty() && (blurManager2 = this.blurManager) != null && blurManager2.hasRenderNode()) {
                    float f39 = this.timelineWaveformMax.set(WaveformPath.getMaxBar(this.collageWaveforms));
                    WaveformPath waveformPath = this.timelineWaveformPath;
                    RectF rectF = this.timelineBounds;
                    waveformPath.check(this.px + this.ph + (((this.audioOffset - this.scroll) / jMin) * this.sw), rectF.left, rectF.right, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(28.0f), f39, this.timelineBounds.bottom, this.collageWaveforms);
                    canvas2.saveLayerAlpha(this.timelineBounds, 102, 31);
                    canvas2.clipPath(this.timelineWaveformPath);
                    this.audioWaveformBlur.drawRect(canvas2);
                    canvas.restore();
                } else if (!this.collageWaveforms.isEmpty()) {
                    Paint paint11 = this.audioWaveformBlur.getPaint(0.4f);
                    if (paint11 == null) {
                        paint11 = this.waveformPaint;
                        paint11.setAlpha(64);
                    }
                    float f40 = this.timelineWaveformMax.set(WaveformPath.getMaxBar(this.collageWaveforms));
                    WaveformPath waveformPath2 = this.timelineWaveformPath;
                    RectF rectF2 = this.timelineBounds;
                    waveformPath2.check(this.px + this.ph + (((this.audioOffset - this.scroll) / jMin) * this.sw), rectF2.left, rectF2.right, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.dp(28.0f), f40, this.timelineBounds.bottom, this.collageWaveforms);
                    canvas2.drawPath(this.timelineWaveformPath, paint11);
                }
                float currentWidth = ((this.timelineText.getCurrentWidth() + AndroidUtilities.dp(3.66f)) + this.timelineIcon.getIntrinsicWidth()) / 2.0f;
                int iCenterX = (int) (this.timelineBounds.centerX() - currentWidth);
                int iCenterY = (int) this.timelineBounds.centerY();
                Drawable drawable = this.timelineIcon;
                drawable.setBounds(iCenterX, iCenterY - (drawable.getIntrinsicHeight() / 2), this.timelineIcon.getIntrinsicWidth() + iCenterX, (this.timelineIcon.getIntrinsicHeight() / 2) + iCenterY);
                this.timelineIcon.setAlpha(191);
                this.timelineIcon.draw(canvas2);
                this.timelineText.draw(canvas, (this.timelineBounds.centerX() - currentWidth) + this.timelineIcon.getIntrinsicWidth() + AndroidUtilities.dp(3.66f), iCenterY, -1, 0.75f);
                canvas.restore();
            } else {
                canvas2.drawRect(this.timelineBounds, paint10);
            }
            canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
            if (this.collageWaveforms.isEmpty()) {
                if (!this.collageWaveforms.isEmpty()) {
                }
                float currentWidth2 = ((this.timelineText.getCurrentWidth() + AndroidUtilities.dp(3.66f)) + this.timelineIcon.getIntrinsicWidth()) / 2.0f;
                int iCenterX2 = (int) (this.timelineBounds.centerX() - currentWidth2);
                int iCenterY2 = (int) this.timelineBounds.centerY();
                Drawable drawable2 = this.timelineIcon;
                drawable2.setBounds(iCenterX2, iCenterY2 - (drawable2.getIntrinsicHeight() / 2), this.timelineIcon.getIntrinsicWidth() + iCenterX2, (this.timelineIcon.getIntrinsicHeight() / 2) + iCenterY2);
                this.timelineIcon.setAlpha(191);
                this.timelineIcon.draw(canvas2);
                this.timelineText.draw(canvas, (this.timelineBounds.centerX() - currentWidth2) + this.timelineIcon.getIntrinsicWidth() + AndroidUtilities.dp(3.66f), iCenterY2, -1, 0.75f);
                canvas.restore();
            }
        }
        if (f38 > BitmapDescriptorFactory.HUE_RED) {
            if (f38 < 1.0f) {
                f2 = BitmapDescriptorFactory.HUE_RED;
                canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) (f38 * 255.0f), 31);
                z = true;
            } else {
                f2 = BitmapDescriptorFactory.HUE_RED;
                z = false;
            }
            Track track6 = this.videoTrack;
            float f41 = track6 != null ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            float f42 = track6 != null ? track6.selectedT.set((this.audioSelected || this.roundSelected) ? false : true) : BitmapDescriptorFactory.HUE_RED;
            float f43 = this.h - this.py;
            float fDp = AndroidUtilities.dp(4.0f);
            if (this.videoTrack != null) {
                canvas.save();
                float videoHeight = getVideoHeight();
                Track track7 = this.videoTrack;
                float f44 = track7.left;
                long j13 = track7.duration;
                float f45 = j13;
                float f46 = (f44 * f45 * f42) + f2;
                float f47 = (track7.right * f45 * f42) + f2;
                if (j13 <= 0) {
                    f36 = f46;
                } else {
                    f36 = f46;
                    f2 = (this.px + this.ph) - ((this.scroll / jMin) * this.sw);
                }
                float f48 = this.ph;
                float f49 = f2 - f48;
                if (j13 <= 0) {
                    f7 = f47;
                    paint8 = paint10;
                    f37 = BitmapDescriptorFactory.HUE_RED;
                } else {
                    f7 = f47;
                    paint8 = paint10;
                    f37 = this.px + r12 + (((j13 - this.scroll) / jMin) * this.sw);
                }
                this.videoBounds.set(f49, f43 - videoHeight, f37 + f48, f43);
                float f50 = f43 - ((fDp * f41) + videoHeight);
                RectF rectF3 = this.videoBounds;
                float f51 = (rectF3.top * f42) + BitmapDescriptorFactory.HUE_RED;
                float f52 = (rectF3.bottom * f42) + BitmapDescriptorFactory.HUE_RED;
                this.videoClipPath.rewind();
                f8 = f52;
                this.videoClipPath.addRoundRect(this.videoBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas2.clipPath(this.videoClipPath);
                VideoThumbsLoader videoThumbsLoader = this.videoTrack.thumbs;
                if (videoThumbsLoader != null) {
                    int frameWidth = videoThumbsLoader.getFrameWidth();
                    float f53 = frameWidth;
                    f3 = f42;
                    f4 = f41;
                    int iMax = (int) Math.max(0.0d, Math.floor((f49 - this.px) / f53));
                    int iMin = (int) Math.min(this.videoTrack.thumbs.count, Math.ceil(((r4 - f49) - this.px) / f53) + 1.0d);
                    int i6 = (int) this.videoBounds.top;
                    boolean z4 = this.videoTrack.thumbs.frames.size() >= iMin;
                    boolean z5 = (frameWidth == 0 || !z4 || this.videoTrack.isRound) ? false : true;
                    if (z5) {
                        int i7 = iMax;
                        i4 = i7;
                        while (true) {
                            if (i7 >= Math.min(this.videoTrack.thumbs.frames.size(), iMin)) {
                                break;
                            }
                            if (((VideoThumbsLoader.BitmapFrame) this.videoTrack.thumbs.frames.get(i7)).bitmap == null) {
                                z5 = false;
                                break;
                            }
                            i7++;
                        }
                    } else {
                        i4 = iMax;
                    }
                    if (z5) {
                        paint9 = paint8;
                        if (frameWidth != 0) {
                            int i8 = i4;
                            while (i8 < Math.min(this.videoTrack.thumbs.frames.size(), iMin)) {
                                VideoThumbsLoader.BitmapFrame bitmapFrame = (VideoThumbsLoader.BitmapFrame) this.videoTrack.thumbs.frames.get(i8);
                                if (bitmapFrame.bitmap != null) {
                                    i5 = iMin;
                                    this.videoFramePaint.setAlpha((int) (bitmapFrame.getAlpha() * 255.0f));
                                    canvas2.drawBitmap(bitmapFrame.bitmap, f49, i6 - ((int) ((r0.getHeight() - videoHeight) / 2.0f)), this.videoFramePaint);
                                } else {
                                    i5 = iMin;
                                }
                                f49 += f53;
                                i8++;
                                iMin = i5;
                            }
                        }
                        if (!z4) {
                            this.videoTrack.thumbs.load();
                        }
                    } else {
                        if (this.blurManager.hasRenderNode()) {
                            this.backgroundBlur.drawRect(canvas2);
                            canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                        } else if (paint8 == null) {
                            canvas2.drawColor(1073741824);
                        } else {
                            paint9 = paint8;
                            canvas2.drawRect(this.videoBounds, paint9);
                            canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                            if (frameWidth != 0) {
                            }
                            if (!z4) {
                            }
                        }
                        paint9 = paint8;
                        if (frameWidth != 0) {
                        }
                        if (!z4) {
                        }
                    }
                } else {
                    f3 = f42;
                    f4 = f41;
                    paint9 = paint8;
                }
                this.selectedVideoClipPath.rewind();
                if (this.isCover) {
                    f9 = f51;
                    paint = paint9;
                } else {
                    RectF rectF4 = AndroidUtilities.rectTmp;
                    float f54 = this.px + this.ph;
                    Track track8 = this.videoTrack;
                    float f55 = track8.left;
                    float f56 = track8.duration;
                    paint = paint9;
                    float f57 = this.scroll;
                    float f58 = jMin;
                    float f59 = this.sw;
                    float f60 = (((((f55 * f56) - f57) / f58) * f59) + f54) - (f55 <= BitmapDescriptorFactory.HUE_RED ? r4 : 0);
                    f9 = f51;
                    float f61 = this.h - this.py;
                    float f62 = f61 - videoHeight;
                    float f63 = track8.right;
                    rectF4.set(f60, f62, f54 + ((((f56 * f63) - f57) / f58) * f59) + (f63 >= 1.0f ? r4 : 0), f61);
                    this.selectedVideoClipPath.addRoundRect(rectF4, this.selectedVideoRadii, Path.Direction.CW);
                    canvas2.clipPath(this.selectedVideoClipPath, Region.Op.DIFFERENCE);
                    canvas2.drawColor(1342177280);
                }
                canvas.restore();
                f6 = videoHeight;
                f5 = f36;
                f43 = f50;
            } else {
                f3 = f42;
                f4 = f41;
                paint = paint10;
                f5 = BitmapDescriptorFactory.HUE_RED;
                f6 = BitmapDescriptorFactory.HUE_RED;
                f7 = BitmapDescriptorFactory.HUE_RED;
                f8 = BitmapDescriptorFactory.HUE_RED;
                f9 = BitmapDescriptorFactory.HUE_RED;
            }
            if (this.collageTracks.isEmpty()) {
                f10 = fDp;
                f11 = f6;
                j5 = jMin;
                f12 = BitmapDescriptorFactory.HUE_RED;
            } else {
                getCollageHeight();
                int i9 = 0;
                while (i9 < this.collageTracks.size()) {
                    Track track9 = (Track) this.collageTracks.get(i9);
                    float f64 = track9.selectedT.set((this.audioSelected || this.roundSelected || this.collageSelected != i9) ? false : true);
                    if (track9 != this.collageMain) {
                        int i10 = i9;
                        float f65 = jMin;
                        float fLerp6 = this.px + this.ph + ((((track9.offset - this.scroll) + (AndroidUtilities.lerp(track9.left, BitmapDescriptorFactory.HUE_RED, f64) * track9.duration)) / f65) * this.sw);
                        f29 = fDp;
                        fLerp5 = this.px + this.ph + ((((track9.offset - this.scroll) + (AndroidUtilities.lerp(track9.right, 1.0f, f64) * track9.duration)) / f65) * this.sw);
                        j10 = jMin;
                        f30 = fLerp6;
                        i3 = i10;
                    } else {
                        f29 = fDp;
                        int i11 = i9;
                        float f66 = this.px + this.ph;
                        long j14 = track9.offset - this.scroll;
                        float f67 = jMin;
                        float f68 = this.sw;
                        float f69 = ((j14 / f67) * f68) + f66;
                        j10 = jMin;
                        i3 = i11;
                        fLerp5 = f66 + (((j14 + track9.duration) / f67) * f68);
                        f30 = f69;
                    }
                    canvas.save();
                    float fLerp7 = AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), f64);
                    RectF rectF5 = track9.bounds;
                    float f70 = this.ph;
                    rectF5.set(f30 - f70, f43 - fLerp7, fLerp5 + f70, f43);
                    RectF rectF6 = track9.bounds;
                    f9 += rectF6.top * f64;
                    f8 += rectF6.bottom * f64;
                    float f71 = track9.offset;
                    float f72 = track9.left;
                    float f73 = track9.duration;
                    float f74 = f5 + (((f72 * f73) + f71) * f64);
                    f7 += (f71 + (track9.right * f73)) * f64;
                    this.collageClipPath.rewind();
                    this.collageClipPath.addRoundRect(track9.bounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                    canvas2.clipPath(this.collageClipPath);
                    VideoThumbsLoader videoThumbsLoader2 = track9.thumbs;
                    if (videoThumbsLoader2 != null) {
                        long j15 = track9.duration;
                        if (j15 <= 0) {
                            j12 = j10;
                            f34 = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            j12 = j10;
                            f34 = this.px + this.ph + (((track9.offset - this.scroll) / j12) * this.sw);
                        }
                        float f75 = this.ph;
                        float f76 = f34 - f75;
                        if (j15 <= 0) {
                            f32 = f74;
                            f33 = f6;
                            f35 = BitmapDescriptorFactory.HUE_RED;
                        } else {
                            f32 = f74;
                            f33 = f6;
                            f35 = this.px + r11 + ((((track9.offset + j15) - this.scroll) / j12) * this.sw);
                        }
                        float f77 = f35 + f75;
                        int frameWidth2 = videoThumbsLoader2.getFrameWidth();
                        f31 = fLerp7;
                        track5 = track9;
                        float f78 = f76 - ((this.px + this.ph) + (((track9.offset - this.scroll) / j12) * this.sw));
                        float f79 = frameWidth2;
                        j10 = j12;
                        int iMax2 = (int) Math.max(0.0d, Math.floor(f78 / f79));
                        int iMin2 = (int) Math.min(track5.thumbs.count, Math.ceil((f77 - f76) / f79) + 1.0d);
                        int i12 = (int) track5.bounds.top;
                        boolean z6 = track5.thumbs.frames.size() >= iMin2;
                        if (z6) {
                            for (int i13 = iMax2; i13 < Math.min(track5.thumbs.frames.size(), iMin2); i13++) {
                                if (((VideoThumbsLoader.BitmapFrame) track5.thumbs.frames.get(i13)).bitmap == null) {
                                    z3 = false;
                                    break;
                                }
                            }
                            z3 = z6;
                            if (z3) {
                                paint7 = paint;
                                if (frameWidth2 != 0) {
                                    while (iMax2 < Math.min(track5.thumbs.frames.size(), iMin2)) {
                                        VideoThumbsLoader.BitmapFrame bitmapFrame2 = (VideoThumbsLoader.BitmapFrame) track5.thumbs.frames.get(iMax2);
                                        if (bitmapFrame2.bitmap != null) {
                                            this.collageFramePaint.setAlpha((int) (bitmapFrame2.getAlpha() * 255.0f));
                                            canvas2.drawBitmap(bitmapFrame2.bitmap, f76, i12 - ((int) ((r1.getHeight() - f31) / 2.0f)), this.collageFramePaint);
                                        }
                                        f76 += f79;
                                        iMax2++;
                                    }
                                }
                                if (!z6) {
                                    track5.thumbs.load();
                                }
                            } else {
                                if (this.blurManager.hasRenderNode()) {
                                    this.backgroundBlur.drawRect(canvas2);
                                    canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                                } else if (paint == null) {
                                    canvas2.drawColor(1073741824);
                                } else {
                                    paint7 = paint;
                                    canvas2.drawRect(track5.bounds, paint7);
                                    canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                                    if (frameWidth2 != 0) {
                                    }
                                    if (!z6) {
                                    }
                                }
                                paint7 = paint;
                                if (frameWidth2 != 0) {
                                }
                                if (!z6) {
                                }
                            }
                        } else {
                            z3 = z6;
                            if (z3) {
                            }
                        }
                    } else {
                        f31 = fLerp7;
                        track5 = track9;
                        f32 = f74;
                        f33 = f6;
                        paint7 = paint;
                    }
                    this.selectedCollageClipPath.rewind();
                    if (this.isCover) {
                        paint = paint7;
                        j11 = j10;
                    } else {
                        RectF rectF7 = AndroidUtilities.rectTmp;
                        float f80 = this.px + this.ph;
                        float f81 = track5.left;
                        float f82 = track5.duration;
                        float f83 = this.scroll;
                        paint = paint7;
                        float f84 = track5.offset;
                        long j16 = j10;
                        float f85 = j16;
                        j11 = j16;
                        float f86 = this.sw;
                        float f87 = ((((((f81 * f82) - f83) + f84) / f85) * f86) + f80) - (f81 <= BitmapDescriptorFactory.HUE_RED ? r3 : 0);
                        RectF rectF8 = track5.bounds;
                        float f88 = rectF8.top;
                        float f89 = track5.right;
                        rectF7.set(f87, f88, f80 + (((((f82 * f89) - f83) + f84) / f85) * f86) + (f89 >= 1.0f ? r3 : 0), rectF8.bottom);
                        this.selectedCollageClipPath.addRoundRect(rectF7, this.selectedVideoRadii, Path.Direction.CW);
                        canvas2.clipPath(this.selectedCollageClipPath, Region.Op.DIFFERENCE);
                        canvas2.drawColor(1342177280);
                    }
                    canvas.restore();
                    f43 -= (f29 * 1.0f) + f31;
                    i9 = i3 + 1;
                    fDp = f29;
                    f5 = f32;
                    f6 = f33;
                    jMin = j11;
                }
                f10 = fDp;
                f11 = f6;
                j5 = jMin;
                f12 = 1.0f;
            }
            float f90 = this.roundT.set(this.hasRound);
            float f91 = this.roundSelectedT.set(this.hasRound && this.roundSelected);
            float roundHeight = getRoundHeight() * f90;
            float f92 = ((this.videoTrack == null && !this.hasAudio && this.collageTracks.isEmpty()) ? 1.0f : f91) * f90;
            if (f90 > BitmapDescriptorFactory.HUE_RED) {
                long j17 = this.roundOffset;
                float f93 = j17;
                float f94 = this.roundLeft;
                float f95 = this.roundDuration;
                float f96 = f5 + ((f93 + (f94 * f95)) * f92);
                f7 += (f93 + (this.roundRight * f95)) * f92;
                if (this.videoTrack != null) {
                    float f97 = this.px + this.ph;
                    float fLerp8 = (j17 - this.scroll) + (AndroidUtilities.lerp(f94, BitmapDescriptorFactory.HUE_RED, f91) * this.roundDuration);
                    long j18 = j5;
                    float f98 = j18;
                    f27 = f97 + ((fLerp8 / f98) * this.sw);
                    fLerp4 = this.px + this.ph + ((((this.roundOffset - this.scroll) + (AndroidUtilities.lerp(this.roundRight, 1.0f, f91) * this.roundDuration)) / f98) * this.sw);
                    f15 = f90;
                    j9 = j18;
                } else {
                    j9 = j5;
                    float f99 = this.px + this.ph;
                    f15 = f90;
                    long j19 = j17 - this.scroll;
                    float f100 = j9;
                    float f101 = this.sw;
                    f27 = ((j19 / f100) * f101) + f99;
                    fLerp4 = (((j19 + r13) / f100) * f101) + f99;
                }
                RectF rectF9 = this.roundBounds;
                float f102 = this.ph;
                rectF9.set(f27 - f102, f43 - roundHeight, fLerp4 + f102, f43);
                float f103 = f43 - ((f10 * f15) + roundHeight);
                RectF rectF10 = this.roundBounds;
                f9 += rectF10.top * f92;
                f8 += rectF10.bottom * f92;
                this.roundClipPath.rewind();
                this.roundClipPath.addRoundRect(this.roundBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas.save();
                canvas2 = canvas;
                canvas2.clipPath(this.roundClipPath);
                VideoThumbsLoader videoThumbsLoader3 = this.roundThumbs;
                if (videoThumbsLoader3 != null) {
                    long j20 = this.roundDuration;
                    float f104 = j20 <= 0 ? BitmapDescriptorFactory.HUE_RED : this.px + this.ph + (((this.roundOffset - this.scroll) / j9) * this.sw);
                    float f105 = this.ph;
                    float f106 = f104 - f105;
                    float f107 = (j20 <= 0 ? BitmapDescriptorFactory.HUE_RED : ((((this.roundOffset + j20) - this.scroll) / j9) * this.sw) + this.px + r12) + f105;
                    int frameWidth3 = videoThumbsLoader3.getFrameWidth();
                    float f108 = frameWidth3;
                    f14 = f12;
                    int iMax3 = (int) Math.max(0.0d, Math.floor((f106 - (this.videoTrack != null ? (this.px + this.ph) + (((this.roundOffset - this.scroll) / j9) * this.sw) : this.px)) / f108));
                    int iMin3 = (int) Math.min(this.roundThumbs.count, Math.ceil((f107 - f106) / f108) + 1.0d);
                    int i14 = (int) this.roundBounds.top;
                    boolean z7 = this.roundThumbs.frames.size() >= iMin3;
                    if (z7) {
                        for (int i15 = iMax3; i15 < Math.min(this.roundThumbs.frames.size(), iMin3); i15++) {
                            if (((VideoThumbsLoader.BitmapFrame) this.roundThumbs.frames.get(i15)).bitmap == null) {
                                z2 = false;
                                break;
                            }
                        }
                        z2 = z7;
                        if (z2) {
                            f28 = f103;
                            paint6 = paint;
                            if (frameWidth3 != 0) {
                                while (iMax3 < Math.min(this.roundThumbs.frames.size(), iMin3)) {
                                    VideoThumbsLoader.BitmapFrame bitmapFrame3 = (VideoThumbsLoader.BitmapFrame) this.roundThumbs.frames.get(iMax3);
                                    if (bitmapFrame3.bitmap != null) {
                                        this.videoFramePaint.setAlpha((int) (bitmapFrame3.getAlpha() * 255.0f));
                                        canvas2.drawBitmap(bitmapFrame3.bitmap, f106, i14 - ((int) ((r2.getHeight() - roundHeight) / 2.0f)), this.videoFramePaint);
                                    }
                                    f106 += f108;
                                    iMax3++;
                                }
                            }
                            if (!z7) {
                                this.roundThumbs.load();
                            }
                        } else {
                            if (this.blurManager.hasRenderNode()) {
                                this.backgroundBlur.drawRect(canvas2);
                                canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                            } else if (paint == null) {
                                canvas2.drawColor(1073741824);
                            } else {
                                f28 = f103;
                                paint6 = paint;
                                canvas2.drawRect(this.roundBounds, paint6);
                                canvas2.drawColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
                                if (frameWidth3 != 0) {
                                }
                                if (!z7) {
                                }
                            }
                            f28 = f103;
                            paint6 = paint;
                            if (frameWidth3 != 0) {
                            }
                            if (!z7) {
                            }
                        }
                    } else {
                        z2 = z7;
                        if (z2) {
                        }
                    }
                } else {
                    f28 = f103;
                    f14 = f12;
                    paint6 = paint;
                }
                this.selectedVideoClipPath.rewind();
                RectF rectF11 = AndroidUtilities.rectTmp;
                int i16 = this.px;
                int i17 = this.ph;
                float f109 = i16 + i17;
                float f110 = this.roundLeft;
                float f111 = this.roundDuration;
                float f112 = this.scroll;
                float f113 = this.roundOffset;
                float f114 = j9;
                float f115 = this.sw;
                float f116 = ((((((f110 * f111) - f112) + f113) / f114) * f115) + f109) - (f110 <= BitmapDescriptorFactory.HUE_RED ? i17 : 0);
                float f117 = i17 * (1.0f - f91);
                float f118 = f116 - f117;
                paint = paint6;
                RectF rectF12 = this.roundBounds;
                long j21 = j9;
                float f119 = rectF12.top;
                float f120 = this.roundRight;
                float f121 = f109 + (((((f111 * f120) - f112) + f113) / f114) * f115);
                if (f120 < 1.0f) {
                    i17 = 0;
                }
                rectF11.set(f118, f119, f121 + i17 + f117, rectF12.bottom);
                this.selectedVideoClipPath.addRoundRect(rectF11, this.selectedVideoRadii, Path.Direction.CW);
                canvas2.clipPath(this.selectedVideoClipPath, Region.Op.DIFFERENCE);
                canvas2.drawColor(1342177280);
                canvas.restore();
                f5 = f96;
                f13 = f28;
                j6 = j21;
            } else {
                f13 = f43;
                f14 = f12;
                f15 = f90;
                j6 = j5;
            }
            float f122 = this.audioT.set(this.hasAudio);
            float f123 = this.audioSelectedT.set(this.hasAudio && this.audioSelected);
            float audioHeight = getAudioHeight() * f122;
            float f124 = ((this.videoTrack == null && !this.hasRound && this.collageTracks.isEmpty()) ? 1.0f : f123) * f122;
            if (f122 > BitmapDescriptorFactory.HUE_RED) {
                float f125 = this.audioOffset;
                float f126 = this.audioLeft;
                float f127 = this.audioDuration;
                float f128 = f5 + (((f126 * f127) + f125) * f124);
                f7 += (f125 + (this.audioRight * f127)) * f124;
                Paint paint12 = this.audioBlur.getPaint(f122);
                canvas.save();
                if (this.videoTrack == null && !this.hasRound && this.collageTracks.isEmpty()) {
                    float f129 = this.px + this.ph;
                    long j22 = this.audioOffset - this.scroll;
                    float f130 = j6;
                    f17 = f91;
                    float f131 = this.sw;
                    fLerp2 = ((j22 / f130) * f131) + f129;
                    paint3 = paint12;
                    f26 = f124;
                    fLerp3 = f129 + (((j22 + this.audioDuration) / f130) * f131);
                } else {
                    paint3 = paint12;
                    f26 = f124;
                    f17 = f91;
                    float f132 = j6;
                    fLerp2 = this.px + this.ph + ((((this.audioOffset - this.scroll) + (AndroidUtilities.lerp(this.audioLeft, BitmapDescriptorFactory.HUE_RED, f123) * this.audioDuration)) / f132) * this.sw);
                    fLerp3 = this.px + this.ph + ((((this.audioOffset - this.scroll) + (AndroidUtilities.lerp(this.audioRight, 1.0f, f123) * this.audioDuration)) / f132) * this.sw);
                }
                RectF rectF13 = this.audioBounds;
                float f133 = this.ph;
                rectF13.set(fLerp2 - f133, f13 - audioHeight, f133 + fLerp3, f13);
                RectF rectF14 = this.audioBounds;
                f9 += rectF14.top * f26;
                f8 += rectF14.bottom * f26;
                this.audioClipPath.rewind();
                this.audioClipPath.addRoundRect(this.audioBounds, AndroidUtilities.dp(8.0f), AndroidUtilities.dp(8.0f), Path.Direction.CW);
                canvas2.clipPath(this.audioClipPath);
                BlurringShader.BlurManager blurManager3 = this.blurManager;
                if (blurManager3 != null && blurManager3.hasRenderNode()) {
                    this.backgroundBlur.drawRect(canvas2);
                    iMultAlpha = Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, f122);
                } else if (paint3 == null) {
                    iMultAlpha = Theme.multAlpha(1073741824, f122);
                } else {
                    paint4 = paint3;
                    canvas2.drawRect(this.audioBounds, paint4);
                    canvas2.drawColor(Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, f122));
                    if (this.waveform == null && (blurManager = this.blurManager) != null && blurManager.hasRenderNode()) {
                        float f134 = this.waveformMax.set(this.waveform.getMaxBar(), !this.waveformIsLoaded);
                        this.waveformIsLoaded = this.waveform.getLoadedCount() > 0;
                        paint2 = paint;
                        this.waveformPath.check(this.px + this.ph + (((this.audioOffset - this.scroll) / j6) * this.sw), fLerp2, fLerp3, f123, j6, audioHeight, f134, this.audioBounds.bottom, this.waveform);
                        canvas2.saveLayerAlpha(this.audioBounds, 102, 31);
                        canvas2.clipPath(this.waveformPath);
                        this.audioWaveformBlur.drawRect(canvas2);
                        canvas.restore();
                    } else {
                        paint2 = paint;
                        if (this.waveform != null && paint4 != null) {
                            paint5 = this.audioWaveformBlur.getPaint(0.4f * f122);
                            if (paint5 == null) {
                                paint5 = this.waveformPaint;
                                paint5.setAlpha((int) (64.0f * f122));
                            }
                            float f135 = this.waveformMax.set(this.waveform.getMaxBar(), !this.waveformIsLoaded);
                            this.waveformIsLoaded = this.waveform.getLoadedCount() <= 0;
                            this.waveformPath.check(this.px + this.ph + (((this.audioOffset - this.scroll) / j6) * this.sw), fLerp2, fLerp3, f123, j6, audioHeight, f135, this.audioBounds.bottom, this.waveform);
                            canvas2.drawPath(this.waveformPath, paint5);
                        }
                    }
                    if (f123 >= 1.0f) {
                        int i18 = this.px;
                        float f136 = this.ph + i18;
                        float f137 = this.audioOffset - this.scroll;
                        float f138 = this.audioLeft;
                        float f139 = this.audioDuration;
                        float f140 = j6;
                        float f141 = this.sw;
                        float f142 = ((((f138 * f139) + f137) / f140) * f141) + f136;
                        float f143 = f136 + (((f137 + (this.audioRight * f139)) / f140) * f141);
                        float fMax3 = (Math.max(i18, f142) + Math.min(this.w - this.px, f143)) / 2.0f;
                        float fCenterY = this.audioBounds.centerY();
                        float fMax4 = Math.max(BitmapDescriptorFactory.HUE_RED, (Math.min(this.w - this.px, f143) - Math.max(this.px, f142)) - AndroidUtilities.dp(24.0f));
                        float fDpf22 = AndroidUtilities.dpf2(13.0f) + ((this.audioAuthor == null && this.audioTitle == null) ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.dpf2(3.11f) + this.audioAuthorWidth + AndroidUtilities.dpf2(9.66f) + this.audioTitleWidth);
                        boolean z8 = fDpf22 < fMax4;
                        float fMin = fMax3 - (Math.min(fDpf22, fMax4) / 2.0f);
                        this.audioIcon.setBounds((int) fMin, (int) (fCenterY - (AndroidUtilities.dp(13.0f) / 2.0f)), (int) (AndroidUtilities.dp(13.0f) + fMin), (int) ((AndroidUtilities.dp(13.0f) / 2.0f) + fCenterY));
                        float f144 = 1.0f - f123;
                        float f145 = f144 * 255.0f;
                        this.audioIcon.setAlpha((int) f145);
                        this.audioIcon.draw(canvas2);
                        float fDpf23 = fMin + AndroidUtilities.dpf2(16.11f);
                        j7 = j6;
                        d = 0.0d;
                        f19 = f3;
                        f16 = f123;
                        f18 = f4;
                        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.w, this.h, 255, 31);
                        float fMin2 = Math.min(f143, this.w) - AndroidUtilities.dp(12.0f);
                        canvas2.clipRect(fDpf23, BitmapDescriptorFactory.HUE_RED, fMin2, this.h);
                        if (this.audioAuthor != null) {
                            canvas.save();
                            canvas2.translate(fDpf23 - this.audioAuthorLeft, fCenterY - (this.audioAuthor.getHeight() / 2.0f));
                            this.audioAuthorPaint.setAlpha((int) (f145 * f122));
                            this.audioAuthor.draw(canvas2);
                            canvas.restore();
                            fDpf2 = fDpf23 + this.audioAuthorWidth;
                        } else {
                            fDpf2 = fDpf23;
                        }
                        if (this.audioAuthor != null && this.audioTitle != null) {
                            float fDpf24 = fDpf2 + AndroidUtilities.dpf2(3.66f);
                            int alpha = this.audioDotPaint.getAlpha();
                            this.audioDotPaint.setAlpha((int) (alpha * f144));
                            canvas2.drawCircle(AndroidUtilities.dp(1.0f) + fDpf24, fCenterY, AndroidUtilities.dp(1.0f), this.audioDotPaint);
                            this.audioDotPaint.setAlpha(alpha);
                            fDpf2 = fDpf24 + AndroidUtilities.dpf2(2.0f) + AndroidUtilities.dpf2(4.0f);
                        }
                        if (this.audioTitle != null) {
                            canvas.save();
                            canvas2.translate(fDpf2 - this.audioTitleLeft, fCenterY - (this.audioTitle.getHeight() / 2.0f));
                            this.audioTitlePaint.setAlpha((int) (f145 * f122));
                            this.audioTitle.draw(canvas2);
                            canvas.restore();
                        }
                        if (!z8) {
                            this.ellipsizeMatrix.reset();
                            this.ellipsizeMatrix.postScale(AndroidUtilities.dpf2(8.0f) / 16.0f, 1.0f);
                            this.ellipsizeMatrix.postTranslate(fMin2 - AndroidUtilities.dp(8.0f), BitmapDescriptorFactory.HUE_RED);
                            this.ellipsizeGradient.setLocalMatrix(this.ellipsizeMatrix);
                            RectF rectF15 = this.audioBounds;
                            canvas.drawRect(fMin2 - AndroidUtilities.dp(8.0f), rectF15.top, fMin2, rectF15.bottom, this.ellipsizePaint);
                        }
                        canvas.restore();
                    } else {
                        j7 = j6;
                        f16 = f123;
                        f18 = f4;
                        f19 = f3;
                        d = 0.0d;
                    }
                    canvas.restore();
                    f5 = f128;
                }
                canvas2.drawColor(iMultAlpha);
                paint4 = paint3;
                if (this.waveform == null) {
                    paint2 = paint;
                    if (this.waveform != null) {
                        paint5 = this.audioWaveformBlur.getPaint(0.4f * f122);
                        if (paint5 == null) {
                        }
                        float f1352 = this.waveformMax.set(this.waveform.getMaxBar(), !this.waveformIsLoaded);
                        this.waveformIsLoaded = this.waveform.getLoadedCount() <= 0;
                        this.waveformPath.check(this.px + this.ph + (((this.audioOffset - this.scroll) / j6) * this.sw), fLerp2, fLerp3, f123, j6, audioHeight, f1352, this.audioBounds.bottom, this.waveform);
                        canvas2.drawPath(this.waveformPath, paint5);
                    }
                    if (f123 >= 1.0f) {
                    }
                    canvas.restore();
                    f5 = f128;
                }
            } else {
                j7 = j6;
                f16 = f123;
                f17 = f91;
                paint2 = paint;
                f18 = f4;
                f19 = f3;
                d = 0.0d;
            }
            float f146 = f9;
            float f147 = this.px + this.ph;
            float f148 = this.scroll;
            long j23 = j7;
            float f149 = j23;
            float f150 = this.sw;
            float f151 = f147 + (((f5 - f148) / f149) * f150);
            float f152 = f147 + (((f7 - f148) / f149) * f150);
            if (!this.collageTracks.isEmpty()) {
                fMax2 = f14;
            } else if (this.hasAudio && this.videoTrack == null) {
                fMax2 = f122;
            } else {
                f20 = f15;
                fMax2 = Math.max(f18, f20);
                if (f122 <= d || f20 > d || f18 > d || f14 > d) {
                    if (this.videoTrack == null || this.hasRound || !this.collageTracks.isEmpty()) {
                        f21 = f16;
                        fLerp = 1.0f;
                    } else {
                        f21 = f16;
                        fLerp = AndroidUtilities.lerp(0.6f, 1.0f, f21) * f122;
                    }
                    drawRegion(canvas, paint2, f146, f8, f151, f152, fLerp * fMax2);
                    track3 = this.videoTrack;
                    if (track3 != null || (!(this.hasAudio || this.hasRound) || (f21 <= BitmapDescriptorFactory.HUE_RED && f17 <= BitmapDescriptorFactory.HUE_RED))) {
                        if (this.collageMain == null && this.collageTracks.size() > 1) {
                            Track track10 = this.collageMain;
                            RectF rectF16 = track10.bounds;
                            float f153 = rectF16.top;
                            float f154 = rectF16.bottom;
                            float f155 = this.ph + this.px;
                            float f156 = track10.offset;
                            float f157 = track10.left;
                            float f158 = track10.duration;
                            j = j23;
                            float f159 = this.scroll;
                            float f160 = this.sw;
                            drawRegion(canvas, paint2, f153, f154, (((((f157 * f158) + f156) - f159) / f149) * f160) + f155, f155 + ((((f156 + (track10.right * f158)) - f159) / f149) * f160), 0.8f);
                        }
                        if (this.maxCount > 1 && (track4 = this.videoTrack) != null) {
                            float f161 = track4.duration;
                            float f162 = track4.right;
                            float f163 = track4.left;
                            j8 = (long) ((f162 - f163) * f161);
                            if (j8 > 68999) {
                                float f164 = this.px + this.ph;
                                float f165 = this.scroll;
                                float f166 = this.sw;
                                float f167 = ((((f163 * f161) - f165) / f149) * f166) + f164;
                                float f168 = f164 + ((((f162 * f161) - f165) / f149) * f166);
                                canvas.save();
                                float f169 = this.h - this.py;
                                canvas2.clipRect(f167, f169 - f11, f168, f169);
                                this.regionPaint.setAlpha((int) (AndroidUtilities.lerp(0.8f, 1.0f, f19) * 255.0f));
                                long j24 = 59000;
                                int iMin4 = (int) Math.min(this.maxCount - 1, j8 / 59000);
                                int i19 = 1;
                                while (i19 <= iMin4) {
                                    if (Math.min(j24, j8 - (i19 * j24)) < 1000) {
                                        break;
                                    }
                                    float f170 = this.px + this.ph;
                                    Track track11 = this.videoTrack;
                                    float f171 = f170 + ((((((long) (track11.duration * track11.left)) + r0) - this.scroll) / f149) * this.sw);
                                    canvas.drawRect(f171, (this.h - this.py) - f11, f171 + AndroidUtilities.dp(1.0f), this.h - this.py, this.regionPaint);
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("#");
                                    i19++;
                                    sb.append(i19);
                                    canvas2.drawText(sb.toString(), f171 + AndroidUtilities.dp(2.0f), ((this.h - this.py) - f11) + AndroidUtilities.dp(14.0f), this.countTextPaint);
                                    j24 = 59000;
                                }
                                canvas.restore();
                            }
                        }
                        f22 = this.loopProgress.set(BitmapDescriptorFactory.HUE_RED);
                        float contentHeight = ((this.h - getContentHeight()) + this.py) - AndroidUtilities.dpf2(2.3f);
                        float fDpf25 = (this.h - this.py) + AndroidUtilities.dpf2(4.3f);
                        if (f22 > BitmapDescriptorFactory.HUE_RED) {
                            long j25 = this.loopProgressFrom;
                            if (j25 == -1) {
                                Track track12 = this.videoTrack;
                                if (track12 != null) {
                                    f25 = track12.duration * track12.right;
                                } else {
                                    Track track13 = this.collageMain;
                                    if (track13 != null) {
                                        f25 = track13.duration * (track13.right - track13.left);
                                    } else {
                                        if (this.hasRound) {
                                            f23 = this.roundDuration;
                                            f24 = this.roundRight;
                                        } else {
                                            f23 = this.audioDuration;
                                            f24 = this.audioRight;
                                        }
                                        j25 = (long) (f23 * f24);
                                    }
                                }
                                j25 = (long) f25;
                            }
                            drawProgress(canvas, contentHeight, fDpf25, j25, f22 * fMax2);
                        }
                        drawProgress(canvas, contentHeight, fDpf25, this.progress, (1.0f - f22) * fMax2);
                    } else {
                        float f172 = this.h - this.py;
                        float f173 = this.ph + this.px;
                        float f174 = track3.left;
                        float f175 = track3.duration;
                        float f176 = this.scroll;
                        float f177 = this.sw;
                        drawRegion(canvas, paint2, f172 - f11, f172, f173 + ((((f174 * f175) - f176) / f149) * f177), f173 + ((((track3.right * f175) - f176) / f149) * f177), 0.8f);
                    }
                    j = j23;
                    if (this.maxCount > 1) {
                        float f1612 = track4.duration;
                        float f1622 = track4.right;
                        float f1632 = track4.left;
                        j8 = (long) ((f1622 - f1632) * f1612);
                        if (j8 > 68999) {
                        }
                    }
                    f22 = this.loopProgress.set(BitmapDescriptorFactory.HUE_RED);
                    float contentHeight2 = ((this.h - getContentHeight()) + this.py) - AndroidUtilities.dpf2(2.3f);
                    float fDpf252 = (this.h - this.py) + AndroidUtilities.dpf2(4.3f);
                    if (f22 > BitmapDescriptorFactory.HUE_RED) {
                    }
                    drawProgress(canvas, contentHeight2, fDpf252, this.progress, (1.0f - f22) * fMax2);
                } else {
                    j = j23;
                }
                if (z) {
                    canvas.restore();
                }
            }
            f20 = f15;
            if (f122 <= d) {
                if (this.videoTrack == null) {
                    f21 = f16;
                    fLerp = 1.0f;
                    drawRegion(canvas, paint2, f146, f8, f151, f152, fLerp * fMax2);
                    track3 = this.videoTrack;
                    if (track3 != null) {
                        if (this.collageMain == null) {
                            j = j23;
                            if (this.maxCount > 1) {
                            }
                            f22 = this.loopProgress.set(BitmapDescriptorFactory.HUE_RED);
                            float contentHeight22 = ((this.h - getContentHeight()) + this.py) - AndroidUtilities.dpf2(2.3f);
                            float fDpf2522 = (this.h - this.py) + AndroidUtilities.dpf2(4.3f);
                            if (f22 > BitmapDescriptorFactory.HUE_RED) {
                            }
                            drawProgress(canvas, contentHeight22, fDpf2522, this.progress, (1.0f - f22) * fMax2);
                            if (z) {
                            }
                        } else {
                            j = j23;
                            if (this.maxCount > 1) {
                            }
                            f22 = this.loopProgress.set(BitmapDescriptorFactory.HUE_RED);
                            float contentHeight222 = ((this.h - getContentHeight()) + this.py) - AndroidUtilities.dpf2(2.3f);
                            float fDpf25222 = (this.h - this.py) + AndroidUtilities.dpf2(4.3f);
                            if (f22 > BitmapDescriptorFactory.HUE_RED) {
                            }
                            drawProgress(canvas, contentHeight222, fDpf25222, this.progress, (1.0f - f22) * fMax2);
                            if (z) {
                            }
                        }
                    }
                }
            }
        } else {
            j = jMin;
        }
        if (this.dragged) {
            float f178 = 1.0f / (1000.0f / AndroidUtilities.screenRefreshRate);
            long j26 = j;
            float f179 = this.dragSpeed;
            long jDp = (long) ((AndroidUtilities.dp(32.0f) / this.sw) * j26 * f178 * f179);
            if (this.isCover) {
                this.dragSpeed = f179 + (f178 * 0.25f);
            }
            int i20 = this.pressHandle;
            if (i20 != 4 || (track2 = this.videoTrack) == null) {
                if (i20 == 8) {
                    float f180 = this.audioLeft;
                    long j27 = this.audioOffset;
                    long j28 = -j27;
                    long j29 = this.audioDuration;
                    float f181 = j29;
                    if (f180 < (100 + j28) / f181) {
                        i = -1;
                    } else if (this.audioRight >= ((j28 + j26) - 100) / f181) {
                        i = 1;
                    } else {
                        this.dragSpeed = 1.0f;
                        i = 0;
                    }
                    if (i != 0) {
                        if (this.audioSelected && (track = this.videoTrack) != null) {
                            j2 = j27 - (i * jDp);
                            float f182 = track.right;
                            float f183 = track.duration;
                            j3 = (long) ((f182 * f183) - (f180 * f181));
                            j4 = (long) ((track.left * f183) - (this.audioRight * f181));
                        } else if (this.roundSelected && this.hasRound) {
                            j2 = j27 - (i * jDp);
                            float f184 = this.roundRight;
                            float f185 = this.roundDuration;
                            j3 = (long) ((f184 * f185) - (f180 * f181));
                            j4 = (long) ((this.roundLeft * f185) - (this.audioRight * f181));
                        } else {
                            jClamp = Utilities.clamp(j27 - (i * jDp), 0L, -(j29 - Math.min(getBaseDuration(), getMaxScrollDuration())));
                            this.audioOffset = jClamp;
                            float f186 = (-(this.audioOffset - j27)) / this.audioDuration;
                            float fMin3 = f186 <= BitmapDescriptorFactory.HUE_RED ? Math.min(1.0f - this.audioRight, f186) : Math.max(BitmapDescriptorFactory.HUE_RED - this.audioLeft, f186);
                            if (this.videoTrack == null) {
                                float f187 = this.progress;
                                float f188 = this.audioDuration;
                                this.progress = (long) Utilities.clamp(f187 + (fMin3 * f188), f188, BitmapDescriptorFactory.HUE_RED);
                            }
                            this.audioLeft = Utilities.clamp(this.audioLeft + fMin3, 1.0f, BitmapDescriptorFactory.HUE_RED);
                            this.audioRight = Utilities.clamp(this.audioRight + fMin3, 1.0f, BitmapDescriptorFactory.HUE_RED);
                            timelineDelegate = this.delegate;
                            if (timelineDelegate != null) {
                                timelineDelegate.onAudioLeftChange(this.audioLeft);
                                this.delegate.onAudioRightChange(this.audioRight);
                                this.delegate.onProgressChange(this.progress, false);
                            }
                        }
                        jClamp = Utilities.clamp(j2, j3, j4);
                        this.audioOffset = jClamp;
                        float f1862 = (-(this.audioOffset - j27)) / this.audioDuration;
                        if (f1862 <= BitmapDescriptorFactory.HUE_RED) {
                        }
                        if (this.videoTrack == null) {
                        }
                        this.audioLeft = Utilities.clamp(this.audioLeft + fMin3, 1.0f, BitmapDescriptorFactory.HUE_RED);
                        this.audioRight = Utilities.clamp(this.audioRight + fMin3, 1.0f, BitmapDescriptorFactory.HUE_RED);
                        timelineDelegate = this.delegate;
                        if (timelineDelegate != null) {
                        }
                    }
                }
                this.dragSpeed = 1.0f;
            } else {
                float f189 = track2.left;
                long j30 = this.scroll;
                long j31 = track2.duration;
                float f190 = j31;
                if (f189 < j30 / f190) {
                    i2 = -1;
                } else if (track2.right > (j30 + j26) / f190) {
                    i2 = 1;
                } else {
                    this.dragSpeed = 1.0f;
                    i2 = 0;
                }
                long j32 = i2 * jDp;
                this.scroll = Utilities.clamp(j30 + j32, j31 - j26, 0L);
                this.progress += j32;
                Track track14 = this.videoTrack;
                float f191 = (r0 - j30) / track14.duration;
                if (f191 > BitmapDescriptorFactory.HUE_RED) {
                    f = 1.0f;
                    fMax = Math.min(1.0f - track14.right, f191);
                } else {
                    f = 1.0f;
                    fMax = Math.max(BitmapDescriptorFactory.HUE_RED - track14.left, f191);
                }
                Track track15 = this.videoTrack;
                track15.left = Utilities.clamp(track15.left + fMax, f, BitmapDescriptorFactory.HUE_RED);
                Track track16 = this.videoTrack;
                track16.right = Utilities.clamp(track16.right + fMax, f, BitmapDescriptorFactory.HUE_RED);
                TimelineDelegate timelineDelegate2 = this.delegate;
                if (timelineDelegate2 != null) {
                    timelineDelegate2.onVideoLeftChange(false, this.videoTrack.left);
                    this.delegate.onVideoRightChange(false, this.videoTrack.right);
                }
            }
            invalidate();
        } else {
            this.dragSpeed = 1.0f;
        }
        int contentHeight3 = getContentHeight();
        if (this.lastHeight != contentHeight3) {
            this.lastHeight = contentHeight3;
            Runnable runnable = this.onHeightChange;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public int getContentHeight() {
        float f = this.py;
        Track track = this.videoTrack;
        float fDp = BitmapDescriptorFactory.HUE_RED;
        float videoHeight = f + (track != null ? getVideoHeight() + AndroidUtilities.dp(4.0f) : BitmapDescriptorFactory.HUE_RED) + (this.collageTracks.isEmpty() ? BitmapDescriptorFactory.HUE_RED : getCollageHeight() + AndroidUtilities.dp(4.0f)) + (this.hasRound ? getRoundHeight() + AndroidUtilities.dp(4.0f) : BitmapDescriptorFactory.HUE_RED);
        if (this.hasAudio) {
            fDp = AndroidUtilities.dp(4.0f) + getAudioHeight();
        }
        return (int) (videoHeight + fDp + this.py);
    }

    public int getMaxCount() {
        return this.maxCount;
    }

    public long getMaxScrollDuration() {
        if (this.collageTracks.isEmpty()) {
            return Math.max(120000L, (long) (maxSelectDuration() * 1.5f));
        }
        return 70000L;
    }

    public int getTimelineHeight() {
        return AndroidUtilities.lerp(this.py + AndroidUtilities.dp(28.0f) + this.py, getContentHeight(), this.openT.get());
    }

    public boolean isDragging() {
        return this.dragged;
    }

    public void normalizeScrollByVideo() {
        long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
        Track track = this.videoTrack;
        float f = (track.right + track.left) / 2.0f;
        long j = track.duration;
        this.scroll = Utilities.clamp((long) ((f * j) - (jMin / 2.0f)), j - jMin, 0L);
        invalidate();
    }

    public boolean onBackPressed() {
        boolean z = false;
        if (this.audioSelected) {
            this.audioSelected = false;
            z = true;
            if (this.hasRound && this.videoTrack == null) {
                this.roundSelected = true;
                TimelineDelegate timelineDelegate = this.delegate;
                if (timelineDelegate != null) {
                    timelineDelegate.onRoundSelectChange(true);
                }
            }
        }
        return z;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) throws IOException {
        this.audioAuthorPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.audioTitlePaint.setTextSize(AndroidUtilities.dp(12.0f));
        int iDp = AndroidUtilities.dp(12.0f);
        this.px = iDp;
        int iDp2 = AndroidUtilities.dp(5.0f);
        this.py = iDp2;
        setPadding(iDp, iDp2, AndroidUtilities.dp(12.0f), AndroidUtilities.dp(5.0f));
        int size = View.MeasureSpec.getSize(i);
        this.w = size;
        int iDp3 = AndroidUtilities.dp(heightDp());
        this.h = iDp3;
        setMeasuredDimension(size, iDp3);
        int iDp4 = AndroidUtilities.dp(10.0f);
        this.ph = iDp4;
        this.sw = (this.w - (iDp4 * 2)) - (this.px * 2);
        Track track = this.videoTrack;
        if (track != null && track.path != null && track.thumbs == null) {
            track.setupThumbs(false);
        }
        if (!this.collageTracks.isEmpty()) {
            Iterator it = this.collageTracks.iterator();
            while (it.hasNext()) {
                Track track2 = (Track) it.next();
                if (track2.path != null && track2.thumbs == null) {
                    track2.setupThumbs(false);
                    track2.setupWaveform(false);
                }
            }
        }
        if (this.audioPath == null || this.waveform != null) {
            return;
        }
        setupAudioWaveform();
    }

    /* JADX WARN: Code restructure failed: missing block: B:490:0x0b1a, code lost:
    
        if (java.lang.Math.abs(r1) > org.telegram.messenger.AndroidUtilities.dp(100.0f)) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0b3c, code lost:
    
        if (java.lang.Math.abs(r1) > org.telegram.messenger.AndroidUtilities.dp(100.0f)) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x0b3e, code lost:
    
        r3 = java.lang.Math.min(r26.videoTrack.duration, getMaxScrollDuration());
        r5 = r26.px;
        r6 = r5;
        r8 = r3;
        r9 = r26.sw;
        r7 = (int) (((r26.scroll / r8) * r9) + r6);
        r3 = (int) (r6 + (((r26.videoTrack.duration - r3) / r8) * r9));
        r26.scrolling = true;
        r4 = r26.scroller;
        r26.wasScrollX = r7;
        r24 = 0;
        r25 = 0;
        r19 = 0;
        r21 = 0;
        r17 = r4;
        r18 = r7;
        r20 = -r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0a86  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0ac7 A[PHI: r1
      0x0ac7: PHI (r1v57 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate) = 
      (r1v54 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r1v55 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
      (r1v58 org.telegram.ui.Stories.recorder.TimelineView$TimelineDelegate)
     binds: [B:475:0x0ac5, B:468:0x0ab5, B:455:0x0a93] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:551:0x0cc1  */
    /* JADX WARN: Removed duplicated region for block: B:554:0x0ccb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0ce6  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ae  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        Runnable runnable;
        VelocityTracker velocityTracker;
        TimelineDelegate timelineDelegate;
        VelocityTracker velocityTracker2;
        int xVelocity;
        float fMin;
        int i;
        Track track;
        long j;
        int i2;
        boolean z2;
        long j2;
        float f;
        float f2;
        long j3;
        VelocityTracker velocityTracker3;
        VelocityTracker velocityTracker4;
        int xVelocity2;
        VelocityTracker velocityTracker5;
        TimelineDelegate timelineDelegate2;
        Runnable runnable2;
        VelocityTracker velocityTracker6;
        float fMin2;
        float fMax;
        float fMin3;
        float fMax2;
        boolean z3;
        TimelineDelegate timelineDelegate3;
        int i3;
        int i4;
        TimelineDelegate timelineDelegate4;
        float f3;
        float f4;
        float f5;
        TimelineDelegate timelineDelegate5;
        VelocityTracker velocityTrackerObtain;
        if (this.videoTrack == null && this.collageTracks.isEmpty() && !this.hasAudio && !this.hasRound) {
            return false;
        }
        float timelineHeight = this.h - getTimelineHeight();
        if (motionEvent.getAction() == 0 && motionEvent.getY() < timelineHeight) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (motionEvent.getAction() == 0) {
            Runnable runnable3 = this.askExactSeek;
            if (runnable3 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable3);
                this.askExactSeek = null;
            }
            this.scroller.abortAnimation();
            this.pressHandleCollageIndex = -1;
            this.pressHandle = detectHandle(motionEvent);
            this.pressType = -1;
            this.pressCollageIndex = -1;
            int roundHeight = this.h - this.py;
            if (!this.open && this.timelineBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                this.pressType = 10;
                this.pressHandle = -1;
            }
            if (this.pressType == -1 && this.videoTrack != null) {
                float f6 = roundHeight;
                if (motionEvent.getY() < f6 && motionEvent.getY() > (f6 - getVideoHeight()) - AndroidUtilities.dp(2.0f)) {
                    this.pressType = 0;
                }
                roundHeight = (int) (f6 - (getVideoHeight() + AndroidUtilities.dp(4.0f)));
            }
            if (this.pressType == -1 && !this.collageTracks.isEmpty()) {
                int i5 = 0;
                while (true) {
                    if (i5 >= this.collageTracks.size()) {
                        break;
                    }
                    float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(38.0f), ((Track) this.collageTracks.get(i5)).selectedT.get());
                    float f7 = roundHeight;
                    if (motionEvent.getY() < f7 && motionEvent.getY() > (f7 - fLerp) - AndroidUtilities.dp(2.0f)) {
                        this.pressType = 3;
                        this.pressCollageIndex = i5;
                        break;
                    }
                    roundHeight = (int) (f7 - (fLerp + AndroidUtilities.dp(4.0f)));
                    i5++;
                }
            }
            if (this.pressType == -1 && this.hasRound) {
                float f8 = roundHeight;
                if (motionEvent.getY() < f8 && motionEvent.getY() > (f8 - getRoundHeight()) - AndroidUtilities.dp(2.0f)) {
                    this.pressType = 1;
                }
                roundHeight = (int) (f8 - (getRoundHeight() + AndroidUtilities.dp(4.0f)));
            }
            if (this.pressType == -1 && this.hasAudio) {
                float f9 = roundHeight;
                if (motionEvent.getY() < f9 && motionEvent.getY() > (f9 - getAudioHeight()) - AndroidUtilities.dp(2.0f)) {
                    this.pressType = 2;
                }
                getAudioHeight();
                AndroidUtilities.dp(4.0f);
            }
            this.pressTime = System.currentTimeMillis();
            int i6 = this.pressHandle;
            this.draggingProgress = i6 == 0 || i6 == -1 || i6 == 1;
            this.hadDragChange = false;
            if (i6 == 1 || i6 == 5 || i6 == 8) {
                velocityTrackerObtain = VelocityTracker.obtain();
            } else {
                VelocityTracker velocityTracker7 = this.velocityTracker;
                if (velocityTracker7 != null) {
                    velocityTracker7.recycle();
                    velocityTrackerObtain = null;
                }
                this.dragSpeed = 1.0f;
                this.dragged = false;
                this.lastX = motionEvent.getX();
                if (!this.isCover) {
                    AndroidUtilities.cancelRunOnUIThread(this.onLongPress);
                    AndroidUtilities.runOnUIThread(this.onLongPress, ViewConfiguration.getLongPressTimeout());
                }
            }
            this.velocityTracker = velocityTrackerObtain;
            this.dragSpeed = 1.0f;
            this.dragged = false;
            this.lastX = motionEvent.getX();
            if (!this.isCover) {
            }
        } else if (motionEvent.getAction() == 2) {
            float x = motionEvent.getX() - this.lastX;
            if (this.open && (this.dragged || Math.abs(x) > AndroidUtilities.touchSlop)) {
                long jMin = Math.min(getBaseDuration(), getMaxScrollDuration());
                Track track2 = this.videoTrack;
                if (track2 != null && this.pressHandle == 1) {
                    this.scroll = (long) Utilities.clamp(this.scroll - ((x / this.sw) * jMin), track2.duration - jMin, BitmapDescriptorFactory.HUE_RED);
                    invalidate();
                    if (!this.dragged) {
                    }
                    this.dragged = true;
                    this.draggingProgress = false;
                    this.lastX = motionEvent.getX();
                } else if (track2 == null || !((i4 = this.pressHandle) == 2 || i4 == 3 || i4 == 4)) {
                    int i7 = this.pressHandle;
                    if (i7 == 6 || i7 == 7 || i7 == 8) {
                        float f10 = (x / this.sw) * (jMin / this.audioDuration);
                        if (i7 == 6) {
                            float fMinAudioSelect = this.audioRight - (minAudioSelect() / this.audioDuration);
                            float fMax3 = Math.max(0L, this.scroll - this.audioOffset);
                            float f11 = this.audioDuration;
                            float f12 = fMax3 / f11;
                            Track track3 = this.videoTrack;
                            if (track3 != null || (track3 = this.collageMain) != null) {
                                fMax = Math.max(f12, (((track3.left * track3.duration) + this.scroll) - this.audioOffset) / f11);
                            } else if (this.hasRound) {
                                fMax = Math.max(f12, (((this.roundLeft * this.roundDuration) + this.scroll) - this.audioOffset) / f11);
                            } else {
                                fMax = Math.max(f12, this.audioRight - (maxSelectDuration() / this.audioDuration));
                                if (!this.hadDragChange && f10 < BitmapDescriptorFactory.HUE_RED && this.audioLeft <= this.audioRight - (maxSelectDuration() / this.audioDuration)) {
                                    this.pressHandle = 8;
                                }
                            }
                            float f13 = this.audioLeft;
                            float fClamp = Utilities.clamp(f13 + f10, fMinAudioSelect, fMax);
                            this.audioLeft = fClamp;
                            if (Math.abs(f13 - fClamp) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate6 = this.delegate;
                            if (timelineDelegate6 != null) {
                                timelineDelegate6.onAudioOffsetChange(this.audioOffset + ((long) (this.audioLeft * this.audioDuration)));
                            }
                            TimelineDelegate timelineDelegate7 = this.delegate;
                            if (timelineDelegate7 != null) {
                                timelineDelegate7.onAudioLeftChange(this.audioLeft);
                            }
                        } else if (i7 == 7) {
                            float fMin4 = Math.min(1.0f, Math.max(0L, (this.scroll - this.audioOffset) + jMin) / this.audioDuration);
                            float f14 = this.audioLeft;
                            float fMinAudioSelect2 = minAudioSelect();
                            float f15 = this.audioDuration;
                            float f16 = f14 + (fMinAudioSelect2 / f15);
                            Track track4 = this.videoTrack;
                            if (track4 != null || (track4 = this.collageMain) != null) {
                                fMin2 = Math.min(fMin4, (((track4.right * track4.duration) + this.scroll) - this.audioOffset) / f15);
                            } else if (this.hasRound) {
                                fMin2 = Math.min(fMin4, (((this.roundRight * this.roundDuration) + this.scroll) - this.audioOffset) / f15);
                            } else {
                                fMin2 = Math.min(fMin4, this.audioLeft + (maxSelectDuration() / this.audioDuration));
                                if (!this.hadDragChange && f10 > BitmapDescriptorFactory.HUE_RED && this.audioRight >= this.audioLeft + (maxSelectDuration() / this.audioDuration)) {
                                    this.pressHandle = 8;
                                }
                            }
                            float f17 = this.audioRight;
                            float fClamp2 = Utilities.clamp(f17 + f10, fMin2, f16);
                            this.audioRight = fClamp2;
                            if (Math.abs(f17 - fClamp2) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate8 = this.delegate;
                            if (timelineDelegate8 != null) {
                                timelineDelegate8.onAudioRightChange(this.audioRight);
                            }
                        }
                        if (this.pressHandle == 8) {
                            float fMin5 = f10 > BitmapDescriptorFactory.HUE_RED ? Math.min(Math.max(BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, Math.max(0L, (this.scroll - this.audioOffset) + jMin) / this.audioDuration) - this.audioRight), f10) : Math.max(Math.min(BitmapDescriptorFactory.HUE_RED, (Math.max(0L, this.scroll - this.audioOffset) / this.audioDuration) - this.audioLeft), f10);
                            float f18 = this.audioLeft + fMin5;
                            this.audioLeft = f18;
                            this.audioRight += fMin5;
                            TimelineDelegate timelineDelegate9 = this.delegate;
                            if (timelineDelegate9 != null) {
                                timelineDelegate9.onAudioLeftChange(f18);
                                this.delegate.onAudioOffsetChange(this.audioOffset + ((long) (this.audioLeft * this.audioDuration)));
                                this.delegate.onAudioRightChange(this.audioRight);
                            }
                            TimelineDelegate timelineDelegate10 = this.delegate;
                            if (timelineDelegate10 != null) {
                                timelineDelegate10.onProgressDragChange(true);
                            }
                        }
                        if (this.videoTrack == null && !this.hasRound) {
                            this.progress = (long) (this.audioLeft * this.audioDuration);
                            TimelineDelegate timelineDelegate11 = this.delegate;
                            if (timelineDelegate11 != null) {
                                timelineDelegate11.onProgressDragChange(true);
                                this.delegate.onProgressChange(this.progress, false);
                            }
                        }
                        invalidate();
                        if (!this.dragged) {
                            this.dragSpeed = 1.0f;
                        }
                        this.dragged = true;
                        this.draggingProgress = false;
                        this.lastX = motionEvent.getX();
                    } else if (i7 == 10 || i7 == 11 || i7 == 12) {
                        float f19 = (x / this.sw) * (jMin / this.roundDuration);
                        if (i7 == 10) {
                            float fMinAudioSelect3 = this.roundRight - (minAudioSelect() / this.roundDuration);
                            float fMax4 = Math.max(0L, this.scroll - this.roundOffset);
                            float f20 = this.roundDuration;
                            float f21 = fMax4 / f20;
                            Track track5 = this.videoTrack;
                            if (track5 == null && (track5 = this.collageMain) == null) {
                                fMax2 = Math.max(f21, this.roundRight - (maxSelectDuration() / this.roundDuration));
                                if (!this.hadDragChange && f19 < BitmapDescriptorFactory.HUE_RED && this.roundLeft <= this.roundRight - (maxSelectDuration() / this.roundDuration)) {
                                    this.pressHandle = 8;
                                }
                            } else {
                                fMax2 = Math.max(f21, (((track5.left * track5.duration) + this.scroll) - this.roundOffset) / f20);
                            }
                            float f22 = this.roundLeft;
                            float fClamp3 = Utilities.clamp(f22 + f19, fMinAudioSelect3, fMax2);
                            this.roundLeft = fClamp3;
                            if (Math.abs(f22 - fClamp3) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate12 = this.delegate;
                            if (timelineDelegate12 != null) {
                                timelineDelegate12.onRoundOffsetChange(this.roundOffset + ((long) (this.roundLeft * this.roundDuration)));
                            }
                            TimelineDelegate timelineDelegate13 = this.delegate;
                            if (timelineDelegate13 != null) {
                                timelineDelegate13.onRoundLeftChange(this.roundLeft);
                            }
                        } else if (i7 == 11) {
                            float fMin6 = Math.min(1.0f, Math.max(0L, (this.scroll - this.roundOffset) + jMin) / this.roundDuration);
                            float f23 = this.roundLeft;
                            float fMinAudioSelect4 = minAudioSelect();
                            float f24 = this.roundDuration;
                            float f25 = f23 + (fMinAudioSelect4 / f24);
                            Track track6 = this.videoTrack;
                            if (track6 != null) {
                                fMin6 = Math.min(fMin6, (((track6.right * track6.duration) + this.scroll) - this.roundOffset) / f24);
                            }
                            Track track7 = this.collageMain;
                            if (track7 != null) {
                                fMin3 = Math.min(fMin6, (((track7.right * track7.duration) + this.scroll) - this.roundOffset) / this.roundDuration);
                            } else {
                                fMin3 = Math.min(fMin6, this.roundLeft + (maxSelectDuration() / this.roundDuration));
                                if (!this.hadDragChange && f19 > BitmapDescriptorFactory.HUE_RED && this.roundRight >= this.roundLeft + (maxSelectDuration() / this.roundDuration)) {
                                    this.pressHandle = 8;
                                }
                            }
                            float f26 = this.roundRight;
                            float fClamp4 = Utilities.clamp(f26 + f19, fMin3, f25);
                            this.roundRight = fClamp4;
                            if (Math.abs(f26 - fClamp4) > 0.01f) {
                                this.hadDragChange = true;
                            }
                            TimelineDelegate timelineDelegate14 = this.delegate;
                            if (timelineDelegate14 != null) {
                                timelineDelegate14.onRoundRightChange(this.roundRight);
                            }
                        }
                        if (this.pressHandle == 12) {
                            float fMin7 = f19 > BitmapDescriptorFactory.HUE_RED ? Math.min(Math.min(1.0f, Math.max(0L, (this.scroll - this.roundOffset) + jMin) / this.roundDuration) - this.roundRight, f19) : Math.max((Math.max(0L, this.scroll - this.roundOffset) / this.roundDuration) - this.roundLeft, f19);
                            float f27 = this.roundLeft + fMin7;
                            this.roundLeft = f27;
                            this.roundRight += fMin7;
                            TimelineDelegate timelineDelegate15 = this.delegate;
                            if (timelineDelegate15 != null) {
                                timelineDelegate15.onRoundLeftChange(f27);
                                this.delegate.onRoundOffsetChange(this.roundOffset + ((long) (this.roundLeft * this.roundDuration)));
                                this.delegate.onRoundRightChange(this.roundRight);
                            }
                            TimelineDelegate timelineDelegate16 = this.delegate;
                            if (timelineDelegate16 != null) {
                                timelineDelegate16.onProgressDragChange(true);
                            }
                        }
                        if (this.videoTrack == null) {
                            this.progress = (long) (this.roundLeft * this.roundDuration);
                            TimelineDelegate timelineDelegate17 = this.delegate;
                            if (timelineDelegate17 != null) {
                                timelineDelegate17.onProgressDragChange(true);
                                this.delegate.onProgressChange(this.progress, false);
                            }
                        }
                        invalidate();
                        if (!this.dragged) {
                        }
                        this.dragged = true;
                        this.draggingProgress = false;
                        this.lastX = motionEvent.getX();
                    } else {
                        int i8 = this.pressHandleCollageIndex;
                        if (i8 < 0 || i8 >= this.collageTracks.size() || !((i3 = this.pressHandle) == 13 || i3 == 14 || i3 == 15)) {
                            int i9 = this.pressHandle;
                            if (i9 == 5) {
                                moveAudioOffset((x / this.sw) * jMin);
                                if (!this.dragged) {
                                }
                                this.dragged = true;
                                this.draggingProgress = false;
                                this.lastX = motionEvent.getX();
                            } else if (i9 == 9) {
                                moveRoundOffset((x / this.sw) * jMin);
                                if (!this.dragged) {
                                }
                                this.dragged = true;
                                this.draggingProgress = false;
                                this.lastX = motionEvent.getX();
                            } else {
                                int i10 = this.pressHandleCollageIndex;
                                if (i10 < 0 || i10 >= this.collageTracks.size() || this.pressHandle != 16) {
                                    if (this.draggingProgress) {
                                        setProgressAt(motionEvent.getX(), jCurrentTimeMillis - this.lastTime < 350);
                                        if (this.dragged || (timelineDelegate3 = this.delegate) == null) {
                                            z3 = true;
                                        } else {
                                            z3 = true;
                                            timelineDelegate3.onProgressDragChange(true);
                                        }
                                        if (!this.dragged) {
                                            this.dragSpeed = 1.0f;
                                        }
                                        this.dragged = z3;
                                    }
                                    this.lastX = motionEvent.getX();
                                } else {
                                    moveCollageOffset((Track) this.collageTracks.get(this.pressHandleCollageIndex), (x / this.sw) * jMin);
                                    if (!this.dragged) {
                                    }
                                    this.dragged = true;
                                    this.draggingProgress = false;
                                    this.lastX = motionEvent.getX();
                                }
                            }
                        } else {
                            Track track8 = (Track) this.collageTracks.get(this.pressHandleCollageIndex);
                            float f28 = (x / this.sw) * (jMin / track8.duration);
                            int i11 = this.pressHandle;
                            if (i11 == 13) {
                                float fMinAudioSelect5 = track8.right - (minAudioSelect() / track8.duration);
                                float fMax5 = Math.max(0L, this.scroll - track8.offset) / track8.duration;
                                if (track8 == this.collageMain) {
                                    fMax5 = Math.max(fMax5, track8.right - (maxSelectDuration() / track8.duration));
                                    if (!this.hadDragChange && f28 < BitmapDescriptorFactory.HUE_RED && track8.left <= track8.right - (maxSelectDuration() / track8.duration)) {
                                        this.pressHandle = 15;
                                    }
                                }
                                float f29 = track8.left;
                                float fClamp5 = Utilities.clamp(f29 + f28, fMinAudioSelect5, fMax5);
                                track8.left = fClamp5;
                                if (Math.abs(f29 - fClamp5) > 0.01f) {
                                    this.hadDragChange = true;
                                }
                                TimelineDelegate timelineDelegate18 = this.delegate;
                                if (timelineDelegate18 != null) {
                                    timelineDelegate18.onVideoOffsetChange(track8.index, track8.offset);
                                }
                                TimelineDelegate timelineDelegate19 = this.delegate;
                                if (timelineDelegate19 != null) {
                                    timelineDelegate19.onVideoLeftChange(track8.index, track8.left);
                                }
                            } else if (i11 == 14) {
                                float fMin8 = Math.min(1.0f, Math.max(0L, (this.scroll - track8.offset) + jMin) / track8.duration);
                                float fMinAudioSelect6 = track8.left + (minAudioSelect() / track8.duration);
                                if (track8 == this.collageMain) {
                                    fMin8 = Math.min(fMin8, track8.left + (maxSelectDuration() / track8.duration));
                                    if (!this.hadDragChange && f28 > BitmapDescriptorFactory.HUE_RED && track8.right >= track8.left + (maxSelectDuration() / track8.duration)) {
                                        this.pressHandle = 15;
                                    }
                                }
                                float f30 = track8.right;
                                float fClamp6 = Utilities.clamp(f30 + f28, fMin8, fMinAudioSelect6);
                                track8.right = fClamp6;
                                if (Math.abs(f30 - fClamp6) > 0.01f) {
                                    this.hadDragChange = true;
                                }
                                TimelineDelegate timelineDelegate20 = this.delegate;
                                if (timelineDelegate20 != null) {
                                    timelineDelegate20.onVideoRightChange(track8.index, track8.right);
                                }
                            }
                            if (this.pressHandle == 15) {
                                float fMin9 = f28 > BitmapDescriptorFactory.HUE_RED ? Math.min(Math.min(1.0f, Math.max(0L, (this.scroll - track8.offset) + jMin) / track8.duration) - track8.right, f28) : Math.max((Math.max(0L, this.scroll - track8.offset) / track8.duration) - track8.left, f28);
                                float f31 = track8.left + fMin9;
                                track8.left = f31;
                                track8.right += fMin9;
                                TimelineDelegate timelineDelegate21 = this.delegate;
                                if (timelineDelegate21 != null) {
                                    timelineDelegate21.onVideoLeftChange(track8.index, f31);
                                    this.delegate.onVideoOffsetChange(track8.index, track8.offset);
                                    this.delegate.onVideoRightChange(track8.index, track8.right);
                                }
                                TimelineDelegate timelineDelegate22 = this.delegate;
                                if (timelineDelegate22 != null) {
                                    timelineDelegate22.onProgressDragChange(true);
                                }
                            }
                            invalidate();
                            if (!this.dragged) {
                            }
                            this.dragged = true;
                            this.draggingProgress = false;
                            this.lastX = motionEvent.getX();
                        }
                    }
                } else {
                    float f32 = track2.duration;
                    float f33 = (x / this.sw) * (jMin / f32);
                    if (i4 == 2) {
                        track2.left = Utilities.clamp(track2.left + f33, track2.right - (1000.0f / f32), BitmapDescriptorFactory.HUE_RED);
                        TimelineDelegate timelineDelegate23 = this.delegate;
                        if (timelineDelegate23 != null) {
                            timelineDelegate23.onVideoLeftChange(false, this.videoTrack.left);
                        }
                        Track track9 = this.videoTrack;
                        float f34 = track9.right - track9.left;
                        float fMaxSelectDuration = maxSelectDuration();
                        Track track10 = this.videoTrack;
                        if (f34 > fMaxSelectDuration / track10.duration) {
                            track10.right = Math.min(1.0f, track10.left + (maxSelectDuration() / this.videoTrack.duration));
                            timelineDelegate4 = this.delegate;
                            if (timelineDelegate4 != null) {
                                timelineDelegate4.onVideoRightChange(false, this.videoTrack.right);
                            }
                        }
                        float f35 = this.progress;
                        Track track11 = this.videoTrack;
                        f3 = track11.duration;
                        f4 = f35 / f3;
                        f5 = track11.left;
                        if (f4 >= f5 || f4 > track11.right) {
                            long j4 = (long) (f5 * f3);
                            this.progress = j4;
                            timelineDelegate5 = this.delegate;
                            if (timelineDelegate5 != null) {
                                timelineDelegate5.onProgressChange(j4, false);
                            }
                        }
                        invalidate();
                        if (!this.dragged) {
                        }
                        this.dragged = true;
                        this.draggingProgress = false;
                        this.lastX = motionEvent.getX();
                    } else {
                        if (i4 == 3) {
                            track2.right = Utilities.clamp(track2.right + f33, 1.0f, track2.left + (1000.0f / f32));
                            TimelineDelegate timelineDelegate24 = this.delegate;
                            if (timelineDelegate24 != null) {
                                timelineDelegate24.onVideoRightChange(false, this.videoTrack.right);
                            }
                            Track track12 = this.videoTrack;
                            float f36 = track12.right - track12.left;
                            float fMaxSelectDuration2 = maxSelectDuration();
                            Track track13 = this.videoTrack;
                            if (f36 > fMaxSelectDuration2 / track13.duration) {
                                track13.left = Math.max(BitmapDescriptorFactory.HUE_RED, track13.right - (maxSelectDuration() / this.videoTrack.duration));
                                TimelineDelegate timelineDelegate25 = this.delegate;
                                if (timelineDelegate25 != null) {
                                    timelineDelegate25.onVideoLeftChange(false, this.videoTrack.left);
                                }
                            }
                        } else if (i4 == 4) {
                            float fMin10 = f33 > BitmapDescriptorFactory.HUE_RED ? Math.min(1.0f - track2.right, f33) : Math.max(-track2.left, f33);
                            Track track14 = this.videoTrack;
                            float f37 = track14.left + fMin10;
                            track14.left = f37;
                            track14.right += fMin10;
                            TimelineDelegate timelineDelegate26 = this.delegate;
                            if (timelineDelegate26 != null) {
                                timelineDelegate26.onVideoLeftChange(false, f37);
                                timelineDelegate4 = this.delegate;
                                timelineDelegate4.onVideoRightChange(false, this.videoTrack.right);
                            }
                        }
                        float f352 = this.progress;
                        Track track112 = this.videoTrack;
                        f3 = track112.duration;
                        f4 = f352 / f3;
                        f5 = track112.left;
                        if (f4 >= f5) {
                            long j42 = (long) (f5 * f3);
                            this.progress = j42;
                            timelineDelegate5 = this.delegate;
                            if (timelineDelegate5 != null) {
                            }
                            invalidate();
                            if (!this.dragged) {
                            }
                            this.dragged = true;
                            this.draggingProgress = false;
                            this.lastX = motionEvent.getX();
                        }
                    }
                }
            }
            if (this.dragged) {
                AndroidUtilities.cancelRunOnUIThread(this.onLongPress);
            }
            int i12 = this.pressHandle;
            if ((i12 == 1 || i12 == 5 || i12 == 8) && (velocityTracker6 = this.velocityTracker) != null) {
                velocityTracker6.addMovement(motionEvent);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            AndroidUtilities.cancelRunOnUIThread(this.onLongPress);
            this.scroller.abortAnimation();
            if (motionEvent.getAction() != 1) {
                z = true;
                runnable = this.askExactSeek;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.askExactSeek = null;
                }
                if (this.dragged && z && (timelineDelegate = this.delegate) != null) {
                    timelineDelegate.onProgressDragChange(false);
                }
                this.dragSpeed = 1.0f;
                this.dragged = false;
                this.draggingProgress = false;
                this.pressTime = -1L;
                this.pressHandle = -1;
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.velocityTracker = null;
                }
            } else {
                if ((System.currentTimeMillis() - this.pressTime > ViewConfiguration.getTapTimeout() || this.dragged) && this.open) {
                    int i13 = this.pressHandle;
                    if (i13 == 16 && (velocityTracker5 = this.velocityTracker) != null) {
                        velocityTracker5.computeCurrentVelocity(1000);
                        xVelocity2 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = true;
                        if (this.videoTrack != null) {
                        }
                    } else if (i13 != 1 || (velocityTracker4 = this.velocityTracker) == null) {
                        if ((i13 == 5 || (i13 == 8 && !this.dragged)) && this.audioSelected && (velocityTracker2 = this.velocityTracker) != null) {
                            velocityTracker2.computeCurrentVelocity(this.videoTrack == null ? 1500 : 1000);
                            xVelocity = (int) this.velocityTracker.getXVelocity();
                            this.scrollingVideo = false;
                            if (Math.abs(xVelocity) > AndroidUtilities.dp(100.0f)) {
                                fMin = Math.min(getBaseDuration(), getMaxScrollDuration());
                                i = (int) (this.px + this.ph + ((this.audioOffset / fMin) * this.sw));
                                track = this.videoTrack;
                                if (track != null) {
                                    float f38 = track.right;
                                    f = track.duration;
                                    f2 = f38 * f;
                                    j3 = this.audioDuration;
                                    j2 = (long) (f2 - 0);
                                    j = (long) ((track.left * f) - j3);
                                    i2 = xVelocity;
                                    z2 = true;
                                } else if (this.hasRound) {
                                    float f39 = this.roundRight;
                                    float f40 = this.roundDuration;
                                    long j5 = (long) ((f39 * f40) - 0);
                                    j = (long) ((this.roundLeft * f40) - this.audioDuration);
                                    i2 = xVelocity;
                                    j2 = j5;
                                    z2 = true;
                                } else {
                                    j = -(this.audioDuration - Math.min(getBaseDuration(), getMaxScrollDuration()));
                                    i2 = xVelocity;
                                    z2 = true;
                                    j2 = 0;
                                }
                            }
                        } else if ((i13 == 9 || (i13 == 12 && !this.dragged)) && this.roundSelected && (velocityTracker3 = this.velocityTracker) != null) {
                            velocityTracker3.computeCurrentVelocity(this.videoTrack == null ? 1500 : 1000);
                            xVelocity = (int) this.velocityTracker.getXVelocity();
                            this.scrollingVideo = false;
                            if (Math.abs(xVelocity) > AndroidUtilities.dp(100.0f)) {
                                fMin = Math.min(getBaseDuration(), getMaxScrollDuration());
                                i = (int) (this.px + this.ph + ((this.roundOffset / fMin) * this.sw));
                                track = this.videoTrack;
                                if (track != null) {
                                    float f41 = track.right;
                                    f = track.duration;
                                    f2 = f41 * f;
                                    j3 = this.roundDuration;
                                    j2 = (long) (f2 - 0);
                                    j = (long) ((track.left * f) - j3);
                                    i2 = xVelocity;
                                    z2 = true;
                                } else {
                                    j2 = 0;
                                    j = -(this.roundDuration - Math.min(getBaseDuration(), getMaxScrollDuration()));
                                    i2 = xVelocity;
                                    z2 = true;
                                }
                            }
                        }
                        this.scrolling = z2;
                        Scroller scroller = this.scroller;
                        this.wasScrollX = i;
                        float f42 = this.px + this.ph;
                        float f43 = this.sw;
                        int i14 = (int) (((j / fMin) * f43) + f42);
                        int i15 = (int) (f42 + ((j2 / fMin) * f43));
                        int i16 = 0;
                        int i17 = 0;
                        int i18 = 0;
                        int i19 = 0;
                        Scroller scroller2 = scroller;
                        int i20 = i;
                        scroller2.fling(i20, i18, i2, i19, i14, i15, i16, i17);
                        z = false;
                        runnable = this.askExactSeek;
                        if (runnable != null) {
                        }
                        if (this.dragged) {
                            timelineDelegate.onProgressDragChange(false);
                        }
                        this.dragSpeed = 1.0f;
                        this.dragged = false;
                        this.draggingProgress = false;
                        this.pressTime = -1L;
                        this.pressHandle = -1;
                        velocityTracker = this.velocityTracker;
                        if (velocityTracker != null) {
                        }
                    } else {
                        velocityTracker4.computeCurrentVelocity(1000);
                        xVelocity2 = (int) this.velocityTracker.getXVelocity();
                        this.scrollingVideo = true;
                        if (this.videoTrack != null) {
                        }
                    }
                } else if (this.open) {
                    if (!this.isCover || this.videoTrack == null) {
                        int i21 = this.pressType;
                        if (i21 == 3) {
                            int i22 = (this.audioSelected || this.roundSelected) ? -1 : this.collageSelected;
                            int i23 = this.pressCollageIndex;
                            if (i22 != i23) {
                                this.audioSelected = false;
                                this.roundSelected = false;
                                this.collageSelected = i23;
                                if (this.delegate != null && i23 >= 0 && i23 < this.collageTracks.size()) {
                                    this.delegate.onVideoSelected(((Track) this.collageTracks.get(this.pressCollageIndex)).index);
                                }
                            }
                        } else if (i21 == 2 && !this.audioSelected) {
                            this.audioSelected = true;
                            this.roundSelected = false;
                            timelineDelegate2 = this.delegate;
                            if (timelineDelegate2 != null) {
                            }
                        } else if (i21 == 1 && !this.roundSelected) {
                            this.audioSelected = false;
                            this.roundSelected = true;
                            TimelineDelegate timelineDelegate27 = this.delegate;
                            if (timelineDelegate27 != null) {
                                timelineDelegate27.onRoundSelectChange(true);
                            }
                        } else if (i21 != 2 && this.audioSelected) {
                            this.audioSelected = false;
                            this.roundSelected = false;
                            timelineDelegate2 = this.delegate;
                            if (timelineDelegate2 != null) {
                            }
                        } else if (i21 == 1 || !this.roundSelected) {
                            long j6 = this.progress;
                            if (setProgressAt(motionEvent.getX(), false) && Math.abs(this.progress - j6) > 400) {
                                this.loopProgressFrom = j6;
                                this.loopProgress.set(1.0f, true);
                            }
                        } else {
                            this.audioSelected = false;
                            this.roundSelected = false;
                            timelineDelegate2 = this.delegate;
                            if (timelineDelegate2 != null) {
                                timelineDelegate2.onRoundSelectChange(false);
                            }
                        }
                    } else {
                        long jClamp = (long) Utilities.clamp(((((motionEvent.getX() - this.px) - this.ph) / this.sw) * Math.min(getBaseDuration(), getMaxScrollDuration())) + this.scroll, getBaseDuration(), BitmapDescriptorFactory.HUE_RED);
                        Track track15 = this.videoTrack;
                        float f44 = track15.right - track15.left;
                        track15.left = (jClamp / getBaseDuration()) * (1.0f - f44);
                        Track track16 = this.videoTrack;
                        float f45 = track16.left;
                        track16.right = f44 + f45;
                        TimelineDelegate timelineDelegate28 = this.delegate;
                        if (timelineDelegate28 != null) {
                            timelineDelegate28.onVideoLeftChange(true, f45);
                            this.delegate.onVideoRightChange(true, this.videoTrack.right);
                        }
                    }
                    invalidate();
                } else if (this.pressType == 10 && (runnable2 = this.onTimelineClick) != null) {
                    runnable2.run();
                }
                z = true;
                runnable = this.askExactSeek;
                if (runnable != null) {
                }
                if (this.dragged) {
                }
                this.dragSpeed = 1.0f;
                this.dragged = false;
                this.draggingProgress = false;
                this.pressTime = -1L;
                this.pressHandle = -1;
                velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                }
            }
        }
        this.lastTime = System.currentTimeMillis();
        return true;
    }

    public void selectRound(boolean z) {
        if (z && this.hasRound) {
            this.roundSelected = true;
            this.audioSelected = false;
        } else {
            this.roundSelected = false;
            this.audioSelected = this.hasAudio && this.videoTrack == null;
        }
        invalidate();
    }

    public void setAudio(String str, String str2, String str3, long j, long j2, float f, float f2, float f3, boolean z) {
        String str4;
        String str5;
        if (!TextUtils.equals(this.audioPath, str)) {
            AudioWaveformLoader audioWaveformLoader = this.waveform;
            if (audioWaveformLoader != null) {
                audioWaveformLoader.destroy();
                this.waveform = null;
                this.waveformIsLoaded = false;
            }
            this.audioPath = str;
            setupAudioWaveform();
        }
        this.audioPath = str;
        boolean z2 = !TextUtils.isEmpty(str);
        this.hasAudio = z2;
        if (z2) {
            str4 = str2;
            str5 = str3;
        } else {
            this.audioSelected = false;
            str4 = null;
            str5 = null;
        }
        if (TextUtils.isEmpty(str4)) {
            str4 = null;
        }
        if (TextUtils.isEmpty(str5)) {
            str5 = null;
        }
        if (this.hasAudio) {
            this.audioDuration = j;
            this.audioOffset = j2 - ((long) (j * f));
            this.audioLeft = f;
            this.audioRight = f2;
            this.audioVolume = f3;
            float lineLeft = BitmapDescriptorFactory.HUE_RED;
            if (str4 != null) {
                StaticLayout staticLayout = new StaticLayout(str4, this.audioAuthorPaint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.audioAuthor = staticLayout;
                this.audioAuthorWidth = staticLayout.getLineCount() > 0 ? this.audioAuthor.getLineWidth(0) : BitmapDescriptorFactory.HUE_RED;
                this.audioAuthorLeft = this.audioAuthor.getLineCount() > 0 ? this.audioAuthor.getLineLeft(0) : BitmapDescriptorFactory.HUE_RED;
            } else {
                this.audioAuthorWidth = BitmapDescriptorFactory.HUE_RED;
                this.audioAuthor = null;
            }
            if (str5 != null) {
                StaticLayout staticLayout2 = new StaticLayout(str5, this.audioTitlePaint, 99999, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.audioTitle = staticLayout2;
                this.audioTitleWidth = staticLayout2.getLineCount() > 0 ? this.audioTitle.getLineWidth(0) : BitmapDescriptorFactory.HUE_RED;
                if (this.audioTitle.getLineCount() > 0) {
                    lineLeft = this.audioTitle.getLineLeft(0);
                }
                this.audioTitleLeft = lineLeft;
            } else {
                this.audioTitleWidth = BitmapDescriptorFactory.HUE_RED;
                this.audioTitle = null;
            }
        }
        if (!z) {
            this.audioT.set(this.hasAudio, true);
        }
        invalidate();
    }

    public void setCollage(ArrayList<StoryEntry> arrayList) {
        VideoThumbsLoader videoThumbsLoader;
        for (int i = 0; i < this.collageTracks.size(); i++) {
            Track track = (Track) this.collageTracks.get(i);
            if (track != null && (videoThumbsLoader = track.thumbs) != null) {
                videoThumbsLoader.destroy();
            }
        }
        this.collageTracks.clear();
        for (int i2 = 0; i2 < this.collageWaveforms.size(); i2++) {
            AudioWaveformLoader audioWaveformLoader = (AudioWaveformLoader) this.collageWaveforms.get(i2);
            if (audioWaveformLoader != null) {
                audioWaveformLoader.destroy();
            }
        }
        this.collageWaveforms.clear();
        this.timelineWaveformMax.set(1.0f, true);
        if (arrayList != null) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                this.collageWaveforms.add(null);
                StoryEntry storyEntry = arrayList.get(i3);
                if (storyEntry.isVideo) {
                    Track track2 = new Track();
                    track2.index = i3;
                    track2.isRound = false;
                    track2.path = storyEntry.file.getAbsolutePath();
                    track2.duration = storyEntry.duration;
                    track2.offset = storyEntry.videoOffset;
                    track2.volume = storyEntry.videoVolume;
                    track2.left = storyEntry.videoLeft;
                    track2.right = storyEntry.videoRight;
                    track2.setupThumbs(false);
                    track2.setupWaveform(false);
                    this.collageTracks.add(track2);
                }
            }
        }
        sortCollage();
        this.collageSelected = 0;
    }

    public void setCover() {
        this.isCover = true;
    }

    public void setCoverVideo(long j, long j2) throws IOException {
        this.coverStart = j;
        this.coverEnd = j2;
        Track track = this.videoTrack;
        if (track != null) {
            track.setupThumbs(true);
        }
    }

    public void setDelegate(TimelineDelegate timelineDelegate) {
        this.delegate = timelineDelegate;
    }

    public void setMaxCount(int i) {
        this.maxCount = i;
    }

    public void setOnHeightChange(Runnable runnable) {
        this.onHeightChange = runnable;
    }

    public void setOnTimelineClick(Runnable runnable) {
        this.onTimelineClick = runnable;
    }

    public void setOpen(boolean z, boolean z2) {
        if (this.open == z && z2) {
            return;
        }
        this.open = z;
        if (!z2) {
            this.openT.set(z, true);
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setProgress(long j) {
        Track track = this.videoTrack;
        if (track != null) {
            if (j < this.progress) {
                float f = j;
                float f2 = track.duration;
                if (f > (track.left * f2) + 240.0f || r4 + 240 < f2 * track.right) {
                    if (this.hasAudio && !this.hasRound && track == null) {
                        if (j < this.progress) {
                            float f3 = j;
                            float f4 = this.audioDuration;
                            if (f3 > (this.audioLeft * f4) + 240.0f || r4 + 240 < f4 * this.audioRight) {
                            }
                        }
                    } else if (this.hasRound && track == null) {
                        if (j < this.progress) {
                            float f5 = j;
                            float f6 = this.roundDuration;
                            if (f5 <= (this.audioLeft * f6) + 240.0f && r4 + 240 >= f6 * this.audioRight) {
                                this.loopProgressFrom = -1L;
                                this.loopProgress.set(1.0f, true);
                            }
                        }
                    }
                }
            }
        }
        this.progress = j;
        invalidate();
    }

    public void setRound(String str, long j, long j2, float f, float f2, float f3, boolean z) {
        if (TextUtils.equals(this.roundPath, str)) {
            return;
        }
        VideoThumbsLoader videoThumbsLoader = this.roundThumbs;
        if (videoThumbsLoader != null) {
            videoThumbsLoader.destroy();
            this.roundThumbs = null;
        }
        long j3 = this.roundDuration;
        if (str != null) {
            this.roundPath = str;
            this.roundDuration = j;
            this.roundOffset = j2 - ((long) (j * f));
            this.roundLeft = f;
            this.roundRight = f2;
            this.roundVolume = f3;
            setupRoundThumbs();
            if (this.videoTrack == null) {
                this.audioSelected = false;
                this.roundSelected = true;
            }
        } else {
            this.roundPath = null;
            this.roundDuration = 1L;
            this.roundSelected = false;
        }
        this.hasRound = this.roundPath != null;
        if (j3 != j && this.videoTrack == null && this.waveform != null) {
            this.resetWaveform = true;
            setupAudioWaveform();
        }
        if (this.hasAudio && this.hasRound && this.videoTrack == null) {
            this.audioLeft = BitmapDescriptorFactory.HUE_RED;
            this.audioRight = Utilities.clamp(j / this.audioDuration, 1.0f, BitmapDescriptorFactory.HUE_RED);
        }
        if (!z) {
            this.roundSelectedT.set(this.roundSelected, true);
            this.audioSelectedT.set(this.audioSelected, true);
            this.roundT.set(this.hasRound, true);
        }
        invalidate();
    }

    public void setRoundNull(boolean z) {
        setRound(null, 0L, 0L, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, z);
    }

    public void setVideo(boolean z, String str, long j, float f) {
        Track track = this.videoTrack;
        if (TextUtils.equals(track == null ? null : track.path, str)) {
            return;
        }
        Track track2 = this.videoTrack;
        if (track2 != null) {
            VideoThumbsLoader videoThumbsLoader = track2.thumbs;
            if (videoThumbsLoader != null) {
                videoThumbsLoader.destroy();
                this.videoTrack.thumbs = null;
            }
            this.videoTrack = null;
        }
        if (str != null) {
            this.scroll = 0L;
            Track track3 = new Track();
            this.videoTrack = track3;
            track3.isRound = z;
            track3.path = str;
            track3.duration = j;
            track3.volume = f;
            track3.setupThumbs(false);
        } else {
            this.videoTrack = null;
            this.scroll = 0L;
        }
        if (!this.hasRound) {
            this.roundSelected = false;
        }
        this.progress = 0L;
        invalidate();
    }

    public void setVideoLeft(float f) {
        Track track = this.videoTrack;
        if (track == null) {
            return;
        }
        track.left = f;
        invalidate();
    }

    public void setVideoRight(float f) {
        Track track = this.videoTrack;
        if (track == null) {
            return;
        }
        track.right = f;
        invalidate();
    }

    public void sortCollage() {
        Collections.sort(this.collageTracks, new Comparator() { // from class: org.telegram.ui.Stories.recorder.TimelineView$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TimelineView.lambda$sortCollage$7((TimelineView.Track) obj, (TimelineView.Track) obj2);
            }
        });
        this.collageMain = this.collageTracks.isEmpty() ? null : (Track) this.collageTracks.get(0);
    }
}
