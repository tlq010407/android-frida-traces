.class public Lorg/webrtc/VideoSource;
.super Lorg/webrtc/MediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoSource$AspectRatio;
    }
.end annotation


# instance fields
.field private final capturerObserver:Lorg/webrtc/CapturerObserver;

.field private isCapturerRunning:Z

.field private final nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

.field private videoProcessor:Lorg/webrtc/VideoProcessor;

.field private final videoProcessorLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$ZoY5rjPoKtGPSO-g8KSUA9e7jAY(Lorg/webrtc/VideoSource;Lorg/webrtc/VideoFrame;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/webrtc/VideoSource;->lambda$setVideoProcessor$0(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method public static synthetic $r8$lambda$alSLwIDfjL1u6pBZwqqvarucaB4(Lorg/webrtc/VideoSource;Lorg/webrtc/VideoFrame;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/webrtc/VideoSource;->lambda$setVideoProcessor$1(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaSource;-><init>(J)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoSource;->videoProcessorLock:Ljava/lang/Object;

    new-instance v0, Lorg/webrtc/VideoSource$1;

    invoke-direct {v0, p0}, Lorg/webrtc/VideoSource$1;-><init>(Lorg/webrtc/VideoSource;)V

    iput-object v0, p0, Lorg/webrtc/VideoSource;->capturerObserver:Lorg/webrtc/CapturerObserver;

    new-instance v0, Lorg/webrtc/NativeAndroidVideoTrackSource;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/NativeAndroidVideoTrackSource;-><init>(J)V

    iput-object v0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/VideoSource;)Lorg/webrtc/NativeAndroidVideoTrackSource;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/VideoSource;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoSource;->videoProcessorLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lorg/webrtc/VideoSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/webrtc/VideoSource;->isCapturerRunning:Z

    return p1
.end method

.method static synthetic access$300(Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoProcessor;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    return-object p0
.end method

.method private synthetic lambda$setVideoProcessor$0(Lorg/webrtc/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    invoke-virtual {v0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->onFrameCaptured(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method private synthetic lambda$setVideoProcessor$1(Lorg/webrtc/VideoFrame;)V
    .locals 1

    new-instance v0, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/VideoSource;Lorg/webrtc/VideoFrame;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/MediaSource;->runWithReference(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public adaptOutputFormat(III)V
    .locals 6

    .line 0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v1, v4

    move v2, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/VideoSource;->adaptOutputFormat(IIIII)V

    return-void
.end method

.method public adaptOutputFormat(IIIII)V
    .locals 6

    .line 0
    new-instance v1, Lorg/webrtc/VideoSource$AspectRatio;

    invoke-direct {v1, p1, p2}, Lorg/webrtc/VideoSource$AspectRatio;-><init>(II)V

    mul-int p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/webrtc/VideoSource$AspectRatio;

    invoke-direct {v3, p3, p4}, Lorg/webrtc/VideoSource$AspectRatio;-><init>(II)V

    mul-int p3, p3, p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/VideoSource;->adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/webrtc/NativeAndroidVideoTrackSource;->adaptOutputFormat(Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Lorg/webrtc/VideoSource$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/webrtc/VideoSource;->setVideoProcessor(Lorg/webrtc/VideoProcessor;)V

    invoke-super {p0}, Lorg/webrtc/MediaSource;->dispose()V

    return-void
.end method

.method public getCapturerObserver()Lorg/webrtc/CapturerObserver;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/VideoSource;->capturerObserver:Lorg/webrtc/CapturerObserver;

    return-object v0
.end method

.method getNativeVideoTrackSource()J
    .locals 2

    invoke-virtual {p0}, Lorg/webrtc/MediaSource;->getNativeMediaSource()J

    move-result-wide v0

    return-wide v0
.end method

.method public setIsScreencast(Z)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/VideoSource;->nativeAndroidVideoTrackSource:Lorg/webrtc/NativeAndroidVideoTrackSource;

    invoke-virtual {v0, p1}, Lorg/webrtc/NativeAndroidVideoTrackSource;->setIsScreencast(Z)V

    return-void
.end method

.method public setVideoProcessor(Lorg/webrtc/VideoProcessor;)V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/VideoSource;->videoProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/webrtc/VideoProcessor;->setSink(Lorg/webrtc/VideoSink;)V

    iget-boolean v1, p0, Lorg/webrtc/VideoSource;->isCapturerRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    invoke-interface {v1}, Lorg/webrtc/CapturerObserver;->onCapturerStopped()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/webrtc/VideoSource;->videoProcessor:Lorg/webrtc/VideoProcessor;

    if-eqz p1, :cond_1

    new-instance v1, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/webrtc/VideoSource$$ExternalSyntheticLambda1;-><init>(Lorg/webrtc/VideoSource;)V

    invoke-interface {p1, v1}, Lorg/webrtc/VideoProcessor;->setSink(Lorg/webrtc/VideoSink;)V

    iget-boolean v1, p0, Lorg/webrtc/VideoSource;->isCapturerRunning:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/webrtc/CapturerObserver;->onCapturerStarted(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
