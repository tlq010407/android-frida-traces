.class Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/VideoPlayerHolderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_2

    iget v2, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerDuration:J

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
