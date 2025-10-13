.class public Lorg/telegram/ui/Components/Premium/PremiumButtonView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Loadable;


# instance fields
.field public buttonLayout:Landroid/widget/FrameLayout;

.field public buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

.field counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

.field counterView:Lorg/telegram/ui/Components/CounterView;

.field public drawGradient:Z

.field private drawOverlayColor:Z

.field flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field iconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private inc:Z

.field private isButtonTextSet:Z

.field private isFlickerDisabled:Z

.field private loading:Z

.field private loadingAnimator:Landroid/animation/ValueAnimator;

.field private loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field private loadingT:F

.field overlayAnimator:Landroid/animation/ValueAnimator;

.field private overlayProgress:F

.field public overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private paintOverlayPaint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private progress:F

.field private radius:I

.field private showOverlay:Z


# direct methods
.method public static synthetic $r8$lambda$MyHMbP_TnK0zalz814PRP5AOafY(Lorg/telegram/ui/Components/Premium/PremiumButtonView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->lambda$setLoading$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zR-kv0O1Cyq7obwNcXr8cmU0hCk(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->lambda$setIcon$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    .line 0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    iput-boolean v10, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawGradient:Z

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    iput v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingT:F

    iput v8, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/4 v11, 0x0

    iput-boolean v11, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Lorg/telegram/ui/Components/Premium/PremiumButtonView$1;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;Landroid/content/Context;ZZZ)V

    iput-object v13, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v19, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x15e

    const v14, 0x3eb33333    # 0.35f

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v13, 0x11

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v14, -0x1

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v15, 0x41600000    # 14.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    invoke-static {v1, v1, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0x78

    invoke-static {v14, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v8, v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0x10

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x18

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x4

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumButtonView$2;

    const/4 v4, 0x1

    const/4 v12, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v7, 0x78

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;Landroid/content/Context;ZZZ)V

    iput-object v8, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v8, v1, v11, v0, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAllowCancel(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v14, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingT:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Premium/PremiumButtonView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingT:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)Lorg/telegram/ui/Components/CircularProgressDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Premium/PremiumButtonView;Lorg/telegram/ui/Components/CircularProgressDrawable;)Lorg/telegram/ui/Components/CircularProgressDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Premium/PremiumButtonView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    return p0
.end method

.method private synthetic lambda$setIcon$1()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$setLoading$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingT:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateOverlay(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    return-void

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    if-eqz v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateOverlayProgress()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    sub-float v2, v4, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/4 v2, 0x0

    const/4 v3, 0x4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public checkCounterView()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CounterView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;->setColors(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/16 v1, 0x18

    const/16 v2, 0x10

    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public clearOverlayText()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v0, v0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3f59999a    # 0.85f

    mul-float v0, v0, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v3

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    if-nez v4, :cond_6

    :cond_2
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    const v6, 0x3c83126f    # 0.016f

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    add-float/2addr v4, v6

    iput v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    goto :goto_2

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    sub-float/2addr v1, v6

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawGradient:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const v4, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v4

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    mul-float v11, v1, v4

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v4

    :goto_3
    invoke-virtual {p1, v0, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isFlickerDisabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v1, p1, v0, v4, v6}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3fb33333    # 1.4f

    mul-float v3, v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    mul-float v3, v3, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_9
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public hideIcon()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setOnRestartCallback(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loading:Z

    return v0
.end method

.method public isShowOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isButtonTextSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isButtonTextSet:Z

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setFlickerDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isFlickerDisabled:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x18

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setOnRestartCallback(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loading:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingT:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loading:Z

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

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setOverlayText(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V

    return-void
.end method
