.class public Lorg/telegram/ui/Components/ScrimOptions;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private final containerView:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field private dismissing:Z

.field private final insets:Landroid/graphics/Rect;

.field private isGroup:Z

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private options:Lorg/telegram/ui/Components/ItemOptions;

.field private optionsContainer:Landroid/widget/FrameLayout;

.field private optionsView:Landroid/view/View;

.field public final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrimCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private scrimDrawable:Landroid/graphics/drawable/Drawable;

.field private scrimDrawableSh:F

.field private scrimDrawableSw:F

.field private scrimDrawableTx1:F

.field private scrimDrawableTx2:F

.field private scrimDrawableTy1:F

.field private scrimDrawableTy2:F

.field private final windowView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-6MkXxIYJUu4hMIegmVvwNJvY-M(Lorg/telegram/ui/Components/ScrimOptions;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$animateOpenTo$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$85xl3Uu-tssfg4kRfQYylWC9mw4(Lorg/telegram/ui/Components/ScrimOptions;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$prepareBlur$6(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8V3yZuc7FCgSPXDzxeQbV-1JQ6U(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismissFast$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$EUrfAQhgJuoNSa_LQDHFcspfYIQ(Lorg/telegram/ui/Components/ScrimOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7N1481R49ncTE6qUA5_XsLMs_I(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismiss$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$OrX9uPvCAwBtetGw_t84zEdDhHk(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismissFast$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Qwwuzmrq2q7ZjciBQ5G6nUwzM0s(Lorg/telegram/ui/Components/ScrimOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrimOptions;->lambda$dismiss$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->currentAccount:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->insets:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSw:F

    iput v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSh:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p2, Lorg/telegram/ui/Components/ScrimOptions$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ScrimOptions$1;-><init>(Lorg/telegram/ui/Components/ScrimOptions;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 p1, -0x1

    const/16 v0, 0x77

    invoke-static {p1, p1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance p1, Lorg/telegram/ui/Components/ScrimOptions$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ScrimOptions$2;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ScrimOptions;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSw:F

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSh:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/BitmapShader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx1:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ScrimOptions;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy1:F

    return p0
.end method

.method private animateOpenTo(ZFLjava/lang/Runnable;)V
    .locals 3

    .line 0
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$3;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/Components/ScrimOptions$3;-><init>(Lorg/telegram/ui/Components/ScrimOptions;ZLjava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateOpenTo(ZLjava/lang/Runnable;)V
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZFLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$animateOpenTo$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->openProgress:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dismiss$1()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismiss$2()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$dismissFast$3()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$dismissFast$4()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$prepareBlur$6(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0x435c28f6    # -0.02f

    goto :goto_1

    :cond_2
    const p2, -0x4270a3d7    # -0.07f

    :goto_1
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ScrimOptions;Landroid/view/View;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dismissFast()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    new-instance v0, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ScrimOptions;)V

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZFLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->dismissing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public layout()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    add-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    add-float/2addr v3, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x1

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40c00000    # 6.0f

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v6, v12

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget-object v12, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v6, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    sub-float/2addr v2, v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float v2, v4, v2

    :goto_1
    iput v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx1:F

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy1:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->options:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v0, v1, v8}, Lorg/telegram/ui/Components/ItemOptions;->setSwipebackGravity(ZZ)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v2, 0x20000

    or-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const v3, -0x73fcff00

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x480

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    const/4 v3, 0x1

    if-lt v2, v1, :cond_1

    invoke-static {v0, v3}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->windowView:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    return-void
.end method

.method public setItemOptions(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->options:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsView:Landroid/view/View;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions;->containerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions;->optionsContainer:Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setScrim(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)V
    .locals 30

    move-object/from16 v11, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput-object v4, v11, Lorg/telegram/ui/Components/ScrimOptions;->scrimCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v11, Lorg/telegram/ui/Components/ScrimOptions;->isGroup:Z

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCaptionLayout()Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-nez v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTextY()I

    move-result v5

    int-to-float v5, v5

    iget v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionYOffsetForDrawables:F

    add-float/2addr v5, v6

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    iget v7, v1, Lorg/telegram/messenger/MessageObject;->textXOffset:F

    :cond_3
    const-class v8, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_a

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v15, v10, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v15, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spanned;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v3, v13, v14, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/CharacterStyle;

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_3
    array-length v12, v3

    if-ge v14, v12, :cond_9

    aget-object v12, v3, v14

    if-ne v12, v0, :cond_8

    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v15}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->isRtl()Z

    move-result v12

    if-eqz v12, :cond_7

    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v7, v13

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    int-to-float v7, v7

    add-float/2addr v2, v7

    iget v7, v10, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v7, v7

    iget-object v13, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {v10, v6, v13}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;)F

    move-result v6

    add-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v6, v10, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->originalWidth:I

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x0

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionlayout()Landroid/text/StaticLayout;

    move-result-object v7

    const/4 v10, 0x0

    :goto_7
    if-nez v10, :cond_10

    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    instance-of v13, v13, Landroid/text/Spanned;

    if-nez v13, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Spanned;

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v12, 0x0

    invoke-interface {v13, v12, v14, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/CharacterStyle;

    if-nez v13, :cond_d

    goto :goto_9

    :cond_d
    const/4 v14, 0x0

    :goto_8
    array-length v12, v13

    if-ge v14, v12, :cond_f

    aget-object v12, v13, v14

    if-ne v12, v0, :cond_e

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v7}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionLayoutX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDescriptionLayoutY()F

    move-result v6

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v9

    move-object v15, v7

    move/from16 v29, v3

    move v3, v2

    move v2, v5

    move v5, v6

    move v6, v9

    move/from16 v9, v29

    goto :goto_9

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_10
    if-nez v15, :cond_18

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isTodo()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtons()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_18

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_17

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    iget-object v14, v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->title:Landroid/text/StaticLayout;

    if-nez v14, :cond_12

    :goto_b
    move/from16 v20, v2

    move/from16 v19, v3

    goto :goto_d

    :cond_12
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    instance-of v12, v12, Landroid/text/Spanned;

    if-nez v12, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spanned;

    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    move/from16 v20, v2

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-interface {v12, v3, v2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    :goto_c
    array-length v12, v2

    if-ge v3, v12, :cond_16

    aget-object v12, v2, v3

    if-ne v12, v0, :cond_15

    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v14}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    iget v5, v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->titleX:F

    iget v6, v13, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->titleY:F

    invoke-virtual {v14}, Landroid/text/Layout;->getWidth()I

    move-result v9

    move-object v15, v14

    move/from16 v29, v3

    move v3, v2

    move v2, v5

    move v5, v6

    move v6, v9

    move/from16 v9, v29

    goto :goto_e

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    move/from16 v3, v19

    move/from16 v2, v20

    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_17
    move/from16 v20, v2

    move/from16 v19, v3

    move/from16 v21, v6

    move/from16 v12, v19

    goto :goto_f

    :cond_18
    move v12, v3

    move/from16 v21, v6

    :goto_f
    if-nez v15, :cond_19

    return-void

    :cond_19
    if-eqz p3, :cond_1b

    invoke-virtual {v15, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    invoke-virtual {v15, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    new-instance v5, Lorg/telegram/ui/Components/LinkPath;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    const/4 v7, 0x0

    invoke-virtual {v5, v15, v12, v7}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    invoke-virtual {v15, v12, v9, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v5, v12, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v15}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v15}, Landroid/text/Layout;->getWidth()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v5, p3

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v15

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v15}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    if-ge v6, v8, :cond_1a

    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1a
    sub-float/2addr v7, v5

    const/4 v5, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v2, v0

    move v13, v2

    move v14, v3

    move-object v0, v15

    move-object v15, v12

    const/4 v12, 0x0

    goto :goto_11

    :cond_1b
    move v13, v2

    move v14, v5

    move-object v0, v15

    const/4 v15, 0x0

    :goto_11
    new-instance v10, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_12

    :cond_1c
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_12
    iget-object v3, v11, Lorg/telegram/ui/Components/ScrimOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/CornerPathEffect;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CornerPath;->setUseCornerPathImplementation(Z)V

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v12, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    invoke-virtual {v0, v12, v9, v2}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1e

    if-lez v5, :cond_1e

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/16 v18, 0x0

    cmpl-float v6, v6, v18

    if-lez v6, :cond_1d

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v3

    new-instance v3, Landroid/graphics/Paint;

    move-object/from16 v28, v15

    const/4 v15, 0x1

    invoke-direct {v3, v15}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v26

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v22, v6

    move/from16 v25, v5

    move-object/from16 v27, v3

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/CornerPathEffect;

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v5, v15}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v5, v8, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v15, v8, Landroid/graphics/RectF;->top:F

    neg-float v15, v15

    invoke-virtual {v6, v5, v15}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v6, v16

    goto :goto_14

    :cond_1d
    move-object/from16 v28, v15

    goto :goto_13

    :cond_1e
    move-object/from16 v28, v15

    const/16 v18, 0x0

    :goto_13
    const/4 v6, 0x0

    :goto_14
    new-instance v15, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v15, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setupTextColors()V

    new-instance v3, Landroid/text/TextPaint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget v5, v5, Landroid/text/TextPaint;->linkColor:I

    iput v5, v3, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->isLinearText()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setLinearText(Z)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v5, v7, :cond_1f

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/TextPaint;)F

    move-result v7

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/TextPaint;F)V

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticApiModelOutline12;->m(Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/TextPaint;)Z

    move-result v7

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/TextPaint;Z)V

    :cond_1f
    const/16 v7, 0x1a

    if-lt v5, v7, :cond_20

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/TextPaint;Ljava/lang/String;)Z

    :cond_20
    const/16 v7, 0x1d

    if-lt v5, v7, :cond_21

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/TextPaint;)I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/ScrimOptions$$ExternalSyntheticApiModelOutline5;->m(Landroid/text/TextPaint;I)V

    :cond_21
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    const/4 v11, -0x1

    invoke-static {v0, v11, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpans(Ljava/lang/CharSequence;ILandroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x21

    if-lez v12, :cond_22

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5, v7, v11, v12, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15

    :cond_22
    const/4 v11, 0x0

    :goto_15
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v9, v7, :cond_23

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v5, v7, v9, v11, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_23
    iget v0, v1, Lorg/telegram/messenger/MessageObject;->totalAnimatedEmojiCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_24

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v23, -0x40800000    # -1.0f

    goto :goto_16

    :cond_24
    const/16 v23, 0x0

    :goto_16
    const/16 v24, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v19, v5

    move-object/from16 v20, v3

    invoke-static/range {v19 .. v24}, Lorg/telegram/messenger/MessageObject;->makeStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v11

    const/4 v0, 0x2

    new-array v9, v0, [I

    invoke-virtual {v4, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v1, v9, v0

    float-to-int v0, v13

    add-int/2addr v1, v0

    const/4 v0, 0x1

    aget v3, v9, v0

    float-to-int v0, v14

    add-int/2addr v3, v0

    filled-new-array {v1, v3}, [I

    move-result-object v3

    new-instance v7, Lorg/telegram/ui/Components/ScrimOptions$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object v5, v9

    move-object v12, v7

    move-object v7, v8

    move/from16 v16, v14

    move-object v14, v8

    move-object v8, v15

    move-object v15, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/ScrimOptions$4;-><init>(Lorg/telegram/ui/Components/ScrimOptions;Lorg/telegram/ui/Components/LinkPath;[ILorg/telegram/ui/Cells/ChatMessageCell;[ILandroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/text/StaticLayout;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget v1, v15, v1

    int-to-float v1, v1

    add-float/2addr v1, v13

    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v15, v2

    int-to-float v2, v2

    add-float v2, v2, v16

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v1

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p3, :cond_27

    int-to-float v1, v1

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v3, v1

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    iget v3, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v1, v4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sub-float/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTx2:F

    :cond_25
    int-to-float v1, v2

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v2, v1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_26

    iget v2, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v1, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableTy2:F

    :cond_26
    if-eqz v28, :cond_27

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSw:F

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ScrimOptions;->scrimDrawableSh:F

    :cond_27
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ScrimOptions;->prepareBlur(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZLjava/lang/Runnable;)V

    return-void
.end method
