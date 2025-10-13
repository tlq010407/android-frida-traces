.class Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisualizerBufferSink"
.end annotation


# instance fields
.field private final BUFFER_SIZE:I

.field private final MAX_BUFFER_SIZE:I

.field byteBuffer:Ljava/nio/ByteBuffer;

.field fft:Lorg/telegram/messenger/FourierTransform$FFT;

.field lastUpdateTime:J

.field position:I

.field real:[F

.field final synthetic this$0:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public static synthetic $r8$lambda$0hr4bk-_QoVM6UxKnaSKcPlbvho(Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;[F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->lambda$handleBuffer$1([F)V

    return-void
.end method

.method public static synthetic $r8$lambda$Myh3QgvyZsRU_n-WxyyX94cMmBE(Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->lambda$handleBuffer$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x400

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->BUFFER_SIZE:I

    const/16 v0, 0x2000

    iput v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->MAX_BUFFER_SIZE:I

    new-instance v1, Lorg/telegram/messenger/FourierTransform$FFT;

    const v2, 0x473b8000    # 48000.0f

    invoke-direct {v1, p1, v2}, Lorg/telegram/messenger/FourierTransform$FFT;-><init>(IF)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->fft:Lorg/telegram/messenger/FourierTransform$FFT;

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->real:[F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->position:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private synthetic lambda$handleBuffer$0()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, v0, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoPlayer;->access$200(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, v1}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    return-void
.end method

.method private synthetic lambda$handleBuffer$1([F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoPlayer;->access$200(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    return-void
.end method


# virtual methods
.method public flush(III)V
    .locals 0

    return-void
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoPlayer;->access$200(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoPlayer;->access$300(Lorg/telegram/ui/Components/VideoPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoPlayer;->access$200(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->needUpdate()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    const/16 v1, 0x2000

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p1, p1, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Lorg/telegram/ui/Components/VideoPlayer;->access$200(Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v2, v1, v0}, Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;->onVisualizerUpdate(ZZ[F)V

    return-void

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->position:I

    const/16 v0, 0x400

    if-lt p1, v0, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->real:[F

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x47000000    # 32768.0f

    div-float/2addr v3, v4

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v2, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->position:I

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->fft:Lorg/telegram/messenger/FourierTransform$FFT;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->real:[F

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/FourierTransform$FFT;->forward([F)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v0, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->fft:Lorg/telegram/messenger/FourierTransform$FFT;

    invoke-virtual {v5}, Lorg/telegram/messenger/FourierTransform;->getSpectrumReal()[F

    move-result-object v5

    aget v5, v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->fft:Lorg/telegram/messenger/FourierTransform$FFT;

    invoke-virtual {v6}, Lorg/telegram/messenger/FourierTransform;->getSpectrumImaginary()[F

    move-result-object v6

    aget v6, v6, v1

    mul-float v5, v5, v5

    mul-float v6, v6, v6

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v5, v6

    cmpl-float v6, v5, v4

    if-lez v6, :cond_5

    goto :goto_2

    :cond_5
    cmpg-float v4, v5, p1

    if-gez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    mul-float v4, v4, v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x7

    new-array v3, v1, [F

    const/4 v5, 0x6

    aput v0, v3, v5

    const v6, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_8

    :goto_3
    if-ge v2, v1, :cond_b

    aput p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-ge v2, v5, :cond_b

    const/16 v0, 0xaa

    mul-int v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->fft:Lorg/telegram/messenger/FourierTransform$FFT;

    invoke-virtual {v1}, Lorg/telegram/messenger/FourierTransform;->getSpectrumReal()[F

    move-result-object v1

    aget v1, v1, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->fft:Lorg/telegram/messenger/FourierTransform$FFT;

    invoke-virtual {v6}, Lorg/telegram/messenger/FourierTransform;->getSpectrumImaginary()[F

    move-result-object v6

    aget v0, v6, v0

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v6

    double-to-float v0, v0

    aput v0, v3, v2

    cmpl-float v1, v0, v4

    if-lez v1, :cond_9

    aput v4, v3, v2

    goto :goto_5

    :cond_9
    cmpg-float v0, v0, p1

    if-gez v0, :cond_a

    aput p1, v3, v2

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->lastUpdateTime:J

    sub-long/2addr v0, v4

    const/16 p1, 0x40

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-gez p1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->lastUpdateTime:J

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p1, p1, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;[F)V

    const-wide/16 v1, 0x82

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void

    :cond_e
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;->this$0:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p1, p1, Lorg/telegram/ui/Components/VideoPlayer;->audioUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/VideoPlayer$VisualizerBufferSink;)V

    const-wide/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
