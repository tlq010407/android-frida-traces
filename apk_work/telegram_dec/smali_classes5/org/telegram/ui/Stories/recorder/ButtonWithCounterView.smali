.class public Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Loadable;


# instance fields
.field private countAlpha:F

.field private final countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field private countFilled:Z

.field private countScale:F

.field private final countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private counterDrawable:Landroid/graphics/drawable/Drawable;

.field private enabled:Z

.field private enabledAnimator:Landroid/animation/ValueAnimator;

.field private enabledT:F

.field private final filled:Z

.field private flickeringLoading:Z

.field private flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private globalAlpha:I

.field private lastCount:I

.field private loading:Z

.field private loadingAnimator:Landroid/animation/ValueAnimator;

.field private loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field private loadingT:F

.field private minWidth:I

.field private final paint:Landroid/graphics/Paint;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final rippleView:Landroid/view/View;

.field private showZero:Z

.field public final subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final subTextAlpha:I

.field private subTextT:F

.field private subTextVisible:Z

.field private subTextVisibleAnimator:Landroid/animation/ValueAnimator;

.field public final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private tick:Ljava/lang/Runnable;

.field private timerSeconds:I

.field private withCounterIcon:Z

.field public wrapContentDynamic:Z

.field private wrapWidth:Z


