.class public final Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;
    }
.end annotation


# instance fields
.field private final animatorLayoutChangeListener:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;

.field private floatingButtonAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private floatingButtonView:Landroid/view/View;

.field private offsetY:F


# direct methods
.method private constructor <init>(Landroid/view/View;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;-><init>(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;Landroid/view/View;F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->animatorLayoutChangeListener:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->offsetY:F

    return p0
.end method

.method public static attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;
    .locals 1

    .line 0
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;F)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static attach(Landroid/view/View;F)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;-><init>(Landroid/view/View;F)V

    return-object v0
.end method


# virtual methods
.method public addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public getOffsetY()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->offsetY:F

    return v0
.end method

.method public ignoreNextLayout()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->animatorLayoutChangeListener:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->access$002(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;Z)Z

    return-void
.end method

.method public setOffsetY(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->offsetY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->floatingButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method
