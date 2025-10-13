.class Lorg/telegram/ui/Components/voip/EndCloseLayout$1;
.super Landroid/transition/ChangeBounds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/EndCloseLayout;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/EndCloseLayout;


# direct methods
.method public static synthetic $r8$lambda$KdGplViGpMaBlpb-eQcu0bTu2bI(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;->lambda$createAnimator$1(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fL8P-kfDDJIPoji2n8wm-VaQaIE(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;->lambda$createAnimator$0(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$li6egKfxlc9lvjSJeyv9gLNLn_M(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;->lambda$createAnimator$2(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sN9V0M9aH9SL7nVG3j5G5TJr0vA(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;->lambda$createAnimator$3(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/voip/EndCloseLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$1;->this$0:Lorg/telegram/ui/Components/voip/EndCloseLayout;

    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    return-void
.end method

.method private static synthetic lambda$createAnimator$0(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->backColor:I

    return-void
.end method

.method private static synthetic lambda$createAnimator$1(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->round:I

    return-void
.end method

.method private static synthetic lambda$createAnimator$2(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->callDeclineAlpha:I

    return-void
.end method

.method private static synthetic lambda$createAnimator$3(Landroid/transition/TransitionValues;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->closeTextAlpha:I

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureEndValues(Landroid/transition/TransitionValues;)V

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    iget v1, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->backColor:I

    iget v2, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->round:I

    iget v3, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->callDeclineAlpha:I

    iget v0, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->closeTextAlpha:I

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "back_color_end_close"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "round_end_close"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "decline_call_alpha_end_close"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "close_text_alpha_end_close"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/transition/ChangeBounds;->captureStartValues(Landroid/transition/TransitionValues;)V

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    iget v1, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->backColor:I

    iget v2, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->round:I

    iget v3, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->callDeclineAlpha:I

    iget v0, v0, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;->closeTextAlpha:I

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "back_color_end_close"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "round_end_close"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "decline_call_alpha_end_close"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "close_text_alpha_end_close"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Components/voip/EndCloseLayout$EndCloseView;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-super/range {p0 .. p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_0

    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v5, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "back_color_end_close"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v7, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "round_end_close"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v9, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "decline_call_alpha_end_close"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v11, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v12, "close_text_alpha_end_close"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v12, Landroid/animation/ValueAnimator;

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v5, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda0;-><init>(Landroid/transition/TransitionValues;)V

    invoke-virtual {v12, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [Landroid/animation/Animator;

    aput-object v12, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda1;-><init>(Landroid/transition/TransitionValues;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v5, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    filled-new-array/range {v12 .. v18}, [I

    move-result-object v5

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda2;-><init>(Landroid/transition/TransitionValues;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v5, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v5, v5, v6

    float-to-int v14, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    float-to-int v15, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v16, v5

    filled-new-array/range {v12 .. v17}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$$ExternalSyntheticLambda3;-><init>(Landroid/transition/TransitionValues;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/voip/EndCloseLayout$1$1;-><init>(Lorg/telegram/ui/Components/voip/EndCloseLayout$1;Landroid/transition/TransitionValues;)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    :cond_1
    move-object/from16 v2, p0

    invoke-super/range {p0 .. p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
