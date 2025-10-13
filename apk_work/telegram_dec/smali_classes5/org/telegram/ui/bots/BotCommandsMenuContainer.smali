.class public abstract Lorg/telegram/ui/bots/BotCommandsMenuContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# instance fields
.field backgroundPaint:Landroid/graphics/Paint;

.field private containerY:F

.field private currentAnimation:Landroid/animation/ObjectAnimator;

.field dismissed:Z

.field private entering:Z

.field public listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field scrollYOffset:F

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field topBackground:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->topBackground:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lorg/telegram/ui/bots/BotCommandsMenuContainer$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer$1;-><init>(Lorg/telegram/ui/bots/BotCommandsMenuContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->updateColors()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/bots/BotCommandsMenuContainer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->containerY:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/bots/BotCommandsMenuContainer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private cancelCurrentAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private checkDismiss()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismiss()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->playEnterAnim(Z)V

    :goto_0
    return-void
.end method

.method private playEnterAnim(Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public clipBottom()F
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->containerY:F

    iget-object v3, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public dismiss()V
    .locals 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->cancelCurrentAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->scrollYOffset:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v0

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/telegram/ui/bots/BotCommandsMenuContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer$2;-><init>(Lorg/telegram/ui/bots/BotCommandsMenuContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->currentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->onDismiss()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->scrollYOffset:F

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->entering:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->playEnterAnim(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->entering:Z

    :cond_0
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->cancelCurrentAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    if-lez p3, :cond_2

    int-to-float v0, p3

    sub-float/2addr p1, v0

    const/4 v0, 0x1

    aput p3, p4, v0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->cancelCurrentAnimation()V

    if-eqz p5, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    int-to-float p2, p5

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->cancelCurrentAnimation()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->checkDismiss()V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->entering:Z

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->dismissed:Z

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->cancelCurrentAnimation()V

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->playEnterAnim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->topBackground:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
