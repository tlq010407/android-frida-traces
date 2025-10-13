.class public Lorg/telegram/ui/Components/ProxyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private cicleRect:Landroid/graphics/RectF;

.field private colorKey:I

.field private connected:Z

.field private connectedAnimationProgress:F

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private fullDrawable:Landroid/graphics/drawable/Drawable;

.field private isEnabled:Z

.field private lastUpdateTime:J

.field private outerPaint:Landroid/graphics/Paint;

.field private radOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->colorKey:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg2_proxy_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_proxy_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    const v0, 0x3fd47ae1    # 1.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    return-void
.end method

.method private setBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    sub-long v6, v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProxyDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProxyDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->colorKey:I

    if-gez v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    sub-float v1, v9, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    int-to-float v0, v0

    const-wide/16 v1, 0x168

    mul-long v1, v1, v6

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    mul-float v2, v2, v8

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProxyDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    const/high16 v2, 0x43960000    # 300.0f

    if-eqz v0, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v4, v3, v9

    if-eqz v4, :cond_6

    long-to-float v0, v6

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v3, v9

    if-lez v0, :cond_7

    iput v9, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    goto :goto_1

    :cond_6
    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_8

    long-to-float v3, v6

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iput v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_8
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setColorKey(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->colorKey:I

    return-void
.end method

.method public setConnected(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    if-nez p3, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
