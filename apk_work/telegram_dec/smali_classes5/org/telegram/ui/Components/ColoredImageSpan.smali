.class public Lorg/telegram/ui/Components/ColoredImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private alpha:F

.field private checkColorDelegate:Ljava/lang/Runnable;

.field colorKey:I

.field public drawable:Landroid/graphics/drawable/Drawable;

.field drawableColor:I

.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private isRelativeSize:Z

.field private overrideColor:I

.field public recolorDrawable:Z

.field private rotate:F

.field private scaleX:F

.field private scaleY:F

.field private size:I

.field private sizeWidth:I

.field public spaceScaleX:F

.field private topOffset:I

.field private translateX:F

.field private translateY:F

.field public useLinkPaintColor:Z

.field usePaintColor:Z

.field private final verticalAlignment:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 0
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->recolorDrawable:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->usePaintColor:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->useLinkPaintColor:Z

    iput v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->topOffset:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->alpha:F

    iput v1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    iput v1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    iput v1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleY:F

    iput-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->verticalAlignment:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->checkColorDelegate:Ljava/lang/Runnable;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->recolorDrawable:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->overrideColor:I

    if-eqz p2, :cond_1

    :goto_0
    const/4 p7, 0x0

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->useLinkPaintColor:Z

    if-eqz p2, :cond_2

    instance-of p2, p9, Landroid/text/TextPaint;

    if-eqz p2, :cond_2

    move-object p2, p9

    check-cast p2, Landroid/text/TextPaint;

    iget p2, p2, Landroid/text/TextPaint;->linkColor:I

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->usePaintColor:Z

    if-eqz p2, :cond_3

    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    const/4 p7, 0x1

    goto :goto_1

    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->colorKey:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    if-eq v0, p2, :cond_5

    iput p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p7, 0x0

    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_6
    move p2, p8

    :goto_4
    sub-int p2, p8, p2

    iget v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->verticalAlignment:I

    if-ne v0, p3, :cond_7

    goto :goto_6

    :cond_7
    const/4 p3, 0x2

    if-ne v0, p3, :cond_9

    sub-int/2addr p8, p6

    div-int/2addr p8, p3

    add-int/2addr p6, p8

    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p4, p2, 0x2

    :cond_8
    sub-int p2, p6, p4

    goto :goto_6

    :cond_9
    if-nez v0, :cond_b

    sub-int/2addr p8, p6

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    :goto_5
    sub-int/2addr p8, p2

    div-int/2addr p8, p3

    add-int/2addr p6, p8

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->topOffset:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p2, p6

    :cond_b
    :goto_6
    iget p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->translateX:F

    add-float/2addr p5, p3

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->translateY:F

    add-float/2addr p2, p3

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_10

    iget p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p5, p3, p4

    if-nez p5, :cond_c

    iget p5, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleY:F

    cmpl-float p5, p5, p4

    if-eqz p5, :cond_d

    :cond_c
    iget p5, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleY:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    const/4 p6, 0x0

    invoke-virtual {p1, p3, p5, p6, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_d
    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->rotate:F

    cmpl-float p3, p2, p4

    if-eqz p3, :cond_e

    iget-object p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p7, :cond_f

    iget p3, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->alpha:F

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float p3, p3, p4

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    int-to-float p4, p4

    iget p5, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawableColor:I

    invoke-static {p5}, Landroid/graphics/Color;->alpha(I)I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p4, p5

    :goto_7
    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_8

    :cond_f
    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->alpha:F

    goto :goto_7

    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->isRelativeSize:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_1

    if-nez p5, :cond_0

    new-instance p5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p1, p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    :goto_0
    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->sizeWidth:I

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->sizeWidth:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p1, p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    goto :goto_0
.end method

.method public rotate(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->rotate:F

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->alpha:F

    return-void
.end method

.method public setColorKey(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->colorKey:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->usePaintColor:Z

    return-void
.end method

.method public setOverrideColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->overrideColor:I

    return-void
.end method

.method public setRelativeSize(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->isRelativeSize:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    iget p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    if-nez p1, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleX:F

    iput p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->scaleY:F

    return-void
.end method

.method public setSize(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->size:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->topOffset:I

    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->translateX:F

    return-void
.end method

.method public setTranslateY(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->translateY:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->sizeWidth:I

    return-void
.end method

.method public translate(FF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->translateX:F

    iput p2, p0, Lorg/telegram/ui/Components/ColoredImageSpan;->translateY:F

    return-void
.end method
