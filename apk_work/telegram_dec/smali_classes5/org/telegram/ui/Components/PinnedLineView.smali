.class public Lorg/telegram/ui/Components/PinnedLineView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field animateFromPosition:F

.field animateFromTotal:I

.field animateToPosition:I

.field animateToTotal:I

.field animationInProgress:Z

.field animationProgress:F

.field animator:Landroid/animation/ValueAnimator;

.field private color:I

.field fadePaint:Landroid/graphics/Paint;

.field fadePaint2:Landroid/graphics/Paint;

.field private lineHFrom:I

.field private lineHTo:I

.field private nextPosition:I

.field paint:Landroid/graphics/Paint;

.field rectF:Landroid/graphics/RectF;

.field replaceInProgress:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectedPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field private startOffsetFrom:F

.field private startOffsetTo:F

.field totalCount:I


# direct methods
.method public static synthetic $r8$lambda$9xfSOnbHj7NCfqnW4w6pW7BJQwM(Lorg/telegram/ui/Components/PinnedLineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->lambda$selectPosition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$azIPy8gfC3yHEp2EwMjAD9kJskk(Lorg/telegram/ui/Components/PinnedLineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->lambda$set$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    iput v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    move-object/from16 v3, p2

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v8, v4

    filled-new-array {v1, v2}, [I

    move-result-object v9

    const/4 v13, 0x2

    new-array v10, v13, [F

    fill-array-data v10, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, v3

    move-object/from16 v11, v21

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    filled-new-array {v2, v1}, [I

    move-result-object v19

    new-array v1, v13, [F

    fill-array-data v1, :array_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v14, v3

    move/from16 v18, v4

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PinnedLineView;->updateColors()V

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
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PinnedLineView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PinnedLineView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PinnedLineView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->selectPosition(I)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$selectPosition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$set$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private selectPosition(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    iget v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    int-to-float v0, v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    if-eq p1, v0, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PinnedLineView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PinnedLineView$1;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    if-ltz v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v2, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    iget v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-le v1, v10, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_3
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v5, v3, v4

    mul-float v2, v2, v5

    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    goto :goto_1

    :cond_4
    iget v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    :goto_1
    const/4 v7, 0x0

    cmpl-float v4, v2, v7

    if-nez v4, :cond_6

    return-void

    :cond_6
    const v4, 0x3f333333    # 0.7f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v5, :cond_7

    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v10, v3, v6

    mul-float v5, v5, v10

    iget v10, v0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    mul-float v10, v10, v6

    add-float/2addr v5, v10

    goto :goto_3

    :cond_7
    iget-boolean v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-eqz v5, :cond_8

    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    sub-float/2addr v5, v3

    mul-float v5, v5, v2

    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    mul-float v6, v6, v2

    iget v10, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v13, v3, v10

    mul-float v5, v5, v13

    mul-float v6, v6, v10

    add-float/2addr v5, v6

    goto :goto_2

    :cond_8
    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    sub-int/2addr v5, v11

    int-to-float v5, v5

    mul-float v5, v5, v2

    :goto_2
    cmpg-float v6, v5, v7

    if-gez v6, :cond_9

    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    int-to-float v6, v1

    iget v10, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, v2

    add-float/2addr v10, v6

    sub-float/2addr v10, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v13, v1

    int-to-float v13, v13

    sub-float/2addr v13, v2

    cmpg-float v10, v10, v13

    if-gez v10, :cond_a

    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v5, v11

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v6, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float v5, v6, v5

    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    int-to-float v1, v1

    add-float v10, v1, v5

    div-float/2addr v10, v2

    sub-float/2addr v10, v3

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v10, v9, 0x6

    iget-boolean v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v11, :cond_b

    iget v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    iget v13, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_4

    :cond_b
    iget v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_5
    if-ge v9, v10, :cond_10

    int-to-float v11, v9

    mul-float v11, v11, v2

    add-float/2addr v11, v1

    sub-float/2addr v11, v5

    add-float v13, v11, v2

    cmpg-float v14, v13, v7

    if-ltz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v11, v14

    if-lez v14, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-object v14, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    add-float/2addr v11, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v4

    invoke-virtual {v14, v7, v11, v15, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    const/high16 v13, 0x42980000    # 76.0f

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v11, :cond_d

    iget v15, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    if-lt v9, v15, :cond_d

    iget-object v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v15, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    mul-float v7, v7, v13

    iget v13, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v13, v3, v13

    mul-float v7, v7, v13

    float-to-int v7, v7

    invoke-static {v15, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6
    iget-object v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v6, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    const/high16 v14, 0x42980000    # 76.0f

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-static {v11, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_d
    if-eqz v11, :cond_e

    iget v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    if-lt v9, v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    const/high16 v15, 0x42980000    # 76.0f

    mul-float v13, v13, v15

    iget v15, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    mul-float v13, v13, v15

    float-to-int v13, v13

    invoke-static {v11, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6

    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7, v6, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_f
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_10
    iget-boolean v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-eqz v7, :cond_11

    iget v7, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    iget v9, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float/2addr v3, v9

    mul-float v7, v7, v3

    iget v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    int-to-float v3, v3

    mul-float v3, v3, v9

    add-float/2addr v7, v3

    goto :goto_8

    :cond_11
    iget v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    int-to-float v7, v3

    :goto_8
    mul-float v7, v7, v2

    add-float/2addr v1, v7

    sub-float/2addr v1, v5

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    add-float v5, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v5, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v12, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_9
    return-void
.end method

.method public set(IIZ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    if-eqz p2, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-nez v4, :cond_1

    :cond_0
    const/4 p3, 0x0

    :cond_1
    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    iput p2, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-ne p3, p2, :cond_5

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-le p3, v1, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->selectPosition(I)V

    goto/16 :goto_3

    :cond_5
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_6

    iput v3, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v3, p3, 0x2

    sub-int/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    iget v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-gez v5, :cond_7

    iput v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    goto :goto_1

    :cond_7
    iget v5, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v5, v0

    mul-int v5, v5, v3

    add-int/2addr v5, p3

    int-to-float v3, v5

    sub-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, p3

    iget v5, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v2, v0

    mul-int v2, v2, v5

    add-int/2addr v2, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, p3

    iget v5, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    sub-int/2addr v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    :cond_8
    :goto_1
    add-int/lit8 v2, p1, -0x1

    iget v3, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_9

    iput v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    goto :goto_2

    :cond_9
    add-int/lit8 v5, p2, -0x1

    mul-int v3, v3, v5

    add-int/2addr v3, p3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, p3

    iget v6, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_a

    mul-int v5, v5, v6

    add-int/2addr v5, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, p3

    iget p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    sub-int/2addr v2, p3

    sub-int/2addr v5, v2

    int-to-float p3, v5

    iput p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    :cond_a
    :goto_2
    iget p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    int-to-float p3, p3

    iput p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    iget p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    iput p2, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    iput p2, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    iput v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/PinnedLineView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PinnedLineView$2;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xdc

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateColors()V
    .locals 4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelLine:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PinnedLineView;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42e00000    # 112.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
