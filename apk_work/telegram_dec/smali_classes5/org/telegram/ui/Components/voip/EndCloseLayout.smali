.class public Lorg/telegram/ui/Components/voip/EndCloseLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;
    }
.end annotation


# instance fields
.field private final endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

.field private isClosedState:Z

.field private final transitionSet:Landroid/transition/TransitionSet;


# direct methods
.method public static synthetic $r8$lambda$yRV0ZJuIwjCQN0BM5a6Yqx6aVcg(Lorg/telegram/ui/Components/voip/EndCloseLayout;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout;->lambda$switchToClose$0(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->isClosedState:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    const/16 p1, 0x34

    const/4 v2, 0x5

    invoke-static {p1, p1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/transition/TransitionSet;

    invoke-direct {p1}, Landroid/transition/TransitionSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->transitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    new-instance v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;-><init>(Lorg/telegram/ui/Components/voip/EndCloseLayout;)V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    return-void
.end method

.method private synthetic lambda$switchToClose$0(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getEndCloseView()Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    return-object v0
.end method

.method public switchToClose(Landroid/view/View$OnClickListener;Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->isClosedState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->isClosedState:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->transitionSet:Landroid/transition/TransitionSet;

    invoke-static {p0, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    const/16 v0, 0xff

    iput v0, p2, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->closeTextAlpha:I

    const/4 v0, -0x1

    iput v0, p2, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->backColor:I

    const/4 v1, 0x0

    iput v1, p2, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->callDeclineAlpha:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p2, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->round:I

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout;->endCloseView:Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/voip/EndCloseLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/EndCloseLayout;Landroid/view/View$OnClickListener;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
