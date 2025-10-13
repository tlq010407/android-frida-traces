.class public Lorg/telegram/ui/ArticleViewer$Sheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;
    }
.end annotation


# instance fields
.field public final animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public attachedToActionBar:Z

.field private backProgress:F

.field public containerView:Landroid/view/View;

.field public final context:Landroid/content/Context;

.field public dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

.field private dismissAnimator:Landroid/animation/ValueAnimator;

.field private dismissProgress:F

.field private dismissing:Z

.field private dismissingIntoTabs:Z

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public fullyAttachedToActionBar:Z

.field private hadDialog:Z

.field private lastVisible:Z

.field public nestedVerticalScroll:Z

.field private onDismissListener:Ljava/lang/Runnable;

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private released:Z

.field public resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private wasFullyVisible:Z

.field public final windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;


# direct methods
.method public static synthetic $r8$lambda$R1iMY8Oo2VllthdBVC4nOIfDsWg(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$animateBackProgressTo$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WV2VbjIUZfC3IeGYNTEMXlM6N8o(Lorg/telegram/ui/ArticleViewer$Sheet;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLTrNtPtr7kxfXyRG5DQgeq5zp0(Lorg/telegram/ui/ArticleViewer$Sheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$dismiss$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$acvMyi29JNvSHlwxMMr2WRr0VdY(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$animateDismiss$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bff3HFNOTXyj5mAKr7U5i1hvkz4(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->lambda$animateOpen$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->context:Landroid/content/Context;

    new-instance p2, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static synthetic access$22500(Lorg/telegram/ui/ArticleViewer$Sheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    return p0
.end method

.method static synthetic access$22502(Lorg/telegram/ui/ArticleViewer$Sheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    return p1
.end method

.method static synthetic access$22600(Lorg/telegram/ui/ArticleViewer$Sheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    return p0
.end method

.method static synthetic access$22602(Lorg/telegram/ui/ArticleViewer$Sheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    return p1
.end method

.method static synthetic access$22700(Lorg/telegram/ui/ArticleViewer$Sheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    return p0
.end method

.method static synthetic access$22800(Lorg/telegram/ui/ArticleViewer$Sheet;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$22900(Lorg/telegram/ui/ArticleViewer$Sheet;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListPaddingTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$23000(Lorg/telegram/ui/ArticleViewer$Sheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    return p0
.end method

.method private getListPaddingTop()I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private getListTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getListTop()F

    move-result v3

    mul-float v3, v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float v3, v3, v0

    float-to-int v1, v3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getListTop()F

    move-result v0

    mul-float v0, v0, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method private synthetic lambda$animateBackProgressTo$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->setBackProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateDismiss$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method private synthetic lambda$animateOpen$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method private synthetic lambda$dismiss$1()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->release()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->destroy()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr p1, v1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->access$2502(Lorg/telegram/ui/ArticleViewer;Z)Z

    return-void
.end method


# virtual methods
.method public animateBackProgressTo(F)Landroid/animation/ValueAnimator;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public animateDismiss(ZZLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$2;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/ArticleViewer$Sheet$2;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;ZLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    :goto_0
    return-void
.end method

.method public animateOpen(ZZLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$Sheet$1;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/ArticleViewer$Sheet$1;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;ZLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x140

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xb4

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    :cond_6
    :goto_2
    return-void
.end method

.method public attachInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->released:Z

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of v1, p1, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->requestCustomNavigationBar()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->attach()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->resume()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->resume()V

    :cond_5
    return-void
.end method

.method public attachedToParent()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public checkFullyVisible()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->wasFullyVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->isFullyVisible()Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->isFullyVisible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->wasFullyVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->sheetContainer:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public checkNavColor()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->isAttachedLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->updateNavigationBarColor()V

    goto :goto_2

    :cond_1
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer$Sheet;->getNavigationBarColor(I)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v3

    const v4, 0x3f389375    # 0.721f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    :goto_2
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz p1, :cond_1

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$Sheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$Sheet;)V

    invoke-virtual {p0, v0, v0, p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateDismiss(ZZLjava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method public dismissInstant()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->release()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->destroy()V

    return-void
.end method

.method public getActionBarColor()I
    .locals 5

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v3

    sub-float/2addr v2, v0

    invoke-static {v1, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getArticleViewer()Lorg/telegram/ui/ArticleViewer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    return-object v0
.end method

.method public getBackProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 5

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_iv_navigationBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v3

    sub-float/2addr v2, v0

    invoke-static {v1, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getEmptyPadding()I
    .locals 3

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->containerView:Landroid/view/View;

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListTop()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNavigationBarColor(I)I
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getBackgroundColor()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/web/WebActionBar;->addressBackgroundColor:I

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/web/WebActionBar;->addressingProgress:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    :cond_1
    invoke-static {p1, v1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWindowView()Landroid/view/View;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    move-result-object v0

    return-object v0
.end method

.method public getWindowView()Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    return-object v0
.end method

.method public hadDialog()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->hadDialog:Z

    return v0
.end method

.method public final halfSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAttachedLightStatusBar()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getActionBarColor()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isFullyVisible()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fullyAttachedToActionBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShown()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->released:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedBackPressed()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isSearching()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V

    return v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/web/WebActionBar;->isAddressing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    return v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isFirstArticle()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->hasBackButton()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->back()V

    return v1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$21900(Lorg/telegram/ui/ArticleViewer;)V

    return v1

    :cond_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    return v1
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->released:Z

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->access$22400(Lorg/telegram/ui/ArticleViewer$PageLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget v3, v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->offsetY:F

    neg-float v3, v3

    iget v4, v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->topActionBarOffsetY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->access$22402(Lorg/telegram/ui/ArticleViewer$PageLayout;Z)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->pause()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->pause()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->detach()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->onDismissListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->onDismissListener:Ljava/lang/Runnable;

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public saveState()Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 5

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/WebActionBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getActionBarColor()I

    move-result v1

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    :goto_0
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_iv_background:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    :goto_1
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->attachedToActionBar:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getProgress()F

    move-result v1

    :goto_2
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleProgress:F

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->view2:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->favicon:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->view2:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewWidth:I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->view2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewHeight:I

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getListTop()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewScroll:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->themeIsDark:Z

    return-object v0
.end method

.method public setBackProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->backProgress:F

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    return-void
.end method

.method public setContainerView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->containerView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    return-void
.end method

.method public setDialog(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;)Z
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dialog:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->hadDialog:Z

    :cond_0
    return v0
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 0

    return-void
.end method

.method public setLastVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->lastVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->onDismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->attachInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateOpen(ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateLastVisible()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->lastVisible:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->setLastVisible(Z)V

    return-void
.end method

.method public updateTranslation()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$Sheet;->getEmptyPadding()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->openProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissingIntoTabs:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissProgress:F

    :goto_0
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
