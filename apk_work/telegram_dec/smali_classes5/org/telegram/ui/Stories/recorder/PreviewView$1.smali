.class Lorg/telegram/ui/Stories/recorder/PreviewView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

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
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateTextureViewHolder()V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    return-void
.end method
