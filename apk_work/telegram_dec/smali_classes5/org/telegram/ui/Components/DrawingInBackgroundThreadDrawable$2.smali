.class Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;->this$0:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;->this$0:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->access$002(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;->this$0:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;->this$0:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->attachedToWindow:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->access$100(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)V

    return-void

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->frameGuid:I

    invoke-static {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->access$200(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)I

    move-result v0

    if-eq v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;->this$0:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->needSwapBitmaps:Z

    return-void
.end method
