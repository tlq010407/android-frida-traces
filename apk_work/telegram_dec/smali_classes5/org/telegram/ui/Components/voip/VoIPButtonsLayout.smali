.class public Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field childPadding:I

.field private childSize:I

.field childWidth:I

.field private startPadding:Z

.field visibleChildCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x44

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childSize:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->startPadding:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->startPadding:Z

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->visibleChildCount:I

    sub-int/2addr p1, p4

    int-to-float p1, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childWidth:I

    iget p5, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childPadding:I

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    int-to-float p4, p4

    mul-float p1, p1, p4

    float-to-int p1, p1

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childPadding:I

    add-int/2addr v0, p1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p5, v0, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childPadding:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr v0, p5

    add-int/2addr p1, v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->visibleChildCount:I

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childWidth:I

    sub-int/2addr p1, p4

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->visibleChildCount:I

    add-int/lit8 p4, p4, -0x1

    div-int/2addr p1, p4

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_4

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p2, :cond_3

    mul-int v1, p5, p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p5, p5, 0x1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->visibleChildCount:I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->visibleChildCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->visibleChildCount:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childSize:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    div-int v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childPadding:I

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/high16 p2, 0x42a00000    # 80.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChildSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->childSize:I

    return-void
.end method

.method public setUseStartPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->startPadding:Z

    return-void
.end method
