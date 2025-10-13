.class public abstract Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

.field public drawForThumb:Z

.field private hasTransformed:Z

.field private previousScale:F

.field private px:F

.field private py:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->drawForThumb:Z

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public entitiesCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p5, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->px:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->py:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->cancelled:Z

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->cancelled:Z

    if-nez v4, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->px:F

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->py:F

    invoke-static {v1, p1, v2, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->px:F

    sub-float v2, v1, v2

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->py:F

    sub-float v4, p1, v4

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->pan(FF)V

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->px:F

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->py:F

    goto :goto_0

    :cond_3
    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-ne v2, p1, :cond_7

    :cond_4
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onEntityDeselect()V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_6
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->cancelled:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_0
    return v3
.end method
