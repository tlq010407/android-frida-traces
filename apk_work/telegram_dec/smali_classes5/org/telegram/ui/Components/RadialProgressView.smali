.class public Lorg/telegram/ui/Components/RadialProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private animatedProgress:F

.field private cicleRect:Landroid/graphics/RectF;

.field private currentCircleLength:F

.field private currentProgress:F

.field private currentProgressTime:F

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private drawingCircleLenght:F

.field private lastUpdateTime:J

.field private noProgress:Z

.field private progressAnimationStart:F

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressTime:I

.field private radOffset:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private risingCircleLength:Z

.field private size:I

.field private toCircle:Z

.field private toCircleProgress:F

.field private useSelfAlpha:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->noProgress:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RadialProgressView;->getThemedColor(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private updateAnimation()V
    .locals 7

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x11

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-wide v2, v4

    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->updateAnimation(J)V

    return-void
.end method

.method private updateAnimation(J)V
    .locals 8

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const-wide/16 v1, 0x168

    mul-long v1, v1, p1

    long-to-float v1, v1

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v2, v0, v1

    float-to-int v2, v2

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircle:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_0

    const v0, 0x3d94f209

    add-float/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    cmpl-float v0, v4, v2

    if-lez v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_1

    const v4, 0x3d23d70a    # 0.04f

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iput v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->noProgress:Z

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    const/high16 v5, 0x43850000    # 266.0f

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    long-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    cmpl-float p1, v0, v7

    if-ltz p1, :cond_2

    iput v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr p2, v7

    invoke-virtual {p1, p2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, v5

    add-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr p2, v7

    invoke-virtual {p1, p2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v2, p1

    mul-float v2, v2, v6

    sub-float/2addr v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    cmpl-float p1, p1, v7

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz p1, :cond_4

    iget p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    add-float/2addr p2, v6

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const/high16 p2, -0x3c7b0000    # -266.0f

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    :cond_4
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    iput v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    goto/16 :goto_4

    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr v0, v7

    invoke-virtual {p2, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float p2, p2, v5

    add-float/2addr p2, v4

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    sub-float v0, p1, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    goto :goto_2

    :cond_6
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    iget-object p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr v0, v7

    invoke-virtual {p2, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p2

    sub-float/2addr v2, p2

    mul-float v2, v2, v6

    sub-float/2addr v4, v2

    iget p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    const/high16 v0, 0x43b60000    # 364.0f

    mul-float p2, p2, v0

    sub-float p2, v4, p2

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    sub-float v0, p1, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    sub-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    goto :goto_4

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgress:F

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressAnimationStart:F

    sub-float v5, v0, v2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_9

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressTime:I

    int-to-long v6, v3

    add-long/2addr v6, p1

    long-to-int p1, v6

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressTime:I

    int-to-float p1, p1

    const/high16 p2, 0x43480000    # 200.0f

    cmpl-float v3, p1, p2

    if-ltz v3, :cond_8

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressAnimationStart:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressTime:I

    goto :goto_3

    :cond_8
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float v5, v5, p1

    add-float/2addr v2, v5

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    :cond_9
    :goto_3
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    mul-float p1, p1, v1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v2, p2, v1

    sub-float v3, p3, v1

    add-float/2addr p2, v1

    add-float/2addr p3, v1

    invoke-virtual {v0, v2, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v6, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    iput v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->drawingCircleLenght:F

    iget-object v9, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgressView;->updateAnimation()V

    return-void
.end method

.method public isCircle()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->drawingCircleLenght:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v8, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget v9, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    iput v9, p0, Lorg/telegram/ui/Components/RadialProgressView;->drawingCircleLenght:F

    iget-object v11, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgressView;->updateAnimation()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->useSelfAlpha:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setNoProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->noProgress:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgress:F

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressAnimationStart:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressTime:I

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setUseSelfAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->useSelfAlpha:Z

    return-void
.end method

.method public sync(Lorg/telegram/ui/Components/RadialProgressView;)V
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget-boolean v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->toCircle:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircle:Z

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    iget-boolean v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->noProgress:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->noProgress:Z

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->drawingCircleLenght:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->drawingCircleLenght:F

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgress:F

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->progressTime:I

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressTime:I

    iget v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->animatedProgress:F

    iget-boolean v0, p1, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    iget p1, p1, Lorg/telegram/ui/Components/RadialProgressView;->progressAnimationStart:F

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressAnimationStart:F

    const-wide/16 v0, 0x55

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->updateAnimation(J)V

    return-void
.end method

.method public toCircle(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircle:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->toCircleProgress:F

    :cond_1
    return-void
.end method
