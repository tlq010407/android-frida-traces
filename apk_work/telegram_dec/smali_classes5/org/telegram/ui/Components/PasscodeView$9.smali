.class Lorg/telegram/ui/Components/PasscodeView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;

.field final synthetic val$onShow:Ljava/lang/Runnable;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method public static synthetic $r8$lambda$_NbAib0NkyzfFz1PIwilEJyKkoQ(Lorg/telegram/ui/Components/PasscodeView$9;DLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/PasscodeView$9;->lambda$onGlobalLayout$1(DLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$toWN5b4EL0NI5wepuMSu6ZsPiD0(Lorg/telegram/ui/Components/PasscodeView$9;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PasscodeView$9;->lambda$onGlobalLayout$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vqfH-CGUP_1YQr8FSjoTpBXL7KQ(Lorg/telegram/ui/Components/PasscodeView$9;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView$9;->lambda$onGlobalLayout$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;IILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iput p2, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    iput p3, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    iput-object p4, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$onShow:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onGlobalLayout$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$onGlobalLayout$1(DLandroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2200(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v3, v1, p1

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2300(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onGlobalLayout$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PasscodeView;->access$2502(Lorg/telegram/ui/Components/PasscodeView;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PasscodeView;->onAnimationUpdate(F)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    const/16 v6, 0x25

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/PasscodeView;->access$1700(Lorg/telegram/ui/Components/PasscodeView;Z)V

    new-instance v3, Lorg/telegram/ui/Components/PasscodeView$9$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PasscodeView$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PasscodeView$9;)V

    const-wide/16 v7, 0x15e

    invoke-static {v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_0

    sget v14, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    add-int/2addr v10, v14

    if-lt v12, v13, :cond_8

    iget v7, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    sub-int v7, v11, v7

    mul-int v7, v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    sub-int v8, v10, v8

    mul-int v8, v8, v8

    add-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v12, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    mul-int v12, v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    sub-int/2addr v10, v13

    mul-int v10, v10, v10

    add-int/2addr v12, v10

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    iget v10, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    mul-int v10, v10, v10

    iget v14, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    mul-int v14, v14, v14

    add-int/2addr v10, v14

    int-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    iget v10, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    sub-int v10, v11, v10

    mul-int v10, v10, v10

    iget v1, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    mul-int v1, v1, v1

    add-int/2addr v10, v1

    move-object/from16 v16, v3

    int-to-double v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iget-object v7, v7, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const/4 v10, 0x0

    if-ge v8, v7, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iget-object v12, v12, Lorg/telegram/ui/Components/PasscodeView;->numbersFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x3f333333    # 0.7f

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v12, v10}, Landroid/view/View;->setAlpha(F)V

    new-instance v10, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;-><init>(Lorg/telegram/ui/Components/PasscodeView$1;)V

    iget-object v14, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v14}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)[I

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v14, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v14}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)[I

    move-result-object v14

    aget v14, v14, v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    const/4 v1, 0x2

    div-int/2addr v15, v1

    add-int/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v15}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)[I

    move-result-object v15

    aget v15, v15, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v15, v15, v17

    iget v1, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    sub-int/2addr v1, v14

    mul-int v1, v1, v1

    iget v14, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    sub-int/2addr v14, v15

    mul-int v14, v14, v14

    add-int/2addr v1, v14

    int-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v1, v14

    invoke-static {v10, v1}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2202(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;F)F

    const/4 v14, -0x1

    if-eq v8, v14, :cond_1

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v6, [F

    aput v4, v15, v5

    invoke-static {v12, v1, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v14, v6, [F

    aput v4, v14, v5

    invoke-static {v12, v1, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object v15, v4, v5

    aput-object v14, v4, v6

    invoke-virtual {v13, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v14, 0x8c

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v10, v4}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2302(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    invoke-static {v10}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2300(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v4

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v19, 0x3f666666    # 0.9f

    const/4 v1, -0x1

    if-ne v8, v1, :cond_2

    const v18, 0x3f666666    # 0.9f

    goto :goto_2

    :cond_2
    const v18, 0x3f19999a    # 0.6f

    :goto_2
    const v21, 0x3f851eb8    # 1.04f

    const/4 v15, 0x2

    if-ne v8, v1, :cond_3

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const v20, 0x3f851eb8    # 1.04f

    :goto_3
    new-array v1, v15, [F

    aput v18, v1, v5

    aput v20, v1, v6

    invoke-static {v12, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v6, -0x1

    if-ne v8, v6, :cond_4

    goto :goto_4

    :cond_4
    const v19, 0x3f19999a    # 0.6f

    :goto_4
    if-ne v8, v6, :cond_5

    const/high16 v21, 0x3f800000    # 1.0f

    :cond_5
    new-array v6, v15, [F

    aput v19, v6, v5

    const/16 v19, 0x1

    aput v21, v6, v19

    invoke-static {v12, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v15, [F

    fill-array-data v5, :array_0

    invoke-static {v12, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v12, 0x3

    new-array v14, v12, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    aput-object v6, v14, v19

    aput-object v5, v14, v15

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {v10}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2300(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$9$1;

    invoke-direct {v5, v0, v13}, Lorg/telegram/ui/Components/PasscodeView$9$1;-><init>(Lorg/telegram/ui/Components/PasscodeView$9;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v10}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2300(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v4

    const/4 v5, -0x1

    if-ne v8, v5, :cond_6

    const-wide/16 v5, 0xe8

    goto :goto_5

    :cond_6
    const-wide/16 v5, 0xc8

    :goto_5
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {v10}, Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;->access$2300(Lorg/telegram/ui/Components/PasscodeView$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v8, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PasscodeView;->access$2400(Lorg/telegram/ui/Components/PasscodeView;)Landroid/widget/FrameLayout;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/telegram/ui/Components/PasscodeView$9$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2, v3}, Lorg/telegram/ui/Components/PasscodeView$9$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PasscodeView$9;D)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v3, v16

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_6

    :cond_8
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PasscodeView;->access$2500(Lorg/telegram/ui/Components/PasscodeView;)F

    move-result v2

    const/4 v1, 0x2

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$9$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PasscodeView$9$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PasscodeView$9;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lorg/telegram/ui/Components/PasscodeView$9$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PasscodeView$9$2;-><init>(Lorg/telegram/ui/Components/PasscodeView$9;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x1a4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v2, Lorg/telegram/ui/Components/PasscodeView$9$3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PasscodeView$9$3;-><init>(Lorg/telegram/ui/Components/PasscodeView$9;)V

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v3, 0x14c

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    const/high16 v4, 0x41e80000    # 29.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v3, v1, :cond_a

    sget v3, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    if-nez v3, :cond_9

    int-to-float v3, v11

    div-float/2addr v3, v5

    goto :goto_7

    :cond_9
    int-to-float v3, v11

    :goto_7
    div-float/2addr v3, v5

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_8
    int-to-float v5, v5

    sub-float/2addr v3, v5

    goto :goto_9

    :cond_a
    int-to-float v3, v11

    div-float/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_8

    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v7, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$x:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v1, 0x2

    new-array v8, v1, [F

    const/4 v9, 0x0

    aput v7, v8, v9

    const/4 v7, 0x1

    aput v3, v8, v7

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v7, v0, Lorg/telegram/ui/Components/PasscodeView$9;->val$y:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PasscodeView;->access$2700(Lorg/telegram/ui/Components/PasscodeView;)I

    move-result v7

    int-to-float v7, v7

    const/4 v1, 0x2

    new-array v8, v1, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v4, 0x1

    aput v7, v8, v4

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v1, [F

    fill-array-data v8, :array_4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    aput-object v5, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
