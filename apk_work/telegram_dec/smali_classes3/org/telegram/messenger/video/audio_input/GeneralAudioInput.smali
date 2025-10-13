.class public Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;
.super Lorg/telegram/messenger/video/audio_input/AudioInput;
.source "SourceFile"


# instance fields
.field private audioBufferConverter:Lorg/telegram/messenger/video/AudioBufferConverter;

.field private buffer:Ljava/nio/ShortBuffer;

.field private final decoder:Lorg/telegram/messenger/video/AudioDecoder;

.field private hasRemaining:Z

.field private outputChannelCount:I

.field private outputSampleRate:I

.field private requiredShortsForStartOffset:I

.field private startOffsetShortsCounter:I

.field private startOffsetUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/AudioInput;-><init>()V

    new-instance v0, Lorg/telegram/messenger/video/AudioDecoder;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/video/AudioDecoder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/AudioInput;-><init>()V

    new-instance v0, Lorg/telegram/messenger/video/AudioDecoder;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/video/AudioDecoder;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->init()V

    return-void
.end method

.method private decode()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/AudioDecoder;->decode()Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;

    move-result-object v0

    iget v1, v0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->index:I

    if-ltz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->audioBufferConverter:Lorg/telegram/messenger/video/AudioBufferConverter;

    iget-object v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/AudioDecoder;->getSampleRate()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/AudioDecoder;->getChannelCount()I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->outputSampleRate:I

    iget v7, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->outputChannelCount:I

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/video/AudioBufferConverter;->convert(Ljava/nio/ShortBuffer;IIII)Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    iget v0, v0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->index:I

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/AudioDecoder;->releaseOutputBuffer(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/video/AudioBufferConverter;

    invoke-direct {v0}, Lorg/telegram/messenger/video/AudioBufferConverter;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->audioBufferConverter:Lorg/telegram/messenger/video/AudioBufferConverter;

    return-void
.end method


# virtual methods
.method public getNext()S
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->startOffsetShortsCounter:I

    iget v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->requiredShortsForStartOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->startOffsetShortsCounter:I

    return v3

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decode()V

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decode()V

    iget-object v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_3

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->hasRemaining:Z

    :cond_3
    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Audio input has no remaining value."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSampleRate()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/AudioDecoder;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public getStartOffsetUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->startOffsetUs:J

    return-wide v0
.end method

.method public hasRemaining()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->hasRemaining:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->buffer:Ljava/nio/ShortBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->hasRemaining:Z

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/AudioDecoder;->stop()V

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/AudioDecoder;->release()V

    return-void
.end method

.method public setEndTimeUs(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/AudioDecoder;->setEndTimeUs(J)V

    return-void
.end method

.method public setStartOffsetUs(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->startOffsetUs:J

    return-void
.end method

.method public setStartTimeUs(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/AudioDecoder;->setStartTimeUs(J)V

    return-void
.end method

.method public start(II)V
    .locals 2

    iput p1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->outputSampleRate:I

    iput p2, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->outputChannelCount:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->hasRemaining:Z

    iget-object p1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->decoder:Lorg/telegram/messenger/video/AudioDecoder;

    invoke-virtual {p1}, Lorg/telegram/messenger/video/AudioDecoder;->start()V

    invoke-virtual {p0}, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->getStartOffsetUs()J

    move-result-wide p1

    iget v0, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->outputSampleRate:I

    iget v1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->outputChannelCount:I

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/video/AudioConversions;->usToShorts(JII)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->requiredShortsForStartOffset:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/messenger/video/audio_input/GeneralAudioInput;->startOffsetShortsCounter:I

    return-void
.end method
