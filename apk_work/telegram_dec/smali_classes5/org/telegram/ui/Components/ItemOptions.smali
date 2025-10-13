.class public Lorg/telegram/ui/Components/ItemOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ItemOptions$DimView;,
        Lorg/telegram/ui/Components/ItemOptions$ScrimView;
    }
.end annotation


# instance fields
.field public actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private allowCenter:Z

.field private allowMoveScrim:Z

.field private animateToHeight:I

.field private animateToWidth:I

.field private blur:Z

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private dimAlpha:I

.field private dimAnimator:Landroid/animation/ValueAnimator;

.field private dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

.field private dismissListener:Ljava/lang/Runnable;

.field public dismissWithButtons:Z

.field private dontDismiss:Z

.field private drawScrim:Z

.field private fixedWidthDp:I

.field private forceBottom:Z

.field private forceTop:Z

.field private foregroundIndex:I

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private gapBackgroundColor:Ljava/lang/Integer;

.field private gravity:I

.field private hideScrimUnder:Z

.field private iconColor:Ljava/lang/Integer;

.field private ignoreX:Z

.field private lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private layout:Landroid/view/ViewGroup;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private maxHeight:I

.field private minWidthDp:I

.field public needsFocus:Z

.field private offsetX:F

.field private offsetY:F

.field public onTopOfScrim:Z

.field private overridenSwipebackGravity:Z

