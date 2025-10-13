.class public Lorg/telegram/ui/Components/CrossOutDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field color:I

.field colorKey:I

.field cross:Z

.field iconDrawable:Landroid/graphics/drawable/Drawable;

.field private lenOffsetBottom:F

.field private lenOffsetTop:F

.field paint:Landroid/graphics/Paint;

.field progress:F

.field rectF:Landroid/graphics/RectF;

.field private xOffset:F

.field final xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xRefPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->colorKey:I

    iget-object p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    const p3, 0x3fd9999a    # 1.7f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40200000    # 2.5f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->cross:Z

    const v1, 0x3dda740e

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_0

    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iput v3, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->colorKey:I

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->color:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->color:I

    iget-object v1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    const/16 v1, 0xff

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40900000    # 4.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xOffset:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->lenOffsetTop:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v2, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->lenOffsetTop:F

    add-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xOffset:F

    add-float/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->lenOffsetBottom:F

    sub-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iget v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->lenOffsetBottom:F

    sub-float/2addr v5, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->cross:Z

    if-eqz v4, :cond_5

    sub-float/2addr v1, v0

    iget v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    mul-float v1, v1, v4

    add-float/2addr v1, v0

    sub-float/2addr v5, v2

    mul-float v5, v5, v4

    add-float/2addr v5, v2

    goto :goto_2

    :cond_5
    sub-float v4, v1, v0

    iget v6, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    sub-float v6, v3, v6

    mul-float v4, v4, v6

    add-float/2addr v0, v4

    sub-float v4, v5, v2

    mul-float v4, v4, v6

    add-float/2addr v2, v4

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float v8, v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float v10, v5, v4

    iget-object v11, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xRefPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v0

    move v9, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    sub-float v8, v2, v4

    sub-float v10, v5, v4

    iget-object v11, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xRefPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v11, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    move v8, v2

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCrossOut(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->cross:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->cross:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->progress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    return-void
.end method

.method public setOffsets(FFF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xOffset:F

    iput p2, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->lenOffsetTop:F

    iput p3, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->lenOffsetBottom:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CrossOutDrawable;->xRefPaint:Landroid/graphics/Paint;

    const v1, 0x3fbc28f6    # 1.47f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
