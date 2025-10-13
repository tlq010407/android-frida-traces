.class Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private bufferManager:Lorg/webrtc/audio/LowLatencyAudioBufferManager;

.field private volatile keepAlive:Z

.field private lastPlaybackHeadPosition:J

.field private lastTimestamp:J

.field private targetTimeNs:J

.field final synthetic this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

.field private writtenFrames:J


# direct methods
.method public constructor <init>(Lorg/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->writtenFrames:J

    iput-wide p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->lastPlaybackHeadPosition:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->lastTimestamp:J

    new-instance p1, Lorg/webrtc/audio/LowLatencyAudioBufferManager;

    invoke-direct {p1}, Lorg/webrtc/audio/LowLatencyAudioBufferManager;-><init>()V

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->bufferManager:Lorg/webrtc/audio/LowLatencyAudioBufferManager;

    return-void
.end method

.method private writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrackThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$100(Z)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v0, v4}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$200(Lorg/webrtc/audio/WebRtcAudioTrack;I)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v2, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v5}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->targetTimeNs:J

    :goto_1
    iget-boolean v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$400(Lorg/webrtc/audio/WebRtcAudioTrack;)J

    move-result-wide v6

    invoke-static {v6, v7, v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$500(JI)V

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-gt v0, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$100(Z)V

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$600(Lorg/webrtc/audio/WebRtcAudioTrack;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v7}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$700(Lorg/webrtc/audio/WebRtcAudioTrack;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v6

    iget-object v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v7}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {p0, v6, v7, v0}, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-eq v6, v0, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack.write played invalid number of bytes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v6, :cond_4

    iput-boolean v4, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    iget-object v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioTrack.write failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$800(Lorg/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v7}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$900(Lorg/webrtc/audio/WebRtcAudioTrack;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->bufferManager:Lorg/webrtc/audio/LowLatencyAudioBufferManager;

    iget-object v8, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v8}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->maybeAdjustBufferSize(Landroid/media/AudioTrack;)V

    :cond_5
    iget-object v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v7}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-wide v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->writtenFrames:J

    div-int/2addr v6, v2

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->writtenFrames:J

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    int-to-long v6, v6

    iget-wide v8, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->writtenFrames:J

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x3e8

    mul-long v8, v8, v6

    int-to-long v6, v5

    div-long/2addr v8, v6

    iget-object v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/audio/WebRtcAudioTrack;->access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-wide v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->targetTimeNs:J

    const-wide/32 v8, 0x989680

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->targetTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->targetTimeNs:J

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x0

    cmp-long v10, v8, v6

    if-lez v10, :cond_1

    const-wide/32 v6, 0xf4240

    :try_start_0
    div-long v10, v8, v6

    rem-long/2addr v8, v6

    long-to-int v6, v8

    invoke-static {v10, v11, v6}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method
