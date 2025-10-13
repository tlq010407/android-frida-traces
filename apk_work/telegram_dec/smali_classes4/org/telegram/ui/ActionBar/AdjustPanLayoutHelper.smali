.class public abstract Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static USE_ANDROID11_INSET_ANIMATOR:Z = false

.field public static final keyboardInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private animationInProgress:Z

.field animator:Landroid/animation/ValueAnimator;

.field checkHierarchyHeight:Z

.field private contentView:Landroid/view/ViewGroup;

.field private delayedAnimationRunnable:Ljava/lang/Runnable;

.field private enabled:Z

.field from:F

.field private ignoreOnce:Z

.field inverse:Z

.field isKeyboardVisible:Z

.field protected keyboardSize:F

.field private needDelay:Z

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final parent:Landroid/view/View;

.field parentForListener:Landroid/view/View;

.field previousContentHeight:I

.field previousHeight:I

.field previousStartOffset:I

.field private resizableView:Landroid/view/View;

.field private resizableViewToSet:Landroid/view/View;

.field public showingKeyboard:Z

.field startAfter:J

.field to:F

.field private useInsetsAnimator:Z

.field private usingInsetAnimator:Z

.field viewsToHeightSet:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$zTRNXEnZ4vnXnlkNIOtBKmRm3K0(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->lambda$animateHeight$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->USE_ANDROID11_INSET_ANIMATOR:Z

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->usingInsetAnimator:Z

    new-instance v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$1;-><init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->delayedAnimationRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousContentHeight:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;-><init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->enabled:Z

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->useInsetsAnimator:Z

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    new-instance p1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->contentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->usingInsetAnimator:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->usingInsetAnimator:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animateHeight(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress:Z

    return p0
.end method

.method private animateHeight(IIZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->ignoreOnce:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->ignoreOnce:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->enabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startTransition(IIZ)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$3;-><init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->needDelay:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->needDelay:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x64

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startAfter:J

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->delayedAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startAfter:J

    :goto_0
    return-void
.end method

.method private findResizableView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableViewToSet:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$animateHeight$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->usingInsetAnimator:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->updateTransition(F)V

    :cond_0
    return-void
.end method

.method private setupNewCallback()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$4;-><init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;I)V

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method


# virtual methods
.method public animationInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress:Z

    return v0
.end method

.method protected applyTranslation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public delayAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->needDelay:Z

    return-void
.end method

.method public getViewsToSetHeight(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected abstract heightAnimationEnabled()Z
.end method

.method public ignoreOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->ignoreOnce:Z

    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->contentView:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->findResizableView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableView:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parentForListener:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->useInsetsAnimator:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setupNewCallback()V

    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parentForListener:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parentForListener:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->useInsetsAnimator:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_2
    return-void
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 0

    return-void
.end method

.method protected onTransitionEnd()V
    .locals 0

    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onTransitionStart(ZII)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZI)V

    return-void
.end method

.method public runDelayedAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->delayedAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->delayedAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setResizableView(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableViewToSet:Landroid/view/View;

    return-void
.end method

.method public setViewHeight(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected startOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startTransition(IIZ)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startOffset()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->getViewsToSetHeight(Landroid/view/View;)V

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->checkHierarchyHeight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getExpandedHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->applyTranslation()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr v1, p2

    add-int/2addr v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setViewHeight(I)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, p3, p1, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZII)V

    sub-int v1, p2, p1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardSize:F

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress:Z

    if-gt p2, p1, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->showingKeyboard:Z

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-le p2, p1, :cond_6

    int-to-float p1, v0

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->applyTranslation()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    neg-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    invoke-virtual {p0, v1, v6, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    neg-float p1, v1

    iput p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->from:F

    neg-int p1, v3

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->to:F

    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->inverse:Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->applyTranslation()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    iget p2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    iget p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1, v5, p3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->to:F

    iput v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->from:F

    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->inverse:Z

    :goto_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->usingInsetAnimator:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopTransition()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animationInProgress:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->usingInsetAnimator:Z

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setViewHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->viewsToHeightSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->resizableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->isKeyboardVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->applyTranslation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    return-void
.end method

.method public updateTransition(F)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->inverse:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sub-float p1, v1, p1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->from:F

    mul-float v0, v0, p1

    iget v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->to:F

    sub-float/2addr v1, p1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->applyTranslation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->parent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    neg-float v0, v0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->isKeyboardVisible:Z

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onPanTranslationUpdate(FFZ)V

    return-void
.end method
