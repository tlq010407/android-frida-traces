.class public Lorg/telegram/ui/Components/RadialProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private alphaForMiniPrevious:Z

.field private alphaForPrevious:Z

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private checkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private cicleRect:Landroid/graphics/RectF;

.field private currentDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMiniDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMiniWithRound:Z

.field private currentProgress:F

.field private currentProgressTime:J

.field private currentWithRound:Z

.field private diff:I

.field private disableUpdate:Z

.field private drawMiniProgress:Z

.field private hideCurrentDrawable:Z

.field private lastUpdateTime:J

.field private miniDrawBitmap:Landroid/graphics/Bitmap;

.field private miniDrawCanvas:Landroid/graphics/Canvas;

.field private miniProgressBackgroundPaint:Landroid/graphics/Paint;

.field private miniProgressPaint:Landroid/graphics/Paint;

.field private overrideAlpha:F

.field private overridePaint:Landroid/graphics/Paint;

.field private parent:Landroid/view/View;

.field private previousDrawable:Landroid/graphics/drawable/Drawable;

.field private previousMiniDrawable:Landroid/graphics/drawable/Drawable;

.field private previousMiniWithRound:Z

.field private previousWithRound:Z

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private final roundProgressRectMatrix:Landroid/graphics/Matrix;

.field private final roundProgressRectPath:Landroid/graphics/Path;

.field private final roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

.field private roundRectProgress:Z

