.class Lorg/telegram/messenger/video/VideoPlayerRewinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/VideoPlayerRewinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/VideoPlayerRewinder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$000(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$100(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$200(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v0

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$300(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$302(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getRewindSpeed()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$400(Lorg/telegram/messenger/video/VideoPlayerRewinder;)F

    move-result v1

    mul-float v0, v0, v1

    const/4 v11, 0x0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    long-to-float v1, v2

    mul-float v1, v1, v0

    float-to-long v1, v1

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$522(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J

    iget-object v12, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v12}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    move-wide v3, v7

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    invoke-static {v12, v1, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$502(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    iget-boolean v2, v1, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$600(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v1

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v4}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-lez v6, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$300(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v1

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v4}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$700(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/16 v4, 0xa

    cmp-long v6, v1, v4

    if-lez v6, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$300(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$702(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$800(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/messenger/video/VideoFramesRewinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v1}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$800(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Lorg/telegram/messenger/video/VideoFramesRewinder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v1, v4, v5, v0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->seek(JF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$900(Lorg/telegram/messenger/video/VideoPlayerRewinder;JZ)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$1000(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    long-to-float v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v4}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$200(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    iget-boolean v5, v4, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    invoke-virtual {v4, v0, v1, v2, v5}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->updateRewindProgressUi(JFZ)V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-ltz v2, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    iget-boolean v1, v0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewindByBackSeek:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$300(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$702(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$500(Lorg/telegram/messenger/video/VideoPlayerRewinder;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$900(Lorg/telegram/messenger/video/VideoPlayerRewinder;JZ)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->cancelRewind()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    iget-boolean v1, v0, Lorg/telegram/messenger/video/VideoPlayerRewinder;->rewinding:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->getRewindSpeed()F

    move-result v0

    cmpg-float v0, v0, v11

    if-gez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$1100(Lorg/telegram/messenger/video/VideoPlayerRewinder;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    return-void

    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerRewinder$1;->this$0:Lorg/telegram/messenger/video/VideoPlayerRewinder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/video/VideoPlayerRewinder;->access$302(Lorg/telegram/messenger/video/VideoPlayerRewinder;J)J

    return-void
.end method
