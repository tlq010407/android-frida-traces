.class Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecordedAudioPlayerView;->init(Ljava/lang/String;D[BFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;->this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;->this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-static {p2}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->access$000(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;->this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->wasPlaying:Z

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;->this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-static {p2}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->access$100(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Lorg/telegram/ui/Components/PlayPauseDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;->this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-static {p2}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->access$200(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/RecordedAudioPlayerView$1;->this$0:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->access$200(Lorg/telegram/ui/Components/RecordedAudioPlayerView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    return-void
.end method
