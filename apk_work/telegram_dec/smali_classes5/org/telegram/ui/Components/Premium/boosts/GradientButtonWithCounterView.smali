.class public Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;
.super Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
.source "SourceFile"


# instance fields
.field private final flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private incGradient:Z

.field private progress:F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->rect:Landroid/graphics/RectF;

    new-instance p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const p2, 0x3f99999a    # 1.2f

    iput p2, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/high16 p2, 0x40800000    # 4.0f

    iput p2, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->incGradient:Z

    const v1, 0x3c83126f    # 0.016f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->progress:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->progress:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->incGradient:Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->progress:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->progress:F

    mul-float v9, v0, v1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/GradientButtonWithCounterView;->rect:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
