.class public Lorg/telegram/ui/Components/Bulletin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Bulletin$Layout;,
        Lorg/telegram/ui/Components/Bulletin$Delegate;,
        Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;,
        Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;,
        Lorg/telegram/ui/Components/Bulletin$ParentLayout;,
        Lorg/telegram/ui/Components/Bulletin$LoadingLayout;,
        Lorg/telegram/ui/Components/Bulletin$BulletinWindow;,
        Lorg/telegram/ui/Components/Bulletin$TimerView;,
        Lorg/telegram/ui/Components/Bulletin$UndoButton;,
        Lorg/telegram/ui/Components/Bulletin$Button;,
        Lorg/telegram/ui/Components/Bulletin$UsersLayout;,
        Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;,
        Lorg/telegram/ui/Components/Bulletin$LottieLayout;,
        Lorg/telegram/ui/Components/Bulletin$ProgressLayout;,
        Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;,
        Lorg/telegram/ui/Components/Bulletin$TwoLineAnimatedLottieLayout;,
        Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;,
        Lorg/telegram/ui/Components/Bulletin$MultiLineLayout;,
        Lorg/telegram/ui/Components/Bulletin$SimpleLayout;,
        Lorg/telegram/ui/Components/Bulletin$ButtonLayout;
    }
.end annotation


# static fields
.field private static final delegates:Ljava/util/HashMap;

.field private static final fragmentDelegates:Ljava/util/HashMap;

.field private static visibleBulletin:Lorg/telegram/ui/Components/Bulletin;


# instance fields
.field private allowBlurAnimation:Z

.field private bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private canHide:Z

.field private final containerFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final containerLayout:Landroid/widget/FrameLayout;

.field private containerLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field public currentBottomOffset:I

.field private currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

.field private duration:I

.field public hash:I

.field public hideAfterBottomSheet:Z

.field private final hideRunnable:Ljava/lang/Runnable;

.field private ignoreDetach:Z

.field public lastBottomOffset:I

.field private final layout:Lorg/telegram/ui/Components/Bulletin$Layout;

.field private layoutTransition:Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

.field private loaded:Z

.field private onHideListener:Ljava/lang/Runnable;

.field private final parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

.field public setCanHideOnShow:Z

.field private showing:Z

.field private skipShowAnimation:Z

.field public tag:I


