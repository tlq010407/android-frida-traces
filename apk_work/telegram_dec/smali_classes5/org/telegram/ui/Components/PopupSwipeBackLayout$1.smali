.class Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PopupSwipeBackLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

.field final synthetic val$touchSlop:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iput p2, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->val$touchSlop:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$500(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$100(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x44160000    # 600.0f

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$600(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    const p4, 0x45bb8000    # 6000.0f

    div-float/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p1, p4, p3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$700(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V

    :cond_1
    :goto_0
    return p2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$000(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$100(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$200(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v1, v1, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->val$touchSlop:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v4, v4, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v4, v1, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-static {v1, v5, v4}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$300(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$002(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Z)Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :cond_2
    move-object/from16 v5, p2

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$102(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Z)Z

    goto :goto_2

    :cond_4
    move-object/from16 v5, p2

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$000(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$402(Lorg/telegram/ui/Components/PopupSwipeBackLayout;F)F

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->invalidateTransforms()V

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$1;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$000(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)Z

    move-result v1

    return v1
.end method
