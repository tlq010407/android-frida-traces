.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$200(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$300(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const-wide/16 v6, 0x64

    if-nez v5, :cond_1

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$400(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$500(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$402(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Z)Z

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$600(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v3

    long-to-float v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$700(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$800(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$802(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$900(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$902(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    move-wide v3, v8

    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$600(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catch_2
    nop

    goto :goto_0

    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$1000(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    goto :goto_3

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    return-void
.end method
