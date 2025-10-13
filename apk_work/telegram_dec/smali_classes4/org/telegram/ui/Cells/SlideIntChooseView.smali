.class public Lorg/telegram/ui/Cells/SlideIntChooseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SlideIntChooseView$Options;
    }
.end annotation


# instance fields
.field private final maxText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private maxTextEmojiSaturation:F

.field private maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

.field private final minText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private minValueAllowed:I

.field private options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final seekBarView:Lorg/telegram/ui/Components/SeekBarView;

.field private toMaxTextEmojiSaturation:F

.field private value:I

.field private final valueText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private whenChanged:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$R_XELlFNQ9crFlG0qb7MK7AtaJ4(Lorg/telegram/ui/Cells/SlideIntChooseView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->lambda$setMaxTextEmojiSaturation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x80000000

    iput v3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->minValueAllowed:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->toMaxTextEmojiSaturation:F

    iput-object v2, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v11, 0x1

    invoke-direct {v3, v1, v11, v11, v11}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->minText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xdc

    const v5, 0x3e99999a    # 0.3f

    move-object v4, v3

    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/16 v15, 0x13

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiCacheType(I)V

    const/4 v10, -0x1

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiColor(I)V

    const/high16 v21, 0x41b00000    # 22.0f

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, 0x41c80000    # 25.0f

    const/16 v18, 0x30

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v20, 0x41500000    # 13.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v11, v11}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->valueText:Lorg/telegram/ui/Components/AnimatedTextView;

    move-object v4, v3

    const/4 v11, -0x1

    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiColor(I)V

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiCacheType(I)V

    const/high16 v22, 0x41b00000    # 22.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, 0x41c80000    # 25.0f

    const/16 v19, 0x30

    const/high16 v20, 0x41b00000    # 22.0f

    const/high16 v21, 0x41500000    # 13.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    invoke-static {v14, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiColor(I)V

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiCacheType(I)V

    const/high16 v9, 0x41b00000    # 22.0f

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x41c80000    # 25.0f

    const/16 v6, 0x30

    const/high16 v7, 0x41b00000    # 22.0f

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Cells/SlideIntChooseView$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Cells/SlideIntChooseView$1;-><init>(Lorg/telegram/ui/Cells/SlideIntChooseView;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SlideIntChooseView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    new-instance v1, Lorg/telegram/ui/Cells/SlideIntChooseView$2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$2;-><init>(Lorg/telegram/ui/Cells/SlideIntChooseView;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x37

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->whenChanged:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/SlideIntChooseView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->minValueAllowed:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/SlideIntChooseView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->value:I

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Cells/SlideIntChooseView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->value:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/ui/Components/SeekBarView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/SlideIntChooseView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/SlideIntChooseView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Cells/SlideIntChooseView;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method public static cut([II)[I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    aget v4, p0, v1

    if-gt v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-ne v4, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    array-length v1, p0

    if-ne v3, v1, :cond_3

    return-object p0

    :cond_3
    new-array v1, v3, [I

    const/4 v3, 0x0

    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_5

    aget v4, p0, v0

    if-gt v4, p1, :cond_4

    add-int/lit8 v5, v3, 0x1

    aput v4, v1, v3

    move v3, v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    aput p1, v1, v3

    :cond_6
    return-object v1
.end method

.method private synthetic lambda$setMaxTextEmojiSaturation$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const p1, -0x41666666    # -0.3f

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private setMaxTextEmojiSaturation(FZ)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->toMaxTextEmojiSaturation:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->toMaxTextEmojiSaturation:F

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/SlideIntChooseView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SlideIntChooseView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SlideIntChooseView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/SlideIntChooseView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView$3;-><init>(Lorg/telegram/ui/Cells/SlideIntChooseView;F)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    invoke-virtual {p2, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxTextEmojiSaturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, -0x41666666    # -0.3f

    mul-float v0, v0, p1

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setEmojiColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getProgress(I)F
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v3, v2, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget v5, v3, v4

    aget v6, v3, v1

    if-lt p1, v5, :cond_0

    if-gt p1, v6, :cond_0

    array-length v1, v3

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr v6, v5

    int-to-float v0, v6

    div-float/2addr p1, v0

    iget v0, v2, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget v0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    div-int/2addr p1, v0

    add-int/2addr v4, p1

    int-to-float p1, v4

    mul-float v1, v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMax()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    return p1
.end method

.method public getStep(I)I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v1, v1, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    aget v1, v1, v0

    if-lt p1, v3, :cond_0

    if-gt p1, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getValue(F)I
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v1, v0, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    if-eqz v1, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v2, v2, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v4, v4, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v3, v3, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->steps:[I

    aget p1, v3, p1

    aget v2, v3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    double-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget v1, v1, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget v1, v1, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->betweenSteps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMin()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMax()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 p2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v1, 0x42960000    # 75.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p1, p2, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v1, v2, p2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    aput-object p1, v0, p2

    const/4 p1, 0x1

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->value:I

    iput-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iput-object p3, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->whenChanged:Lorg/telegram/messenger/Utilities$Callback;

    iget-object p2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->getProgress(I)F

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;->updateTexts(IZ)V

    return-void
.end method

.method public setMinValueAllowed(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->minValueAllowed:I

    iget v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->value:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->value:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/SlideIntChooseView;->getProgress(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarView;->setMinProgress(F)V

    iget p1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->value:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/SlideIntChooseView;->updateTexts(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateTexts(IZ)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->minText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->valueText:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->valueText:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v1, v1, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->toString:Lorg/telegram/messenger/Utilities$Callback2Return;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/Utilities$Callback2Return;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->minText:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v1, v1, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->toString:Lorg/telegram/messenger/Utilities$Callback2Return;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/Utilities$Callback2Return;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v1, v1, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->toString:Lorg/telegram/messenger/Utilities$Callback2Return;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMax()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/Utilities$Callback2Return;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->maxText:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMax()I

    move-result v1

    if-lt p1, v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SlideIntChooseView;->options:Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->setMaxTextEmojiSaturation(FZ)V

    return-void
.end method
