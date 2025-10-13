.class public Lorg/telegram/ui/Components/ContextProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private cicleRect:Landroid/graphics/RectF;

.field private innerColor:I

.field private innerKey:I

.field private innerPaint:Landroid/graphics/Paint;

.field private lastUpdateTime:J

.field private outerColor:I

.field private outerKey:I

.field private outerPaint:Landroid/graphics/Paint;

.field private radOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    if-nez p2, :cond_0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner1:I

    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:I

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter1:I

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:I

    goto :goto_1

    :cond_0
    if-ne p2, v0, :cond_1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:I

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner3:I

    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:I

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter3:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner4:I

    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:I

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter4:I

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    int-to-float v0, v0

    const-wide/16 v4, 0x168

    mul-long v2, v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v2

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v6, v0

    iget-object v9, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:I

    iput v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:I

    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerColor:I

    iput p2, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
