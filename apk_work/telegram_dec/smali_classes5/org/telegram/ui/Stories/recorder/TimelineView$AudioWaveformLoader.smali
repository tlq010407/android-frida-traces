.class Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioWaveformLoader"
.end annotation


# instance fields
.field private final animatedLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final count:I

.field private final data:[S

.field private duration:J

.field private final extractor:Landroid/media/MediaExtractor;

.field private inputFormat:Landroid/media/MediaFormat;

.field private loaded:I

.field private final lock:Ljava/lang/Object;

.field private max:S

.field private stop:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private waveformLoader:Lorg/telegram/ui/Stories/recorder/FfmpegAudioWaveformLoader;


# direct methods
.method public static synthetic $r8$lambda$NKCuXRkl-aEmwTsseeVUI6KgiXs(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;[SI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->receiveData([SI)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zf4nvC3pIKrNW4z4rQE2Nj6pPY(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;[SI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->lambda$run$0([SI)V

    return-void
.end method

.method public static synthetic $r8$lambda$euafz_GZqdf0mOeuLVK7symE8Ls(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->run()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/TimelineView;Ljava/lang/String;I)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x258

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->animatedLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->loaded:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->lock:Ljava/lang/Object;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->stop:Z

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "audio/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->inputFormat:Landroid/media/MediaFormat;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->inputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_2

    const-string v1, "durationUs"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v3, 0xf4240

    div-long/2addr v0, v3

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->duration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->access$1200(Lorg/telegram/ui/Stories/recorder/TimelineView;)Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->access$1200(Lorg/telegram/ui/Stories/recorder/TimelineView;)Lorg/telegram/ui/Stories/recorder/TimelineView$Track;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$Track;->duration:J

    goto :goto_4

    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->access$1300(Lorg/telegram/ui/Stories/recorder/TimelineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->access$1400(Lorg/telegram/ui/Stories/recorder/TimelineView;)J

    move-result-wide v0

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->access$1500(Lorg/telegram/ui/Stories/recorder/TimelineView;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->access$1600(Lorg/telegram/ui/Stories/recorder/TimelineView;)J

    move-result-wide v0

    goto :goto_4

    :cond_5
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->duration:J

    mul-long v0, v0, v3

    :goto_4
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float p1, v0

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->duration:J

    mul-long v0, v0, v3

    long-to-float v0, v0

    div-float/2addr v0, p1

    int-to-float p1, p3

    mul-float v0, v0, p1

    const p1, 0x405554ca

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 p3, 0xfa0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->count:I

    new-array p3, p1, [S

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->data:[S

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->duration:J

    const-wide/16 v3, 0x0

    cmp-long p3, v0, v3

    if-lez p3, :cond_8

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->inputFormat:Landroid/media/MediaFormat;

    if-eqz p3, :cond_8

    const-string p3, "audio/mpeg"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "audio/mp3"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "audio/mp4a"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "audio/mp4a-latm"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    sget-object p1, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_7
    :goto_5
    new-instance p3, Lorg/telegram/ui/Stories/recorder/FfmpegAudioWaveformLoader;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V

    invoke-direct {p3, p2, p1, v0}, Lorg/telegram/ui/Stories/recorder/FfmpegAudioWaveformLoader;-><init>(Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback2;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->waveformLoader:Lorg/telegram/ui/Stories/recorder/FfmpegAudioWaveformLoader;

    :cond_8
    :goto_6
    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->animatedLoaded:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method private synthetic lambda$run$0([SI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->receiveData([SI)V

    return-void
.end method

.method private receiveData([SI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->loaded:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->data:[S

    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-short v3, p1, v0

    aput-short v3, v2, v1

    iget-short v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->max:S

    aget-short v2, p1, v0

    if-ge v1, v2, :cond_1

    iput-short v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->max:S

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->loaded:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->loaded:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private run()V
    .locals 26

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->inputFormat:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->duration:J

    int-to-long v4, v0

    mul-long v2, v2, v4

    long-to-float v0, v2

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->count:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->inputFormat:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->inputFormat:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v4, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    const/16 v4, 0x20

    new-array v4, v4, [S

    move-object v13, v3

    move-object v14, v4

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v7, 0x9c4

    invoke-virtual {v2, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/16 v6, 0x15

    const/16 v21, 0x1

    if-ltz v4, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_1

    aget-object v3, v11, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_1
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_1
    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v3, v10}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v22

    if-gez v22, :cond_2

    const-wide/16 v22, 0x0

    const/16 v17, 0x4

    const/4 v5, 0x0

    const/16 v24, 0x0

    move-object v3, v2

    const/16 v12, 0x15

    move/from16 v6, v24

    move-wide/from16 v7, v22

    move-object/from16 v25, v9

    move/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v25, v9

    const/16 v12, 0x15

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    move/from16 v6, v22

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v3, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    :cond_3
    move-object/from16 v25, v9

    const/16 v12, 0x15

    :goto_2
    if-ltz v15, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v12, :cond_4

    aget-object v3, v13, v15

    goto :goto_3

    :cond_4
    invoke-static {v2, v15}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_3
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    move-object/from16 v3, v25

    const-wide/16 v4, 0x9c4

    :goto_4
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    const/4 v6, -0x1

    if-eq v15, v6, :cond_11

    if-nez v17, :cond_11

    if-ltz v15, :cond_10

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v12, :cond_6

    aget-object v7, v13, v15

    goto :goto_5

    :cond_6
    invoke-static {v2, v15}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_e

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v8, :cond_e

    move/from16 v8, v19

    :goto_6
    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    if-lez v9, :cond_c

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v4, v9

    int-to-short v4, v4

    if-lt v8, v0, :cond_a

    sub-int v8, v16, v18

    aput-short v20, v14, v8

    add-int/lit8 v8, v16, 0x1

    sub-int v9, v8, v18

    array-length v6, v14

    if-ge v9, v6, :cond_7

    iget v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->count:I

    if-lt v8, v6, :cond_8

    :cond_7
    array-length v6, v14

    new-array v6, v6, [S

    new-instance v12, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda2;

    invoke-direct {v12, v1, v14, v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;[SI)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move-object v14, v6

    move/from16 v18, v8

    :cond_8
    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->data:[S

    array-length v6, v6

    move/from16 v16, v8

    if-lt v8, v6, :cond_9

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    move/from16 v6, v20

    :goto_7
    if-ge v6, v4, :cond_b

    move/from16 v20, v4

    goto :goto_8

    :cond_b
    move/from16 v20, v6

    :goto_8
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-ge v4, v5, :cond_d

    :cond_c
    move/from16 v19, v8

    goto :goto_9

    :cond_d
    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v4, 0x9c4

    const/4 v6, -0x1

    const/16 v12, 0x15

    goto :goto_6

    :cond_e
    :goto_9
    invoke-virtual {v2, v15, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_f

    move/from16 v3, v16

    const/16 v17, 0x1

    goto :goto_b

    :cond_f
    :goto_a
    const-wide/16 v4, 0x9c4

    const/16 v12, 0x15

    goto/16 :goto_4

    :cond_10
    const/4 v4, -0x3

    if-ne v15, v4, :cond_f

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    goto :goto_a

    :cond_11
    move/from16 v3, v16

    :goto_b
    iget-object v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->stop:Z

    if-eqz v5, :cond_12

    monitor-exit v4

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_12
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v17, :cond_14

    :try_start_2
    iget v4, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->count:I

    if-lt v3, v4, :cond_13

    goto :goto_c

    :cond_13
    move/from16 v16, v3

    goto/16 :goto_0

    :cond_14
    :goto_c
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    :goto_d
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->waveformLoader:Lorg/telegram/ui/Stories/recorder/FfmpegAudioWaveformLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FfmpegAudioWaveformLoader;->destroy()V

    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->stop:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBar(I)S
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->data:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->count:I

    return v0
.end method

.method public getLoadedCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->loaded:I

    return v0
.end method

.method public getMaxBar()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->max:S

    return v0
.end method