.field private final point:[F

.field private pointContainer:Landroid/view/ViewGroup;

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scaleOut:Z

.field private scrimView:Landroid/view/View;

.field private scrimViewBackground:Landroid/graphics/drawable/Drawable;

.field private scrimViewPadding:I

.field private scrimViewRoundRadius:I

.field private selectorColor:Ljava/lang/Integer;

.field private shiftDp:I

.field public shownFromBottom:Z

.field public swipeback:Z

.field private textColor:Ljava/lang/Integer;

.field private translateX:F

.field private translateY:F

.field public useScrollView:Z

.field private viewAdditionalOffsets:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$AoZpeU0eyq4-x6ZtodGE1L5a18Y(Lorg/telegram/ui/Components/ItemOptions;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$show$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E1PCLRw03CXqwhIma8fxKzLAJ5U(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addProfile$9(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$En60RAjY76lULUsI76q6rHKvY3Y(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addChat$4(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H_PeTvNUdjcma66jb5pXU3gWOr0(Lorg/telegram/ui/Components/ItemOptions$DimView;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ItemOptions;->lambda$show$10(Lorg/telegram/ui/Components/ItemOptions$DimView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MsSweNR1_rQH2_YiKIilHsdwb6k(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TTs2zEw1RgV92sLGQaj1l8Tkkk4(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addChecked$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQOEpO3axqlDvWihR3x0jHct6g0(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$add$5(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXf807kGFZWpX0IeZbPosfZCCDw(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addChecked$3(Ljava/lang/Runnable;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cDaMKu3O44djm1BhNwFqhteJdLE(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addSpaceGap$7(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$khPNI3O8dCgiiNuoHREXI5zshy0(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$putPremiumLock$6(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m3pxP4f_tDxkcIuADe326BgGIqA(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$init$0(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxpQbTbG1qLigR8k92oKBGt0DAI(Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$dismissDim$12(Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fe68f5c28f5c28fL    # 0.705

    cmpl-double p3, p1, v0

    if-lez p3, :cond_1

    const/16 p1, 0x66

    goto :goto_0

    :cond_1
    const/16 p1, 0x33

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    iput-boolean p4, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/ItemOptions;->shownFromBottom:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    :cond_2
    :goto_1
    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    const/4 v1, -0x4

    iput v1, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    const/4 v0, -0x4

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fe68f5c28f5c28fL    # 0.705

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const/16 p1, 0x66

    goto :goto_0

    :cond_1
    const/16 p1, 0x33

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/ItemOptions;->useScrollView:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/ItemOptions;->shownFromBottom:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->maxHeight:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->blur:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ItemOptions;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->pointContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions$DimView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewPadding:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewRoundRadius:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToHeight:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ItemOptions;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->dismissDim(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ItemOptions;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ItemOptions;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder:Z

    return p0
.end method

.method private dismissDim(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions$DimView;->dimProgress:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ItemOptions$DimView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$6;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions$6;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V
    .locals 3

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    if-eq p0, p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v0, v2

    instance-of v2, p0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    const/4 p0, 0x0

    aput v0, p2, p0

    const/4 p0, 0x1

    aput v1, p2, p0

    :cond_5
    :goto_1
    return-void
.end method

.method private init()V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Components/ItemOptions$1;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->shownFromBottom:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ItemOptions;->useScrollView:Z

    if-nez v1, :cond_1

    const/4 v5, 0x4

    :cond_1
    or-int/2addr v5, v0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions$1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-void
.end method

.method private synthetic lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$add$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addChat$4(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addChecked$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addChecked$3(Ljava/lang/Runnable;Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$addProfile$9(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addSpaceGap$7(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$dismissDim$12(Lorg/telegram/ui/Components/ItemOptions$DimView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$putPremiumLock$6(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object p2, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p2}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$show$10(Lorg/telegram/ui/Components/ItemOptions$DimView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$show$11(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V

    return-object v6
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V

    return-object v6
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;ZZ)V

    return-object v6
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V

    return-object v6
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V

    return-object v6
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions;

    xor-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZZ)V

    return-object v6
.end method


# virtual methods
.method public add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 4

    .line 0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v2, -0x2

    if-lez v1, :cond_3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    :goto_3
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_4

    :cond_3
    const/4 v1, -0x1

    goto :goto_3

    :goto_4
    return-object v0
.end method

.method public add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, p3, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p5, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_3
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p5, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_4
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p6}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_6

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    :goto_5
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_6

    :cond_6
    const/4 p1, -0x1

    goto :goto_5

    :goto_6
    return-object p0
.end method

.method public add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    if-eqz p3, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_2
    move v5, p3

    goto :goto_3

    :cond_1
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    goto :goto_2

    :goto_3
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_4

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    :goto_3
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    goto :goto_3

    :goto_4
    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addChat(Lorg/telegram/tgnet/TLObject;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v6, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v6, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v5, :cond_1

    const-string v6, ""

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/messenger/R$string;->DiscussChannel:I

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->AccDescrGroup:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_4

    sget v5, Lorg/telegram/messenger/R$string;->VoipGroupPersonalAccount:I

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget v5, Lorg/telegram/messenger/R$string;->Bot:I

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-boolean v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkViewLeft:Z

    const/high16 v8, 0x422c0000    # 43.0f

    if-eqz v6, :cond_7

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_5
    iget-boolean v9, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkViewLeft:Z

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    iget-object v9, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->checkView:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v9, :cond_9

    :goto_6
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    invoke-virtual {v5, v6, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    const/high16 v7, 0x42080000    # 34.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v6, 0x3f570a3d    # 0.84f

    if-eqz p2, :cond_a

    const v8, 0x3f570a3d    # 0.84f

    goto :goto_8

    :cond_a
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_8
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_b

    const v1, 0x3f570a3d    # 0.84f

    :cond_b
    invoke-virtual {v5, v1}, Landroid/view/View;->setScaleY(F)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x3

    const/4 v8, 0x5

    if-eqz v1, :cond_c

    const/4 v1, 0x5

    goto :goto_9

    :cond_c
    const/4 v1, 0x3

    :goto_9
    or-int/lit8 v11, v1, 0x10

    const/high16 v14, -0x3f600000    # -5.0f

    const/4 v15, 0x0

    const/16 v9, 0x22

    const/high16 v10, 0x42080000    # 34.0f

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_e

    new-instance v1, Landroid/view/View;

    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v9, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createOutlineCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_d

    const/4 v6, 0x5

    :cond_d
    or-int/lit8 v9, v6, 0x10

    const/high16 v12, -0x3f600000    # -5.0f

    const/4 v13, 0x0

    const/high16 v7, 0x42100000    # 36.0f

    const/high16 v8, 0x42100000    # 36.0f

    const/high16 v10, -0x3f400000    # -6.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_b

    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_b
    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_c

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    :goto_c
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda7;

    move-object/from16 v2, p3

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v2, -0x2

    if-lez v1, :cond_12

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget v1, v0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    :goto_d
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_e

    :cond_12
    const/4 v1, -0x1

    goto :goto_d

    :goto_e
    return-object v0
.end method

.method public addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 9

    .line 0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_1
    invoke-virtual {v8, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    :goto_2
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 v1, -0x2

    if-lez v0, :cond_3

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    :goto_3
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_4

    :cond_3
    const/4 v0, -0x1

    goto :goto_3

    :goto_4
    return-object v8
.end method

.method public addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ItemOptions;->addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addChecked(ZLjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_1
    invoke-virtual {v8, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    :goto_2
    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v8, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_5

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v8, p1}, Landroid/view/View;->setMinimumWidth(I)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    :goto_3
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_4

    :cond_5
    const/4 p1, -0x1

    goto :goto_3

    :goto_4
    return-object p0
.end method

.method public addGap()Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->gapBackgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addIf(ZILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    .line 0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    .line 0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addProfile(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 12

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x22

    const/high16 v5, 0x42080000    # 34.0f

    const/16 v6, 0x13

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x37

    const/high16 v8, 0x426c0000    # 59.0f

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f28f5c3    # 0.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x37

    const/high16 v4, 0x426c0000    # 59.0f

    const/high16 v5, 0x41d80000    # 27.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda6;

    invoke-direct {p1, p3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    const/16 p2, 0x34

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, -0x3f000000    # -8.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addText(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ItemOptions$2;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V

    int-to-float p2, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, p2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    if-lez p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    const/4 p1, -0x1

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    return-object p0
.end method

.method public addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public allowCenter(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->allowCenter:Z

    return-object p0
.end method

.method public allowMoveScrim()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    return-object p0
.end method

.method public animateToSize(II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions;->animateToHeight:I

    return-object p0
.end method

.method public closeSwipeback()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method public cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dontDismiss()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss:Z

    return-void
.end method

.method public forceBottom(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->forceBottom:Z

    return-object p0
.end method

.method public forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->forceTop:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    sub-int/2addr p1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public getItemsCount()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hideScrimUnder()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder:Z

    return-object p0
.end method

.method public ignoreX()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->ignoreX:Z

    return-object p0
.end method

.method public isShown()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setMultiline(Z)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ItemOptions;->foregroundIndex:I

    return-object v0
.end method

.method public needsFocus()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->needsFocus:Z

    return-object p0
.end method

.method public openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->dontDismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    iget p1, p1, Lorg/telegram/ui/Components/ItemOptions;->foregroundIndex:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void
.end method

.method public putCheck()Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_text_check:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public putPremiumLock(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setBlur(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->blur:Z

    return-object p0
.end method

.method public setBlurBackground(Lorg/telegram/ui/Components/BlurringShader$BlurManager;FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-direct {v2, p1, v1, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v2, p1, p2, v0, p3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v5, :cond_1

    new-instance v5, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-direct {v5, p1, v2, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    add-float/2addr v6, p2

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr v7, p3

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v0, v8}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setColors(II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->textColor:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->iconColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return-object p0
.end method

.method public setDismissWithButtons(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissWithButtons:Z

    return-object p0
.end method

.method public setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->drawScrim:Z

    return-object p0
.end method

.method public setFixedWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fixedWidthDp:I

    return-object p0
.end method

.method public setGapBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gapBackgroundColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;->setColor(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public setGravity(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    :cond_0
    return-object p0
.end method

.method public setMaxHeight(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->maxHeight:I

    return-object p0
.end method

.method public setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    return-object p0
.end method

.method public setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->onTopOfScrim:Z

    return-object p0
.end method

.method public setRoundRadius(II)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewRoundRadius:I

    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewPadding:I

    return-object p0
.end method

.method public setScaleOut(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scaleOut:Z

    return-object p0
.end method

.method public setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setSelectorColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->selectorColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public setSwipebackGravity(ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->overridenSwipebackGravity:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-boolean p1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    iput-boolean p2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityBottom:Z

    return-object p0
.end method

.method public setTranslationY(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr v2, p1

    float-to-int p1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public setViewAdditionalOffsets(IIII)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public setupSelectors()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    instance-of v4, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_c

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_7

    :cond_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v6, 0x6

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v4, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v5, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    goto :goto_4

    :cond_4
    instance-of v5, v4, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-nez v5, :cond_5

    instance-of v5, v4, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_7

    :cond_5
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    if-ne v4, v2, :cond_6

    const/4 v7, 0x6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    invoke-static {v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_4
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_9

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    goto :goto_7

    :cond_9
    instance-of v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-nez v3, :cond_a

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_c

    :cond_a
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    if-ne v4, v2, :cond_b

    const/4 v4, 0x6

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    invoke-static {v3, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public show()Lorg/telegram/ui/Components/ItemOptions;
    .locals 17

    move-object/from16 v6, p0

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-nez v0, :cond_24

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    goto/16 :goto_15

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ItemOptions;->setupSelectors()V

    iget v0, v6, Lorg/telegram/ui/Components/ItemOptions;->fixedWidthDp:I

    const/4 v9, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ge v0, v1, :cond_7

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ne v0, v1, :cond_2

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_2
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_1
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v6, Lorg/telegram/ui/Components/ItemOptions;->fixedWidthDp:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v8

    goto :goto_2

    :cond_3
    add-int/2addr v0, v8

    goto :goto_0

    :cond_4
    iget v0, v6, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ge v0, v1, :cond_7

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ne v0, v1, :cond_5

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_4

    :cond_5
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_4
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, v6, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    add-int/2addr v2, v8

    goto :goto_5

    :cond_6
    add-int/2addr v0, v8

    goto :goto_3

    :cond_7
    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    :cond_8
    move-object v10, v0

    iput-object v10, v6, Lorg/telegram/ui/Components/ItemOptions;->pointContainer:Landroid/view/ViewGroup;

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_24

    if-nez v10, :cond_9

    goto/16 :goto_15

    :cond_9
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v1, :cond_a

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    invoke-static {v1, v10, v0}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v1, v0, v8

    aget v0, v0, v9

    goto :goto_6

    :cond_a
    move v1, v0

    const/4 v0, 0x0

    :goto_6
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/telegram/ui/Components/ItemOptions$ScrimView;

    invoke-interface {v2, v13}, Lorg/telegram/ui/Components/ItemOptions$ScrimView;->getBounds(Landroid/graphics/RectF;)V

    goto :goto_8

    :cond_b
    iget v3, v6, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    if-eqz v3, :cond_c

    iget v4, v6, Lorg/telegram/ui/Components/ItemOptions;->animateToHeight:I

    if-eqz v4, :cond_c

    int-to-float v2, v3

    int-to-float v3, v4

    :goto_7
    invoke-virtual {v13, v12, v12, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_7

    :goto_8
    iget v2, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget v2, v13, Landroid/graphics/RectF;->top:F

    add-float v14, v1, v2

    iget-boolean v1, v6, Lorg/telegram/ui/Components/ItemOptions;->ignoreX:Z

    if-eqz v1, :cond_d

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aput v12, v0, v9

    const/4 v0, 0x0

    :cond_d
    iget v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    if-lez v1, :cond_11

    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$DimView;

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/Components/ItemOptions$DimView;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ItemOptions$DimView;)V

    iput-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/ItemOptions$DimView;->setProgress(F)V

    iget-boolean v1, v6, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder:Z

    if-eqz v1, :cond_e

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    :cond_f
    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$3;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/ItemOptions$3;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v1, v6, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz v1, :cond_10

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x17c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_9

    :cond_10
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_9
    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_11
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz v1, :cond_12

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v1, :cond_12

    iget v2, v6, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    if-eqz v2, :cond_12

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v11

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ItemOptions$DimView;->access$402(Lorg/telegram/ui/Components/ItemOptions$DimView;F)F

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v1, v1, v9

    neg-float v1, v1

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/Components/ItemOptions;->animateToWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v11

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_12
    move v15, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v5, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v4, Lorg/telegram/ui/Components/ItemOptions$4;

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/16 v16, -0x2

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v12, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions$4;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;IILandroid/view/ViewGroup;)V

    iput-object v12, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$5;

    invoke-direct {v0, v6, v10}, Lorg/telegram/ui/Components/ItemOptions$5;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v1, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-boolean v0, v6, Lorg/telegram/ui/Components/ItemOptions;->needsFocus:Z

    if-eqz v0, :cond_13

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    goto :goto_a

    :cond_13
    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    :goto_a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v14, v0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v15, v0

    :cond_14
    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v0, :cond_18

    iget v0, v6, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    goto :goto_c

    :cond_15
    if-ne v0, v8, :cond_16

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    :goto_b
    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_d

    :cond_16
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v15

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    :goto_c
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v15

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    move-object/from16 v1, v16

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_b

    :cond_17
    move-object/from16 v1, v16

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, v15

    iget v1, v1, Landroid/graphics/RectF;->left:F

    goto :goto_b

    :cond_18
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v7

    :goto_d
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ItemOptions;->onTopOfScrim:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    goto :goto_e

    :cond_19
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v1

    :goto_e
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ItemOptions;->forceBottom:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    add-float/2addr v14, v1

    if-eqz v2, :cond_1a

    float-to-int v1, v14

    :goto_f
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_1a
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_f

    :cond_1b
    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v2, :cond_1f

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ItemOptions;->forceTop:Z

    if-nez v2, :cond_1d

    add-float v2, v14, v1

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    goto :goto_11

    :cond_1c
    :goto_10
    const/4 v2, 0x0

    goto :goto_12

    :cond_1d
    :goto_11
    sub-float/2addr v14, v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v14, v2

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ItemOptions;->allowCenter:Z

    if-eqz v2, :cond_1e

    add-float v2, v14, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v3, v3, v8

    iget v4, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1e

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v2, v1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v14, v2, v3

    goto :goto_10

    :cond_1e
    const/4 v2, 0x1

    :goto_12
    add-float/2addr v14, v1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v14, v1

    float-to-int v1, v14

    goto :goto_13

    :cond_1f
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v7

    goto/16 :goto_f

    :goto_13
    iget-boolean v3, v6, Lorg/telegram/ui/Components/ItemOptions;->swipeback:Z

    if-eqz v3, :cond_20

    if-eqz v2, :cond_20

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ItemOptions;->overridenSwipebackGravity:Z

    if-nez v2, :cond_20

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_20

    iput-boolean v8, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityBottom:Z

    :cond_20
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim:Z

    if-eqz v2, :cond_21

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    if-eqz v2, :cond_21

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, v13, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->access$702(Lorg/telegram/ui/Components/ItemOptions$DimView;F)F

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->access$700(Lorg/telegram/ui/Components/ItemOptions$DimView;)F

    move-result v0

    iget v1, v13, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/ItemOptions;->dimView:Lorg/telegram/ui/Components/ItemOptions$DimView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ItemOptions$DimView;->access$400(Lorg/telegram/ui/Components/ItemOptions$DimView;)F

    move-result v0

    iget v2, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_21
    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_14

    :cond_22
    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-eqz v2, :cond_23

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_23
    :goto_14
    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v3, v6, Lorg/telegram/ui/Components/ItemOptions;->scaleOut:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    iget-object v2, v6, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    int-to-float v0, v0

    iget v3, v6, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, v3

    iput v0, v6, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    float-to-int v0, v0

    int-to-float v1, v1

    iget v3, v6, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr v1, v3

    iput v1, v6, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    float-to-int v1, v1

    invoke-virtual {v2, v10, v9, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_24
    :goto_15
    return-object v6

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public translate(FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    return-object p0
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method
