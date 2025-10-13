.class public Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;
.super Lorg/telegram/ui/Components/CompatDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RibbonDrawable"
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;

.field private strokePaint:Landroid/graphics/Paint;

.field private text:Lorg/telegram/ui/Components/Text;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CompatDrawable;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->path:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->textColor:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->path:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->fillRibbonPath(Landroid/graphics/Path;F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    const p2, -0xaa6af

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    const v0, 0x40151eb8    # 2.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p2, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public static fillRibbonPath(Landroid/graphics/Path;F)V
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    const v0, 0x423b51ec    # 46.83f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41c40000    # 24.5f

    mul-float v1, v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v0, 0x41bc0000    # 23.5f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f95c28f    # 1.17f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x41b60000    # 22.75f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const v0, 0x3ed70a3d    # 0.42f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    const v0, 0x41add70a    # 21.73f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const v0, 0x41a570a4    # 20.68f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v7, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v0, 0x419cf5c3    # 19.62f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const v0, 0x402eb852    # 2.73f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const v0, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    const v2, 0x3fc66666    # 1.55f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v7, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v8, v2

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v2, 0x3eb851ec    # 0.36f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const v0, -0x41947ae1    # -0.23f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    const v0, 0x3fbe872b    # 1.4885f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v7, v0

    const v0, 0x3f19999a    # 0.6f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v8, v0

    const v0, 0x40147ae1    # 2.32f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v0, 0x4236e148    # 45.72f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x423dc28f    # 47.44f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const v0, 0x423a3d71    # 46.56f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const v0, 0x42411eb8    # 48.28f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x42400000    # 48.0f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    const v2, 0x423eb852    # 47.68f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v7, v2

    const/high16 v2, 0x423a0000    # 46.5f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v8, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const v2, 0x42353d71    # 45.31f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v6, v2

    const v2, 0x41e30a3d    # 28.38f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v7, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v8, v2

    const v2, 0x41da8f5c    # 27.32f

    mul-float v2, v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v9, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const v0, 0x41d2147b    # 26.26f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x423e0000    # 47.5f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    const v0, 0x41c9eb85    # 25.24f

    mul-float v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    const v0, 0x423b47ae    # 46.82f

    mul-float p1, p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v7, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v8, p1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    const v1, 0x3faa3d71    # 1.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->text:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {p1, v4, v0, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float v7, v0, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v0, v1

    iget v9, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->textColor:I

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Z)V
    .locals 12

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    const v3, 0x3d4ccccd    # 0.05f

    const v6, 0x3d8f5c29    # 0.07f

    if-eqz p2, :cond_1

    const v7, 0x3d8f5c29    # 0.07f

    goto :goto_0

    :cond_1
    const v7, 0x3d4ccccd    # 0.05f

    :goto_0
    const v8, -0x42333333    # -0.1f

    const v10, -0x41e66666    # -0.15f

    if-eqz p2, :cond_2

    const v11, -0x41e66666    # -0.15f

    goto :goto_1

    :cond_2
    const v11, -0x42333333    # -0.1f

    :goto_1
    invoke-static {v1, v7, v11}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v1

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr p1, v2

    if-eqz p2, :cond_3

    const v3, 0x3d8f5c29    # 0.07f

    :cond_3
    if-eqz p2, :cond_4

    const v8, -0x41e66666    # -0.15f

    :cond_4
    invoke-static {p1, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    filled-new-array {v1, p1}, [I

    move-result-object v6

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    const/4 p2, 0x2

    new-array v7, p2, [F

    const/4 p2, 0x0

    aput v2, v7, p2

    const/4 p2, 0x1

    aput p1, v7, p2

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_4
    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColors(II)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    filled-new-array {p1, p2}, [I

    move-result-object v6

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setText(ILjava/lang/CharSequence;Z)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Text;

    int-to-float p1, p1

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {v0, p2, p1, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->textColor:I

    return-void
.end method
