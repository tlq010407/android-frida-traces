.class public abstract Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
.super Lorg/telegram/ui/Components/Bulletin$Layout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonLayout"
.end annotation


# instance fields
.field private button:Lorg/telegram/ui/Components/Bulletin$Button;

.field private childrenMeasuredWidth:I

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public timerView:Lorg/telegram/ui/Components/Bulletin$TimerView;

.field private wrapWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public getButton()Lorg/telegram/ui/Components/Bulletin$Button;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    return-object v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr p3, v0

    :cond_0
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    if-eq p1, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p3, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->childrenMeasuredWidth:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p4, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->childrenMeasuredWidth:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->childrenMeasuredWidth:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->wrapWidth:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->childrenMeasuredWidth:I

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->removeCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->button:Lorg/telegram/ui/Components/Bulletin$Button;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->addCallback(Lorg/telegram/ui/Components/Bulletin$Layout$Callback;)V

    const v0, 0x800015

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setTimer()V
    .locals 10

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TimerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TimerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->timerView:Lorg/telegram/ui/Components/Bulletin$TimerView;

    const-wide/16 v1, 0x1388

    iput-wide v1, v0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    const/high16 v8, 0x41a80000    # 21.0f

    const/4 v9, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const v5, 0x800013

    const/high16 v6, 0x41a80000    # 21.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWrapWidth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->wrapWidth:Z

    return-void
.end method
