.class Lorg/telegram/ui/Stories/recorder/PreviewView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PreviewView;->setVideoTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
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

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioLeftChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    return-void
.end method

.method public onAudioOffsetChange(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-wide p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    return-void
.end method

.method public onAudioRemove()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public onAudioRightChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    return-void
.end method

.method public onAudioVolumeChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    return-void
.end method

.method public onProgressChange(JZ)V
    .locals 1

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$300(Lorg/telegram/ui/Stories/recorder/PreviewView;J)V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p3

    :goto_0
    invoke-virtual {p3, p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->seekTo(JZ)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onProgressDragChange(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->forceNotRestorePosition()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, -0x4

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    return-void
.end method

.method public onRoundLeftChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    return-void
.end method

.method public onRoundOffsetChange(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-wide p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    return-void
.end method

.method public onRoundRemove()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onRoundRemove()V

    return-void
.end method

.method public onRoundRightChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    return-void
.end method

.method public onRoundSelectChange(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onRoundSelectChange(Z)V

    return-void
.end method

.method public onRoundVolumeChange(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    return-void
.end method

.method public onVideoLeftChange(IF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    :cond_0
    return-void
.end method

.method public onVideoLeftChange(ZF)V
    .locals 4

    .line 0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$400(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float p2, p2, v0

    float-to-long v0, p2

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$300(Lorg/telegram/ui/Stories/recorder/PreviewView;J)V

    :cond_1
    return-void
.end method

.method public onVideoOffsetChange(IJ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    :cond_0
    return-void
.end method

.method public onVideoRightChange(IF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    :cond_0
    return-void
.end method

.method public onVideoRightChange(ZF)V
    .locals 0

    .line 0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    return-void
.end method

.method public onVideoSelected(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlight(I)V

    :cond_0
    return-void
.end method

.method public onVideoVolumeChange(F)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    return-void
.end method

.method public onVideoVolumeChange(IF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$500(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    :cond_0
    return-void
.end method