.field private final roundRectProgressPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    sget-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v1, 0x3ea3d70a    # 0.32f

    mul-float v0, v0, v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1, p2, v0, v0, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    add-float v1, p3, p4

    float-to-int v3, p3

    div-int/lit8 v3, v3, 0x5a

    mul-int/lit8 v3, v3, 0x5a

    add-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    const/high16 v4, -0x3cb90000    # -199.0f

    add-float/2addr v4, v3

    sub-float v5, p3, v4

    div-float/2addr v5, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, p2, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    mul-float v5, v5, v0

    mul-float v0, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x42b40000    # 90.0f

    add-float v4, p3, v0

    sub-float v5, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RadialProgress;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private invalidateParent()V
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    sub-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private updateAnimation(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RadialProgress;->disableUpdate:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    sub-long v3, v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    iget-object v1, v0, Lorg/telegram/ui/Components/RadialProgress;->checkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v1, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v1, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v7, 0x0

    if-eqz p1, :cond_7

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    const-wide/16 v10, 0x168

    mul-long v10, v10, v3

    long-to-float v10, v10

    const v11, 0x453b8000    # 3000.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    iput v8, v0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    sub-float v11, v8, v10

    cmpl-float v12, v11, v7

    if-lez v12, :cond_4

    iget-wide v12, v0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    add-long/2addr v12, v3

    iput-wide v12, v0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    const-wide/16 v14, 0x12c

    cmp-long v16, v12, v14

    if-ltz v16, :cond_3

    iput v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    goto :goto_1

    :cond_3
    sget-object v8, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v12, v12

    const/high16 v13, 0x43960000    # 300.0f

    div-float/2addr v12, v13

    invoke-virtual {v8, v12}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    iput v10, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    :cond_5
    iget-boolean v8, v0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    if-eqz v8, :cond_6

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_b

    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_b

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v8, v3

    iput v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float v3, v8, v7

    if-gtz v3, :cond_a

    iput v7, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iput-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_a

    goto :goto_4

    :cond_7
    iget-boolean v8, v0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    if-eqz v8, :cond_9

    iget-object v8, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_b

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v8, v3

    iput v8, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float v3, v8, v7

    if-gtz v3, :cond_a

    iput v7, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iput-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    iput-boolean v1, v0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_a

    :goto_4
    iput v7, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iput-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    :cond_b
    return-void
.end method


# virtual methods
.method public copyParams(Lorg/telegram/ui/Components/RadialProgress;)V
    .locals 2

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iget p1, p1, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    iget-boolean v0, v7, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    if-eqz v0, :cond_e

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v10, v10, v9

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    iget-object v11, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v6, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v10, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v10, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-virtual {v0, v11, v12, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v10, 0x42300000    # 44.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/4 v11, 0x2

    cmpg-float v0, v0, v10

    if-gez v0, :cond_2

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/16 v10, 0x10

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v0, v12

    iget-object v12, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v12, v10

    const/16 v10, 0x14

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v0, v12

    iget-object v12, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v12, v10

    const/16 v10, 0x16

    const/4 v13, 0x2

    :goto_1
    div-int/lit8 v14, v10, 0x2

    iget-object v15, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_3

    iget-boolean v15, v7, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    if-eqz v15, :cond_3

    iget v15, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v15, v15, v6

    goto :goto_2

    :cond_3
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_2
    iget-object v6, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v6, :cond_4

    add-int/lit8 v10, v10, 0x12

    add-int/2addr v10, v13

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-int/lit8 v8, v14, 0x1

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v15

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v13, v10, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_4
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float v6, v6, v9

    iget v8, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    :goto_3
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_5
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    goto :goto_3

    :goto_4
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v6, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v12, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_5
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_6

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    int-to-float v8, v8

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v8, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-boolean v6, v7, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    if-eqz v6, :cond_7

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float v6, v6, v9

    iget v8, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v6, v6, v8

    :goto_6
    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_7

    :cond_7
    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v6, v6, v9

    goto :goto_6

    :goto_7
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v6, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v15

    sub-float v8, v0, v8

    float-to-int v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v15

    sub-float v10, v12, v10

    float-to-int v10, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v15

    add-float/2addr v13, v0

    float-to-int v13, v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    add-float/2addr v6, v12

    float-to-int v6, v6

    invoke-virtual {v2, v8, v10, v13, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v2, :cond_a

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    iget-object v6, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v9

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v5, v5, v6

    :goto_8
    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_9

    :cond_9
    iget v5, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v5, v5, v9

    goto :goto_8

    :goto_9
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v0, v6

    float-to-int v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v12, v8

    float-to-int v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    float-to-int v10, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual {v2, v6, v8, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RadialProgress;->currentMiniWithRound:Z

    if-nez v2, :cond_c

    iget-boolean v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniWithRound:Z

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    :goto_a
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v5, v7, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousMiniWithRound:Z

    if-eqz v2, :cond_d

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v5, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float v5, v5, v9

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v5, v5, v6

    :goto_b
    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    :cond_d
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v5, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v5, v5, v9

    goto :goto_b

    :goto_c
    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    sub-int/2addr v14, v11

    int-to-float v5, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v15

    sub-float v6, v0, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v15

    sub-float v8, v12, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v15

    add-float/2addr v0, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v15

    add-float/2addr v12, v5

    invoke-virtual {v2, v6, v8, v0, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget v0, v7, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float/2addr v4, v0

    iget v0, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    mul-float v0, v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v5, v7, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v2

    move v2, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    goto/16 :goto_17

    :cond_e
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-boolean v2, v7, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    if-eqz v2, :cond_f

    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float v2, v2, v9

    iget v6, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v2, v2, v6

    :goto_f
    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_10

    :cond_f
    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v2, v2, v9

    goto :goto_f

    :goto_10
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v8, v2, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v10, v2, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v6, v8, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    iget-boolean v0, v7, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v0, :cond_12

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float/2addr v5, v2

    mul-float v5, v5, v9

    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v5, v5, v2

    float-to-int v2, v5

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_12

    :cond_11
    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v2, v2, v9

    float-to-int v2, v2

    goto :goto_11

    :goto_12
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v5, v6, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    iget-boolean v0, v7, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    if-nez v0, :cond_13

    iget-boolean v0, v7, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v0, :cond_b

    :cond_13
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_14

    :goto_13
    move-object v6, v0

    goto :goto_16

    :cond_14
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, v7, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v0, :cond_15

    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float v2, v2, v9

    iget v5, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v2, v2, v5

    :goto_14
    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_15

    :cond_15
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v2, v7, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float v2, v2, v9

    goto :goto_14

    :goto_15
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    goto :goto_13

    :goto_16
    iget-object v0, v7, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v8, v7, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v8, v8

    add-float/2addr v5, v8

    iget v9, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v8

    iget v10, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v8

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v8

    invoke-virtual {v0, v5, v9, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v7, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget v0, v7, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float/2addr v4, v0

    iget v0, v7, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    mul-float v0, v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RadialProgress;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_d

    :goto_17
    return-void
.end method

.method public getAnimatedProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    invoke-virtual {p0, v0, p3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    :goto_1
    return-void
.end method

.method public setDiff(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setProgress(FZ)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    goto :goto_1

    :cond_1
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    goto :goto_2

    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_4

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    return-void
.end method

.method public setProgressRect(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRoundRectProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgress:Z

    return-void
.end method