# direct methods
.method public static synthetic $r8$lambda$MS9J757RkQKiX4uSaqm0klUbeNQ(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setTimer$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$doRsinmIf4Do6KPrAd3Nr3xw0Zc(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setEnabled$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gtZ1_cao5d-YLT3r28lqOPplaIM(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setSubText$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mn_nGvut4lceCfu_MnnTi8fV6vI(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$animateCount$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-ynekNmEGsmy05tO9wSGvngw8w(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setLoading$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8XVyzKXBhnantO7e32dW54gf_Q(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setSubText$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x15e

    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    const/16 v1, 0xff

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    const/16 v1, 0xc8

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextAlpha:I

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v1, 0x3ca3d70a    # 0.02f

    const v2, 0x3f99999a    # 1.2f

    invoke-static {p0, v1, v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    const/4 p1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v0, v0, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    const v2, 0x3e99999a    # 0.3f

    move-object v1, p1

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 p3, 0x41600000    # 14.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextSplitToWords()Z

    move-result p2

    invoke-direct {p1, p2, v0, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    const v2, 0x3e99999a    # 0.3f

    move-object v1, p1

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v9, v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    invoke-virtual {p0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    return p1
.end method

.method private animateCount()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cleanSubTextVisibleAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateCount$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setEnabled$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setLoading$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSubText$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSubText$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setTimer$0(Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateCounterWidth(FF)F
    .locals 0

    mul-float p1, p1, p2

    return p1
.end method

.method public disableRippleView()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    return v0
.end method

.method public isTimerActive()Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoading:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v7, 0x3ca3d70a    # 0.02f

    const/4 v8, -0x1

    invoke-static {v8, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    const/high16 v9, 0x3ec00000    # 0.375f

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v2, v4, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    :cond_2
    :goto_0
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    if-nez v2, :cond_3

    new-instance v2, Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v8

    invoke-direct {v2, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    :cond_3
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v2, v7, v2

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float v2, v2, v8

    float-to-int v2, v2

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8, v4, v2, v9, v10}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    cmpg-float v8, v2, v7

    if-gez v8, :cond_12

    const v8, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v9, -0x3e400000    # -24.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v2, v2, v9

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float v2, v2, v8

    sub-float v2, v7, v2

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlpha:F

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v11, :cond_6

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    add-float v12, v9, v11

    const v13, 0x417a8f5c    # 15.66f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v0, v13, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->calculateCounterWidth(FF)F

    move-result v13

    add-float/2addr v12, v13

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v6

    float-to-int v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v5

    sub-float/2addr v15, v5

    div-float/2addr v15, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    float-to-int v5, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v15, v8

    div-float/2addr v15, v6

    add-float/2addr v15, v9

    float-to-int v8, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v3

    add-float/2addr v15, v3

    div-float/2addr v15, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v15, v3

    float-to-int v3, v15

    invoke-virtual {v13, v14, v5, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v13, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v5, v5

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v8, v7, v8

    mul-float v5, v5, v8

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v14, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    mul-float v5, v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v8

    sub-float/2addr v5, v8

    div-float/2addr v5, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v8, v15

    div-float/2addr v8, v6

    add-float/2addr v8, v12

    float-to-int v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v14

    add-float/2addr v15, v14

    div-float/2addr v15, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v15, v14

    float-to-int v14, v15

    invoke-virtual {v13, v3, v5, v8, v14}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v13, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v5, v7, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v1, v3, v3, v5, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v5, v7, v5

    const/high16 v8, 0x43480000    # 200.0f

    mul-float v5, v5, v8

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    mul-float v5, v5, v8

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v14, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    mul-float v5, v5, v8

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v12

    div-float/2addr v3, v6

    add-float/2addr v3, v9

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v5, :cond_8

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_3

    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v5, v14

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v12

    div-float/2addr v14, v6

    add-float/2addr v14, v9

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x5

    goto :goto_4

    :cond_9
    const/4 v9, 0x2

    :goto_4
    add-int/lit8 v9, v9, 0x8

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    const/high16 v9, 0x41100000    # 9.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v12

    add-float/2addr v12, v11

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v14, v9

    float-to-int v9, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v12, v8

    int-to-float v8, v12

    div-float/2addr v8, v6

    float-to-int v8, v8

    invoke-virtual {v13, v3, v5, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v5, v5, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_a
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v5, :cond_c

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v9, v7, v9

    mul-float v8, v8, v9

    mul-float v8, v8, v10

    mul-float v8, v8, v10

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-static {v12, v7, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v5, :cond_b

    const/high16 v5, 0x40800000    # 4.0f

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_6

    :cond_b
    const/high16 v5, 0x41200000    # 10.0f

    goto :goto_5

    :goto_6
    int-to-float v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_c
    const/high16 v12, 0x3f000000    # 0.5f

    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :cond_d
    const/4 v3, 0x1

    if-le v4, v3, :cond_e

    const v3, 0x3e99999a    # 0.3f

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v5, v7, v5

    mul-float v4, v4, v5

    mul-float v4, v4, v10

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v5, :cond_f

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_f
    const/high16 v14, 0x3f000000    # 0.5f

    :goto_9
    mul-float v4, v4, v14

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v5, v7, v5

    mul-float v4, v4, v5

    mul-float v4, v4, v10

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v8, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v9, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iget v10, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3, v4, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-float/2addr v11, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->wrapWidth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->minWidth:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->animateCount()V

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-nez p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->showZero:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlpha:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    int-to-long v1, p1

    const/16 p1, 0x20

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCountFilled(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41600000    # 14.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method

.method public setCounterColor(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setFlickeringLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoading:Z

    return-void
.end method

.method public setGlobalAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoading:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->wrapWidth:Z

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->minWidth:I

    return-void
.end method

.method public setShowZero(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->showZero:Z

    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;Z)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    const-wide/16 v5, 0xc8

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->cleanSubTextVisibleAnimator()V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    new-array p2, v0, [F

    aput p1, p2, v1

    const/4 p1, 0x0

    aput p1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    if-nez p1, :cond_3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->cleanSubTextVisibleAnimator()V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    new-array p2, v0, [F

    aput p1, p2, v1

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTimer(ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCountFilled(Z)V

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected subTextSplitToWords()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateColors()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_1
    invoke-static {v2, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    goto :goto_3

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method

.method public updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->flickeringLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public withCounterIcon()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_boost_button:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public wrapContentDynamic()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->wrapContentDynamic:Z

    return-void
.end method
