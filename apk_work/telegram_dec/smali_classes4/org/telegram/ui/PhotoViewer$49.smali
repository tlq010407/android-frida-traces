.class Lorg/telegram/ui/PhotoViewer$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayerSeekBar$SeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createVideoControlsInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekBarContinuousDrag(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isYouTube()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoSeekPreviewImage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoSeekPreviewImage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->setProgressForYouTube(Lorg/telegram/ui/Components/PhotoViewerWebView;FI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoSeekPreviewImage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$24100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoSeekPreviewImage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->setProgress(Lorg/telegram/messenger/MessageObject;FI)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$23900(Lorg/telegram/ui/PhotoViewer;Z)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24200(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method public onSeekBarDrag(F)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float p1, v0, v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2100(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$3802(Lorg/telegram/ui/PhotoViewer;F)F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-long v0, p1

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4100(Lorg/telegram/ui/PhotoViewer;J)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$23900(Lorg/telegram/ui/PhotoViewer;Z)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$49;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$24002(Lorg/telegram/ui/PhotoViewer;Z)Z

    :cond_3
    return-void
.end method
