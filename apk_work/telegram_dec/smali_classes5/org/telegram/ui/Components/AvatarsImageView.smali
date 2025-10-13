.class public Lorg/telegram/ui/Components/AvatarsImageView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

.field private plusBgPaint:Landroid/graphics/Paint;

.field private plusText:Lorg/telegram/ui/Components/Text;

.field private premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AvatarsDrawable;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    return-void
.end method


# virtual methods
.method public commitTransition(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->plusText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsImageView;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v5, 0x3faa3d71    # 1.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarsImageView;->plusBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarsImageView;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsImageView;->plusText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarsImageView;->plusText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    div-float/2addr v2, v4

    sub-float v8, v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->reset()V

    return-void
.end method

.method public setAvatarsTextSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAvatarsTextSize(I)V

    return-void
.end method

.method public setCentered(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setCentered(Z)V

    return-void
.end method

.method public setCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setCount(I)V

    return-void
.end method

.method public setDelegate(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setDelegate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setObject(IILorg/telegram/tgnet/TLObject;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public setPlus(II)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/AvatarsImageView;->premiumGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    new-instance v0, Lorg/telegram/ui/Components/Text;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->plusText:Lorg/telegram/ui/Components/Text;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsImageView;->plusBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setSize(I)V

    return-void
.end method

.method public setStepFactor(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setStepFactor(F)V

    return-void
.end method

.method public setStyle(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setStyle(I)V

    return-void
.end method

.method public updateAfterTransitionEnd()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->updateAfterTransitionEnd()V

    return-void
.end method
