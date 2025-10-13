.class public Lorg/telegram/ui/Components/voip/RateCallLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;,
        Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;,
        Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;
    }
.end annotation


# instance fields
.field private final backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

.field private onRateSelected:Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;

.field private final rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

.field private final starsContainer:Landroid/widget/FrameLayout;

.field private final startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;


# direct methods
.method public static synthetic $r8$lambda$VKs0wbyGt6zcAgetbnEmaAEVPzY(Lorg/telegram/ui/Components/voip/RateCallLayout;Landroid/content/Context;FFI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/RateCallLayout;->lambda$new$3(Landroid/content/Context;FFI)V

    return-void
.end method

.method public static synthetic $r8$lambda$oqEl9AXQEfMLyiMz4UXlYgzeBXY(Lorg/telegram/ui/Components/voip/RateCallLayout;Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/RateCallLayout;->lambda$new$2(Lorg/telegram/ui/Components/RLottieImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uxCaTEsC4cYd5_krYu0GQdsYVAw(Lorg/telegram/ui/Components/voip/RateCallLayout;)[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/RateCallLayout;->lambda$new$0()[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vvHiLPwulhZrhSAGYqys67S-kK8(Lorg/telegram/ui/Components/voip/RateCallLayout;Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/RateCallLayout;->lambda$new$1(Lorg/telegram/ui/Components/RLottieImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->backgroundProvider:Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v2, Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->starsContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    new-instance v2, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;-><init>(Landroid/content/Context;)V

    aput-object v2, p2, v1

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object p2, p2, v1

    new-instance v2, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/RateCallLayout;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->setAllStarsProvider(Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object p2, p2, v1

    new-instance v2, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/RateCallLayout;Landroid/content/Context;)V

    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->setOnSelectedStar(Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->starsContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x29

    int-to-float v7, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x12c

    const/high16 v1, 0x43180000    # 152.0f

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->starsContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0xc9

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0()[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    return-object v0
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/RateCallLayout;Lorg/telegram/ui/Components/RLottieImageView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/Context;FFI)V
    .locals 6

    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x43050000    # 133.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/messenger/R$raw;->rate:I

    const/16 v3, 0x85

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-static {v3, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p1, v4

    sub-float/2addr p2, p1

    int-to-float p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p2, v2

    sub-float/2addr p3, p2

    sub-float/2addr p3, p1

    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/voip/RateCallLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/RateCallLayout;Lorg/telegram/ui/Components/RLottieImageView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout;->onRateSelected:Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;

    if-eqz p1, :cond_1

    invoke-interface {p1, p4}, Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;->onRateSelected(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public show(Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->onRateSelected:Lorg/telegram/ui/Components/voip/RateCallLayout$OnRateSelected;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->starsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_1

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v6, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->rateCallContainer:Lorg/telegram/ui/Components/voip/RateCallLayout$RateCallContainer;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    new-array v11, v6, [F

    aput v10, v11, v2

    const/4 v10, 0x1

    aput v5, v11, v10

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x4

    new-array v11, v9, [Landroid/animation/Animator;

    aput-object v3, v11, v2

    aput-object v4, v11, v10

    aput-object v7, v11, v6

    const/4 v3, 0x3

    aput-object v8, v11, v3

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0xfa

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    :goto_0
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    array-length v11, v11

    if-ge v4, v11, :cond_0

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object v12, v12, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object v12, v12, v4

    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v14, v6, [F

    fill-array-data v14, :array_3

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object v13, v13, v4

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v15, v6, [F

    fill-array-data v15, :array_4

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object v14, v14, v4

    sget-object v15, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v6, [F

    fill-array-data v7, :array_5

    invoke-static {v14, v15, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Components/voip/RateCallLayout;->startsViews:[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    aget-object v8, v8, v4

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v15, 0x41f00000    # 30.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    new-array v3, v6, [F

    aput v15, v3, v2

    aput v5, v3, v10

    invoke-static {v8, v14, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v8, v9, [Landroid/animation/Animator;

    aput-object v12, v8, v2

    aput-object v13, v8, v10

    aput-object v7, v8, v6

    const/4 v7, 0x3

    aput-object v3, v8, v7

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    int-to-long v14, v4

    const-wide/16 v16, 0x10

    mul-long v14, v14, v16

    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    add-int/2addr v4, v10

    move-wide v7, v12

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
