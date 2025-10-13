.class public Lorg/telegram/messenger/video/OldVideoPlayerRewinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backSeek:Ljava/lang/Runnable;

.field private playSpeed:F

.field private rewindBackSeekPlayerPosition:J

.field public rewindByBackSeek:Z

.field public rewindCount:I

.field private rewindForward:Z

.field private rewindLastTime:J

.field private rewindLastUpdatePlayerTime:J

.field private startRewindFrom:J

.field private updateRewindRunnable:Ljava/lang/Runnable;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private webView:Lorg/telegram/ui/Components/PhotoViewerWebView;


# direct methods
.method public static synthetic $r8$lambda$tiX-pNlTfN5uHqqpmyXCUMARuOM(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->lambda$incrementRewindCount$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->playSpeed:F

    new-instance v0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder$1;-><init>(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)Lorg/telegram/ui/Components/PhotoViewerWebView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindLastTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindLastTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindForward:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide p1
.end method

.method static synthetic access$514(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;J)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide v0
.end method

.method static synthetic access$522(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;J)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->seekTo(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->startRewindFrom:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

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

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private incrementRewindCount()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindForward:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindByBackSeek:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindByBackSeek:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindForward:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindByBackSeek:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    if-ne v0, v1, :cond_4

    const/high16 v0, 0x40800000    # 4.0f

    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->setPlaybackSpeed(F)V

    :cond_3
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    if-ne v0, v3, :cond_5

    const/high16 v0, 0x40e00000    # 7.0f

    goto :goto_1

    :cond_5
    const/high16 v0, 0x41500000    # 13.0f

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->setPlaybackSpeed(F)V

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindLastTime:J

    iput-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindLastUpdatePlayerTime:J

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->startRewindFrom:J

    iget-boolean v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindForward:Z

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->onRewindStart(Z)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/OldVideoPlayerRewinder;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_a
    return-void
.end method

.method private isPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$incrementRewindCount$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->incrementRewindCount()V

    return-void
.end method

.method private seekTo(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->setPlaybackSpeed(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelRewind()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindCount:I

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindByBackSeek:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->seekTo(J)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->playSpeed:F

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->setPlaybackSpeed(F)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->backSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->updateRewindRunnable:Ljava/lang/Runnable;

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->onRewindCanceled()V

    return-void
.end method

.method public getVideoProgress()F
    .locals 3

    iget-wide v0, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindBackSeekPlayerPosition:J

    long-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->getDuration()J

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

.method public startRewind(Lorg/telegram/ui/Components/PhotoViewerWebView;ZF)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iput p3, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->playSpeed:F

    iput-boolean p2, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindForward:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->cancelRewind()V

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->incrementRewindCount()V

    return-void
.end method

.method public startRewind(Lorg/telegram/ui/Components/VideoPlayer;ZF)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput p3, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->playSpeed:F

    iput-boolean p2, p0, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->rewindForward:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->cancelRewind()V

    invoke-direct {p0}, Lorg/telegram/messenger/video/OldVideoPlayerRewinder;->incrementRewindCount()V

    return-void
.end method

.method protected updateRewindProgressUi(JFZ)V
    .locals 0

    return-void
.end method
