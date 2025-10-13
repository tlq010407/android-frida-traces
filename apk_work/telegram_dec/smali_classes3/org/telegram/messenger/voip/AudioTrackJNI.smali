.class public Lorg/telegram/messenger/voip/AudioTrackJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private buffer:[B

.field private nativeInst:J

.field private needResampling:Z

.field private running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$5btg7YbwPgTwQrACptyq6bfRxXI(Lorg/telegram/messenger/voip/AudioTrackJNI;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->lambda$startThread$0()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x780

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    iput-wide p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeInst:J

    return-void
.end method

.method private getBufferSize(II)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$startThread$0()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->needResampling:Z

    const/4 v1, 0x0

    const/16 v2, 0x780

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->needResampling:Z

    const/16 v4, 0x6e4

    if-eqz v3, :cond_1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_1
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    if-eqz v3, :cond_3

    :try_start_1
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->needResampling:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    invoke-direct {p0, v3}, Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeCallback([B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/Resampler;->convert48to44(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    invoke-virtual {v1, v3, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    invoke-virtual {v3, v6, v5, v4}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    invoke-direct {p0, v3}, Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeCallback([B)V

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B

    invoke-virtual {v3, v6, v5, v2}, Landroid/media/AudioTrack;->write([BII)I

    :goto_2
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/voip/VLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :goto_4
    const-string v0, "audiotrack thread exits"

    invoke-static {v0}, Lorg/telegram/messenger/voip/VLog;->i(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "error starting AudioTrack"

    invoke-static {v1, v0}, Lorg/telegram/messenger/voip/VLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private native nativeCallback([B)V
.end method

.method private startThread()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/voip/AudioTrackJNI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/AudioTrackJNI$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/AudioTrackJNI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "thread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public init(IIII)V
    .locals 9

    iget-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    if-nez p1, :cond_3

    const p1, 0xbb80

    invoke-direct {p0, p4, p1}, Lorg/telegram/messenger/voip/AudioTrackJNI;->getBufferSize(II)I

    move-result v5

    new-instance p1, Landroid/media/AudioTrack;

    const/16 p2, 0xc

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne p3, v8, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/16 v3, 0xc

    :goto_0
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v2, 0xbb80

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-eq p1, v8, :cond_2

    const-string p1, "Error initializing AudioTrack with 48k, trying 44.1k with resampling"

    invoke-static {p1}, Lorg/telegram/messenger/voip/VLog;->w(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    mul-int/lit8 p4, p4, 0x6

    const p1, 0xac44

    invoke-direct {p0, p4, p1}, Lorg/telegram/messenger/voip/AudioTrackJNI;->getBufferSize(II)I

    move-result v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "buffer size: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/voip/VLog;->d(Ljava/lang/String;)V

    new-instance p1, Landroid/media/AudioTrack;

    if-ne p3, v8, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :cond_1
    const/16 v3, 0xc

    :goto_2
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v2, 0xac44

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    iput-boolean v8, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->needResampling:Z

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already inited"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/voip/VLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->startThread()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
