.class Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorLayoutChangeListener"
.end annotation


# instance fields
.field private ignoreNextLayout:Z

.field private orientation:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;Landroid/view/View;F)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$200(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)F

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$102(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$100(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$100(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->ignoreNextLayout:Z

    return p1
.end method

.method private checkOrientation()V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->orientation:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->orientation:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->ignoreNextLayout:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->checkOrientation()V

    if-eqz p7, :cond_2

    if-eq p7, p3, :cond_2

    iget-boolean p2, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->ignoreNextLayout:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$100(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$200(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$100(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {p4}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$200(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)F

    move-result p4

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    sub-int/2addr p7, p3

    int-to-float p2, p7

    iget-object p3, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {p3}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$200(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->this$0:Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    invoke-static {p1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->access$100(Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator$AnimatorLayoutChangeListener;->ignoreNextLayout:Z

    return-void
.end method
