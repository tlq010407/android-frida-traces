.class public Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Layout$Transition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin$Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTransition"
.end annotation


# instance fields
.field duration:J


# direct methods
.method public static synthetic $r8$lambda$-_dAL8EiYJhs_PJMBkDR1lgzuaI(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->lambda$animateEnter$0(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DQfGi1PDMuRxwJqkCozf3FiWw7c(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->lambda$animateExit$1(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xff

    iput-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->duration:J

    return-void
.end method

.method private static synthetic lambda$animateEnter$0(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$animateExit$1(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateEnter(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-static {p1, p5}, Lorg/telegram/ui/Components/Bulletin$Layout;->access$2200(Lorg/telegram/ui/Components/Bulletin$Layout;F)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-interface {p4, p5}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    sget-object p5, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y2:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p1, p5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    iget-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->duration:J

    invoke-virtual {p5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$1;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-virtual {p5, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    invoke-virtual {p5}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateExit(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V
    .locals 3

    sget-object p5, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y2:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {p1, p5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const-wide/16 v0, 0xaf

    invoke-virtual {p5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeInQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    if-eqz p4, :cond_2

    new-instance p2, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-virtual {p5, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    invoke-virtual {p5}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