# direct methods
.method public static synthetic $r8$lambda$3W3kP340qGAPntUgZ0GUa_7LVu4(Lorg/telegram/ui/Components/Bulletin;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Bulletin;->lambda$show$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-K4f9AYCEtEvv50krIdm5KR9yQ(Lorg/telegram/ui/Components/Bulletin;ZLandroid/view/View;IIIIIIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Components/Bulletin;->lambda$show$2(ZLandroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$PptE4QffRppoyrt5oiUPQ6UiowA(Lorg/telegram/ui/Components/Bulletin;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Bulletin;->lambda$show$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-8FKud5kyFhXRNv4YzqFE8bBnI(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin;->lambda$hide$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$ihyP8-UXF-pzF4u9NgOEgkgnAqU(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin;->lambda$hide$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$vZfyGQZeAcjJn8J4fIQbqj8lqyQ(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->lambda$hide$4(Ljava/lang/Float;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Bulletin;->delegates:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Bulletin;->fragmentDelegates:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->hideRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->loaded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->setCanHideOnShow:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->hideRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->loaded:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->setCanHideOnShow:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    instance-of v1, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLayout;

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->loaded:Z

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$1;

    invoke-direct {v0, p0, p3, p2}, Lorg/telegram/ui/Components/Bulletin$1;-><init>(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->containerFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    iput p4, p0, Lorg/telegram/ui/Components/Bulletin;->duration:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Bulletin$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin;->ensureLayoutTransitionCreated()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Layout$Transition;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin;->layoutTransition:Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Bulletin;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin;->showing:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Bulletin;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin;->canHide:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/Bulletin;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin;->allowBlurAnimation:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin$Delegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/ui/Components/Bulletin$Delegate;)Lorg/telegram/ui/Components/Bulletin$Delegate;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin;->containerFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Bulletin;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin$Delegate;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->findDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin$Delegate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Bulletin;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->isTransitionsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Bulletin;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Bulletin;->skipShowAnimation:Z

    return p0
.end method

.method public static addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->delegates:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->fragmentDelegates:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ensureLayoutTransitionCreated()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->layoutTransition:Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->createTransition()Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layoutTransition:Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    :cond_0
    return-void
.end method

.method public static find(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/Bulletin$Layout;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object p0, v2, Lorg/telegram/ui/Components/Bulletin$Layout;->bulletin:Lorg/telegram/ui/Components/Bulletin;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin$Delegate;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->fragmentDelegates:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/telegram/ui/Components/Bulletin;->delegates:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    return-object v0
.end method

.method public static hide(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->hide(Landroid/widget/FrameLayout;Z)V

    return-void
.end method

.method public static hide(Landroid/widget/FrameLayout;Z)V
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->find(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->isTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/Bulletin;->hide(ZJ)V

    :cond_1
    return-void
.end method

.method public static hideVisible()V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    return-void
.end method

.method public static hideVisible(Landroid/view/ViewGroup;)V
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    return-void
.end method

.method private static isTransitionsEnabled()Z
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$hide$3()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onBottomOffsetChange(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onHide(Lorg/telegram/ui/Components/Bulletin;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningExit:Z

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onExitTransitionEnd()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onHide()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onDetach()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->onHideListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hide$4(Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onBottomOffsetChange(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hide$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private synthetic lambda$show$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/Bulletin;->lastBottomOffset:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$show$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$2(ZLandroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->allowLayoutChanges()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz p1, :cond_1

    iget p2, p0, Lorg/telegram/ui/Components/Bulletin;->tag:I

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->getBottomOffset(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lorg/telegram/ui/Components/Bulletin;->lastBottomOffset:I

    if-eq p2, p1, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget p4, p0, Lorg/telegram/ui/Components/Bulletin;->lastBottomOffset:I

    int-to-float p4, p4

    invoke-direct {p3, p4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p3, 0x44610000    # 900.0f

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->bottomOffsetSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_4
    return-void
.end method

.method public static make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    if-nez p0, :cond_0

    new-instance p0, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)V

    return-object v0
.end method

.method public static make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    if-nez p0, :cond_0

    new-instance p0, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Bulletin$Layout;->access$000(Lorg/telegram/ui/Components/Bulletin$Layout;II)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/telegram/ui/Components/Bulletin;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)V

    return-object v0
.end method

.method public static removeDelegate(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->delegates:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->fragmentDelegates:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateCurrentPosition()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updatePosition()V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowBlur()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->allowBlurAnimation:Z

    return-object p0
.end method

.method public getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->isTransitionsEnabled()Z

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin;->hide(ZJ)V

    return-void
.end method

.method public hide(J)V
    .locals 1

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->isTransitionsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->hide(ZJ)V

    return-void
.end method

.method public hide(ZJ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin;->showing:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Bulletin;->showing:Z

    sget-object v2, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-ne v2, p0, :cond_1

    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    iget v8, p0, Lorg/telegram/ui/Components/Bulletin;->currentBottomOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/Bulletin;->currentBottomOffset:I

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->transitionRunningExit:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    iput-object v0, p1, Lorg/telegram/ui/Components/Bulletin$Layout;->delegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;-><init>()V

    iput-wide p2, p1, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->duration:J

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layoutTransition:Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/Bulletin;->ensureLayoutTransitionCreated()V

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Bulletin;->layoutTransition:Lorg/telegram/ui/Components/Bulletin$Layout$Transition;

    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    new-instance v6, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    new-instance v7, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-interface/range {v3 .. v8}, Lorg/telegram/ui/Components/Bulletin$Layout$Transition;->animateExit(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V

    return-void

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-nez p2, :cond_5

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onBottomOffsetChange(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->currentDelegate:Lorg/telegram/ui/Components/Bulletin$Delegate;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Bulletin$Delegate;->onHide(Lorg/telegram/ui/Components/Bulletin;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onExitTransitionStart()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onExitTransitionEnd()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onHide()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    new-instance p1, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->onDetach()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->onHideListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    return-object p0
.end method

.method public ignoreDetach()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach:Z

    return-object p0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->showing:Z

    return v0
.end method

.method public onLoaded(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->loaded:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    instance-of v2, v1, Lorg/telegram/ui/Components/Bulletin$LoadingLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Components/Bulletin$LoadingLayout;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/Bulletin$LoadingLayout;->onTextLoaded(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    return-void
.end method

.method public setCanHide(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin;->loaded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->canHide:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin;->canHide:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/Bulletin;->duration:I

    if-ltz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->hideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setDuration(I)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Bulletin;->duration:I

    return-object p0
.end method

.method public setImageScale(F)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    instance-of v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p0
.end method

.method public setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->onHideListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setTag(I)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Bulletin;->tag:I

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public show(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->showing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->showing:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$Layout;->setTop(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_1
    sput-object p0, Lorg/telegram/ui/Components/Bulletin;->visibleBulletin:Lorg/telegram/ui/Components/Bulletin;

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Bulletin$Layout;->onAttach(Lorg/telegram/ui/Components/Bulletin;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Bulletin$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Bulletin;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    new-instance v1, Lorg/telegram/ui/Components/Bulletin$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Bulletin$2;-><init>(Lorg/telegram/ui/Components/Bulletin;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Bulletin$3;-><init>(Lorg/telegram/ui/Components/Bulletin;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin;->containerLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->parentLayout:Lorg/telegram/ui/Components/Bulletin$ParentLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Layout has incorrect parent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object p0
.end method

.method public skipShowAnimation()Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Bulletin;->skipShowAnimation:Z

    return-object p0
.end method

.method public updatePosition()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin;->layout:Lorg/telegram/ui/Components/Bulletin$Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$Layout;->updatePosition()V

    :cond_0
    return-void
.end method
