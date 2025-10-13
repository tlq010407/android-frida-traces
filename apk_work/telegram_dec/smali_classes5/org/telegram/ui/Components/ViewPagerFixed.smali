.class public Lorg/telegram/ui/Components/ViewPagerFixed;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;,
        Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    }
.end annotation


# static fields
.field private static final interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

.field private additionalOffset:F

.field private allowDisallowInterceptTouch:Z

.field private animatingForward:Z

.field private backAnimation:Z

.field private backProgress:F

.field public currentPosition:I

.field public currentProgress:F

.field private manualScrolling:Landroid/animation/ValueAnimator;

.field private maximumVelocity:I

.field private maybeStartTracking:Z

.field protected nextPosition:I

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private rect:Landroid/graphics/Rect;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private tabsAnimation:Landroid/animation/AnimatorSet;

.field private tabsAnimationInProgress:Z

.field tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field private final touchSlop:F

.field updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field protected viewPages:[Landroid/view/View;

.field private viewTypes:[I

.field protected viewsByType:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$007gxCYopFSzYO9mQ5jqlAtITkc(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$cancelTouches$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6FfcHuGVodImZgtR-LY8DDgqWvE(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$rebuild$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F0emwZw1q7uCmV7JFgxhrQLYLUo(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$scrollToPosition$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aoN7Ghc9HAnODMyle0hchIDeT6c(F)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$static$0(F)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gpYeciBFOqS8xuCbDrugNu_ZM9E(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->lambda$onTouchEventInternal$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->touchSlop:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ViewPagerFixed;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ViewPagerFixed;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ViewPagerFixed;)Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ViewPagerFixed;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public static distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const v0, 0x3ef1463b

    mul-float p0, p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v1

    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    float-to-int v4, p2

    float-to-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {p0, v2, v4, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$cancelTouches$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    return-void
.end method

.method private synthetic lambda$onTouchEventInternal$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    return-void
.end method

.method private synthetic lambda$rebuild$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$scrollToPosition$1(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v4, p1

    mul-float v0, v0, v4

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    :goto_0
    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v4, p1

    mul-float v0, v0, v4

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    return-void
.end method

.method private static synthetic lambda$static$0(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float v1, v1, p0

    mul-float v1, v1, p0

    mul-float v1, v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->canScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->canScrollForward(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz p2, :cond_6

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, -0x1

    :goto_0
    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->canScrollTo(I)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onStartTracking()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz p2, :cond_9

    const/4 v3, 0x1

    :cond_9
    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, p1, v1

    if-eqz v2, :cond_b

    if-eqz p2, :cond_a

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_1
    int-to-float p1, p1

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    goto :goto_2

    :cond_a
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_1

    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    return v1
.end method

.method private updateViewForIndex(I)V
    .locals 5

    if-nez p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    aput v3, v1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v3, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v1, v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v0, p1

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v1, v3, v0, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v0, p1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, p1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v3

    aput v3, v1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v3, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, v2, p1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method protected addMoreTabs()V
    .locals 0

    return-void
.end method

.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected canScrollForward(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->canScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public canScrollHorizontally(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_5

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public cancelTouches()V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x44bb8000    # 1500.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    shr-int/2addr v6, v2

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    shr-int/2addr v6, v2

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x455ac000    # 3500.0f

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_6

    :cond_5
    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    :goto_3
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v4, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v6, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v4, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v4, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_4

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v6, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p0, v4, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v4, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_8
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ltz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v4, v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v6, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v4, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v6, v7, v1

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v4, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_4
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v4, :cond_d

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    goto :goto_5

    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_5
    new-array v8, v0, [F

    aput v4, v8, v1

    aput v7, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aput-object v4, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_d
    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v2, [Landroid/animation/Animator;

    aput-object v4, v8, v1

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    mul-float v7, v3, v6

    int-to-float v4, v4

    div-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v0, v0

    invoke-static {v4}, Lorg/telegram/ui/Components/ViewPagerFixed;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float v4, v4, v0

    add-float/2addr v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v5

    if-lez v5, :cond_e

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    add-float/2addr v3, v6

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v3, v3, v0

    float-to-int v0, v3

    :goto_6
    const/16 v3, 0x258

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v3, 0x96

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/ViewPagerFixed$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$9;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    goto :goto_7

    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_10
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_11
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public checkTabsAnimationInProgress()Z
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v0, v5

    if-eqz v3, :cond_3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int v4, v4, v2

    int-to-float v2, v4

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v5

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    return v0

    :cond_7
    return v1
.end method

.method public clearViews()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/ViewPagerFixed$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ViewPagerFixed$3;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->tabMarginDp()I

    move-result p1

    iput p1, v6, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    new-instance p2, Lorg/telegram/ui/Components/ViewPagerFixed$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$4;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setDelegate(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p1
.end method

.method public drawForBlur(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->findRecyclerView(Landroid/view/View;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v5

    const/high16 v6, 0x434b0000    # 203.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fillTabs(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->removeTabs()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->needsTab(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemId(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->addTab(ILjava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->addMoreTabs()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/Components/TransitionExt;->createSimpleTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->finishAddingTabs()V

    :cond_3
    return-void
.end method

.method protected getAvailableTranslationX()F
    .locals 1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionAnimated()F
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getAvailableTranslationX()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getAvailableTranslationX()F

    move-result v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    :cond_1
    return v1
.end method

.method public getViewPages()[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    return-object v0
.end method

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method public isCurrentTabFirst()Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isManualScrolling()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTouch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return v0
.end method

.method protected onBack()V
    .locals 0

    return-void
.end method

.method protected onBackProgress(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->isAnimatingIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->checkTabsAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    return p1
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method protected onScrollEnd()V
    .locals 0

    return-void
.end method

.method public onStartTracking()V
    .locals 0

    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 0

    return-void
.end method

.method protected onTabPageSelected(I)V
    .locals 0

    return-void
.end method

.method protected onTabScrollEnd(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->checkTabsAnimationInProgress()Z

    move-result v4

    if-eqz v4, :cond_7

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onStartTracking()V

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v5, :cond_4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v1

    if-eqz v5, :cond_6

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_8

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    :cond_8
    :goto_2
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    const/4 v5, -0x1

    if-nez v4, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, p0, v4, v6}, Lorg/telegram/ui/Components/ViewPagerFixed;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-nez v4, :cond_b

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingY:I

    goto/16 :goto_12

    :cond_b
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v0, :cond_19

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v7, :cond_c

    if-gtz v0, :cond_d

    :cond_c
    if-nez v7, :cond_12

    if-gez v0, :cond_12

    :cond_d
    if-gez v0, :cond_e

    const/4 v7, 0x1

    goto :goto_3

    :cond_e
    const/4 v7, 0x0

    :goto_3
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v7

    if-nez v7, :cond_12

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {p0, v7, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v2, v1

    if-eqz v7, :cond_10

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v8, :cond_f

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_4
    int-to-float v2, v2

    goto :goto_5

    :cond_f
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_4

    :goto_5
    invoke-virtual {p0, v7, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    :cond_10
    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v2, :cond_11

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v2, v3, v7, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    :cond_11
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    :cond_12
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v2, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->touchSlop:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_30

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_30

    if-gez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_12

    :cond_14
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz p1, :cond_30

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ne v2, v5, :cond_15

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onBackProgress(F)Z

    goto :goto_8

    :cond_15
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v3

    int-to-float v5, v0

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v2, v1

    if-eqz v5, :cond_17

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_16

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v0, v2

    :goto_7
    invoke-virtual {p0, v5, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    goto :goto_8

    :cond_16
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_7

    :cond_17
    :goto_8
    sub-float/2addr v4, p1

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_18

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p1, v0, v2, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    :cond_18
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    goto/16 :goto_12

    :cond_19
    const/4 v5, 0x3

    if-eqz p1, :cond_1a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_30

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_30

    :cond_1a
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_1b

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maximumVelocity:I

    int-to-float v7, v7

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_1b
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_1d

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v7, :cond_1e

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x453b8000    # 3000.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1e

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e

    cmpg-float v7, v5, v2

    if-gez v7, :cond_1c

    const/4 v7, 0x1

    goto :goto_9

    :cond_1c
    const/4 v7, 0x0

    :goto_9
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_a

    :cond_1d
    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1e
    :goto_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->additionalOffset:F

    cmpl-float v7, v7, v2

    if-eqz v7, :cond_23

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_20

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_1f

    cmpl-float v6, v5, v2

    if-lez v6, :cond_25

    goto :goto_b

    :cond_1f
    cmpg-float v6, v5, v2

    if-gez v6, :cond_25

    goto :goto_b

    :cond_20
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_22

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    if-eqz v6, :cond_21

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    shr-int/2addr v7, v1

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_25

    goto :goto_b

    :cond_21
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    goto :goto_d

    :cond_22
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    shr-int/2addr v7, v1

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_25

    goto :goto_b

    :cond_23
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_25

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_24

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v7, v6

    if-gez v6, :cond_25

    :cond_24
    :goto_b
    const/4 v6, 0x1

    goto :goto_c

    :cond_25
    const/4 v6, 0x0

    :goto_c
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    :goto_d
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v6, :cond_27

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_26

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {p0, v7, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v7, v8, v3

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2a

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0, v6, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_e

    :cond_26
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {p0, v7, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v7, v8, v3

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2a

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p0, v6, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    :cond_27
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ltz v6, :cond_29

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v6, p1

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v6, :cond_28

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p0, v7, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v7, v8, v3

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2a

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v6, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    :cond_28
    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0, v7, v8}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v7, v8, v3

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2a

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v6, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e

    :cond_29
    const/4 p1, 0x0

    :cond_2a
    :goto_e
    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-gez v6, :cond_2c

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backProgress:F

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->backAnimation:Z

    if-eqz v7, :cond_2b

    const/4 v7, 0x0

    goto :goto_f

    :cond_2b
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_f
    new-array v8, v0, [F

    aput v6, v8, v3

    aput v7, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2c
    new-array v6, v0, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->updateTabProgress:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    mul-float v7, p1, v4

    int-to-float v6, v6

    div-float/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v0, v0

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float v6, v6, v0

    add-float/2addr v0, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v2, v5, v2

    if-lez v2, :cond_2d

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_10

    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    :goto_10
    const/16 v0, 0x258

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x96

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$7;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    goto :goto_11

    :cond_2e
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_2f

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2f
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_30
    :goto_12
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez p1, :cond_32

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz p1, :cond_31

    goto :goto_13

    :cond_31
    const/4 v1, 0x0

    :cond_32
    :goto_13
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public rebuild(Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->hasStableId()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, v2, v0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v2, v3

    aput-object v4, v2, v0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v0

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, p1, v0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v3

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, p1, v3

    :cond_6
    return-void

    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    :cond_8
    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-gez v4, :cond_9

    iput v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v5, v5, v3

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v7, v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    if-ne v4, v2, :cond_b

    const/4 p1, 0x0

    :cond_b
    if-eqz p1, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V

    :cond_c
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    if-eqz p1, :cond_11

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v0

    if-eqz p1, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, p1, v4}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object p1, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v3

    if-eqz p1, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v4, v0, [Landroid/animation/Animator;

    aput-object p1, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_10
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1302(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v0, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xdc

    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ViewPagerFixed$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$8;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimationInProgress:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v0

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v1, p1, v0

    :cond_12
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public resetTouch()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->maybeStartTracking:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->startedTracking:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v2, v0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    if-eqz v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v2, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    return-void
.end method

.method public scrollToPosition(I)Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    if-ne v2, p1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    const/4 v2, 0x1

    if-ge v0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->animatingForward:Z

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabPageSelected(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    if-eqz v0, :cond_4

    aget-object p1, p1, v2

    int-to-float v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    goto :goto_2

    :cond_4
    aget-object p1, p1, v2

    neg-int v0, v1

    int-to-float v0, v0

    goto :goto_1

    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ViewPagerFixed$2;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x21c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->manualScrolling:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v2

    :cond_5
    :goto_3
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eqz v0, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->createView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v3, v3, v2

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->bindView(Landroid/view/View;II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    return-void
.end method

.method public setAllowDisallowInterceptTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->allowDisallowInterceptTouch:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iput v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v3, v1

    iget v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p0, v3, p1, v4, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object p1, p1, v1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iget v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTab(IIF)V

    :cond_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    :cond_4
    return-void
.end method

.method protected setTranslationX(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected swapViews()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v0, v1

    aput-object v2, v0, v3

    iget v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iget v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iput v5, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    iput v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    iget v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v6

    iput v7, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    iget-object v6, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v7, v6, v1

    aget v8, v6, v3

    aput v8, v6, v1

    aput v7, v6, v3

    invoke-virtual {p0, v4, v2, v5, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method protected tabMarginDp()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ViewPagerFixed$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$5;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Components/ViewPagerFixed$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed$6;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public updateCurrent()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    iget v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->getItemViewType(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->updateViewForIndex(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    iget-object v4, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewTypes:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    :cond_1
    return-void
.end method
