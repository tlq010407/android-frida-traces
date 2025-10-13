.class public Lorg/telegram/messenger/video/VideoPlayerRewinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backSeek:Ljava/lang/Runnable;

.field private fastSeeking:Z

.field private framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

.field private playSpeed:F

.field private rewindBackSeekLastPlayerPosition:J

.field private rewindBackSeekPlayerPosition:J

.field public rewindByBackSeek:Z

.field public rewindCount:I

.field private rewindForward:Z

.field private rewindLastTime:J

.field private rewindLastUpdatePlayerTime:J

.field public rewinding:Z

.field private seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

.field private startRewindFrom:J

.field private updateRewindRunnable:Ljava/lang/Runnable;

.field private value:F

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private wasMuted:Z

.field private wasPaused:Z

.field private webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

.field private x:F


# direct methods
.method public static synthetic $r8$lambda$e0LDp0ifZxxK34aHVJNPRZekzhc(Lorg/telegram/messenger/video/VideoPlayerRewinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->lambda$cancelRewind$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$fEE-RfiqyKnmLcZ80xcHeqUU-ew(Lorg/telegram/messenger/video/VideoPlayerRewinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->lambda$updateRewindSpeed$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/video/VideoFramesRewinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;-><init>(Lorg/telegram/messenger/video/VideoPlayerRewinder;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/ui/Components/PhotoViewerWebView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->startRewindFrom:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/video/VideoPlayerRewinder;)F
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide p1
.end method

.method static synthetic access$522(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/messenger/video/VideoFramesRewinder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/video/VideoPlayerRewinder;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->seekTo(JZ)V

    return-void
.end method

.method private getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private isPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$cancelRewind$1()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->release()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateRewindSpeed$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->clearCurrent()V

    :cond_0
    return-void
.end method

.method private seekTo(JZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    :cond_1
    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekLastPlayerPosition:J

    return-void
.end method

.method private setMuted(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    :cond_0
    return-void
.end method

.method private setPaused(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->pauseVideo()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->playVideo()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPlaybackSpeed(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelRewind()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->fastSeeking:Z

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    new-instance v5, Lorg/telegram/messenger/video/VideoPlayerRewinder$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/video/VideoPlayerRewinder;)V

    invoke-virtual {v1, v3, v4, v0, v5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZLjava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    :goto_1
    invoke-direct {p0, v3, v4, v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->seekTo(JZ)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getCurrentPosition()J

    move-result-wide v3

    goto :goto_1

    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    invoke-direct {p0, v3}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setPlaybackSpeed(F)V

    :goto_4
    iget-boolean v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasMuted:Z

    invoke-direct {p0, v3}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setMuted(Z)V

    iget-boolean v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasPaused:Z

    invoke-direct {p0, v3}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setPaused(Z)V

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v3}, Lorg/telegram/messenger/video/VideoFramesRewinder;->release()V

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->onRewindCanceled()V

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setShown(ZZ)V

    :cond_7
    return-void
.end method

.method public getRewindSpeed()F
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->value:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, 0x3ff33333    # 1.9f

    sub-float/2addr v0, v1

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, -0x3f400000    # -6.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getValueBySpeed(F)F
    .locals 1

    const/high16 v0, -0x40400000    # -1.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const v0, 0x3ff33333    # 1.9f

    add-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public getVideoProgress()F
    .locals 3

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    long-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected onRewindCanceled()V
    .locals 0

    return-void
.end method

.method protected onRewindStart(Z)V
    .locals 0

    return-void
.end method

.method public setX(F)V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->value:F

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->value:F

    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->x:F

    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getRewindSpeed()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setSpeed(FZ)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->updateRewindSpeed()V

    return-void
.end method

.method public startRewind(Lorg/telegram/ui/Components/PhotoViewerWebView;ZFFLorg/telegram/ui/Components/SeekSpeedDrawable;)V
    .locals 3

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->cancelRewind()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->release()V

    :cond_0
    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iput-object p5, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    iput p4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasMuted:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasPaused:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->fastSeeking:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    iput p3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->x:F

    if-eqz p2, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getValueBySpeed(F)F

    move-result p1

    goto :goto_2

    :cond_2
    const/high16 p1, -0x40000000    # -2.0f

    goto :goto_1

    :goto_2
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->value:F

    const-wide/16 p1, -0x64

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekLastPlayerPosition:J

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getRewindSpeed()F

    move-result p1

    invoke-virtual {p5, p1, p4}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setSpeed(FZ)V

    invoke-virtual {p5, v0, v0}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setShown(ZZ)V

    :cond_3
    return-void
.end method

.method public startRewind(Lorg/telegram/ui/Components/VideoPlayer;ZFFLorg/telegram/ui/Components/SeekSpeedDrawable;)V
    .locals 3

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->cancelRewind()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->release()V

    :cond_0
    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-object p5, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->seekSpeedDrawable:Lorg/telegram/ui/Components/SeekSpeedDrawable;

    iput p4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasMuted:Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasPaused:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->fastSeeking:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    iput p3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->x:F

    if-eqz p2, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    :goto_2
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getValueBySpeed(F)F

    move-result p1

    goto :goto_3

    :cond_3
    const/high16 p1, -0x40000000    # -2.0f

    goto :goto_2

    :goto_3
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->value:F

    const-wide/16 p1, -0x64

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekLastPlayerPosition:J

    if-eqz p5, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getRewindSpeed()F

    move-result p1

    invoke-virtual {p5, p1, p4}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setSpeed(FZ)V

    invoke-virtual {p5, v0, v0}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setShown(ZZ)V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->updateRewindSpeed()V

    return-void
.end method

.method protected updateRewindProgressUi(JFZ)V
    .locals 0

    return-void
.end method

.method public updateRewindSpeed()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getRewindSpeed()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindLastTime:J

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setMuted(Z)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setPaused(Z)V

    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setPlaybackSpeed(F)V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getLowestFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->setup(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasMuted:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->wasPaused:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setMuted(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setPaused(Z)V

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->framesRewinder:Lorg/telegram/messenger/video/VideoFramesRewinder;

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    new-instance v5, Lorg/telegram/messenger/video/VideoPlayerRewinder$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/video/VideoPlayerRewinder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/VideoPlayerRewinder;)V

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZLjava/lang/Runnable;)V

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->playSpeed:F

    mul-float v1, v1, v0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->setPlaybackSpeed(F)V

    :cond_4
    :goto_1
    return-void
.end method
