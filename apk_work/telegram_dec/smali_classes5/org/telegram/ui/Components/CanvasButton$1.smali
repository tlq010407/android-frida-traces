.class Lorg/telegram/ui/Components/CanvasButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/CanvasButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/CanvasButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CanvasButton;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CanvasButton$1;->this$0:Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton$1;->this$0:Lorg/telegram/ui/Components/CanvasButton;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton$1;->this$0:Lorg/telegram/ui/Components/CanvasButton;

    invoke-static {v0}, Lorg/telegram/ui/Components/CanvasButton;->access$000(Lorg/telegram/ui/Components/CanvasButton;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/CanvasButton$1;->this$0:Lorg/telegram/ui/Components/CanvasButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/CanvasButton;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
