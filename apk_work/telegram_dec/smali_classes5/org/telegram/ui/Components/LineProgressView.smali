.class public Lorg/telegram/ui/Components/LineProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backColor:I

.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private progressColor:I

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/LineProgressView;->rect:Landroid/graphics/RectF;

    sget-object p1, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object p1, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p1, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    sub-float v6, v5, v0

    cmpl-float v7, v6, v1

    if-lez v7, :cond_1

    iget-wide v7, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    add-long/2addr v7, v2

    iput-wide v7, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    const-wide/16 v9, 0x12c

    cmp-long v11, v7, v9

    if-ltz v11, :cond_0

    iput v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iput v5, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/telegram/ui/Components/LineProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v7, v7

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float v6, v6, v5

    add-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    cmpl-float v5, v0, v4

    if-ltz v5, :cond_4

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_4

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public getCurrentProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->backColor:I

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    sget-object v4, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    mul-float v4, v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v3, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sget-object v6, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/LineProgressView;->progressColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    mul-float v4, v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    mul-float v1, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sget-object v5, Lorg/telegram/ui/Components/LineProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v1, 0xa0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const v1, 0x3f99999a    # 1.2f

    iput v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LineProgressView;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/LineProgressView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v3, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/LineProgressView;->updateAnimation()V

    return-void
.end method

.method public setBackColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->backColor:I

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedProgressValue:F

    iput p2, p0, Lorg/telegram/ui/Components/LineProgressView;->animationProgressStart:F

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    iput p2, p0, Lorg/telegram/ui/Components/LineProgressView;->animatedAlphaValue:F

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgress:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Components/LineProgressView;->currentProgressTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/LineProgressView;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/LineProgressView;->progressColor:I

    return-void
.end method
