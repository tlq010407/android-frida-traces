.class public abstract Lorg/telegram/ui/Components/ChatSearchTabs;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "SourceFile"


# instance fields
.field private actionBarTagsAnimator:Landroid/animation/ValueAnimator;

.field private actionBarTagsT:F

.field private backgroundPaint2:Landroid/graphics/Paint;

.field public showWithCut:Z

.field private shown:Z

.field public shownT:F

.field public tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method public static synthetic $r8$lambda$MHL0umdnSNcJoPX6I6OzNFWBCiE(Lorg/telegram/ui/Components/ChatSearchTabs;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatSearchTabs;->lambda$show$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->showWithCut:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatSearchTabs;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatSearchTabs;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsT:F

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ChatSearchTabs;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsT:F

    return p1
.end method

.method private synthetic lambda$show$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsT:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatSearchTabs;->setShown(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatSearchTabs;->onShownUpdate(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->showWithCut:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatSearchTabs;->getCurrentHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->backgroundPaint2:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatSearchTabs;->getCurrentHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->backgroundPaint2:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->shownT:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->shown:Z

    return v0
.end method

.method protected abstract onShownUpdate(Z)V
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurredFrameLayout;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->backgroundPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public setShown(F)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->shownT:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->showWithCut:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTabs(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->shown:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsT:F

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatSearchTabs$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatSearchTabs$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatSearchTabs;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatSearchTabs$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatSearchTabs$1;-><init>(Lorg/telegram/ui/Components/ChatSearchTabs;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->actionBarTagsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public shown()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatSearchTabs;->shownT:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
