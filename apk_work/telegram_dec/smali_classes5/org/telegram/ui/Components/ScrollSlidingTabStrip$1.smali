.class Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v4, v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    const/4 v0, 0x0

    iput v0, v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragDx:F

    iget v2, v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    invoke-static {v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$000(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput v2, v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    iput v2, v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromPosition:I

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v3, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iput v0, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    iput v0, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewXOnScreen:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
