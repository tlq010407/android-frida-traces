.class public Lorg/telegram/messenger/video/MediaCodecPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final codec:Landroid/media/MediaCodec;

.field private done:Z

.field private final extractor:Landroid/media/MediaExtractor;

.field private first:Z

.field private final h:I

.field private lastPositionUs:J

.field private final o:I

.field private final outputSurface:Landroid/view/Surface;

.field private final w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->first:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->lastPositionUs:J

    iput-object p2, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->outputSurface:Landroid/view/Surface;

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const-string v2, "mime"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    const/4 v0, -0x1

    :goto_1
    if-eq v0, v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-string v0, "width"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->w:I

    const-string v0, "height"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->h:I

    const-string v0, "rotation-degrees"

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->o:I

    goto :goto_2

    :cond_2
    iput p1, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->o:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, p2, v3, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No video track found in file."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public ensure(J)Z
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->first:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->first:Z

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    if-nez v0, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->lastPositionUs:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_2

    if-eqz v0, :cond_3

    const-wide/32 v2, 0xf4240

    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-lez v7, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v4, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {p0}, Lorg/telegram/messenger/video/MediaCodecPlayer;->release()V

    return v1

    :cond_5
    :goto_1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ltz v2, :cond_3

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x3e80

    sub-long v5, p1, v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_6

    iput-wide v3, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->lastPositionUs:J

    iget-object p1, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p2

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->h:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->o:I

    return v0
.end method

.method public getOrientedHeight()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->o:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->w:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->h:I

    :goto_0
    return v0
.end method

.method public getOrientedWidth()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->o:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->h:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->w:I

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->w:I

    return v0
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->done:Z

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecPlayer;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_2
    return-void
.end method
