.class public Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/BotFullscreenButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsIcon"
.end annotation


# instance fields
.field private final animatedDownloading:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final downloadPaint:Landroid/graphics/Paint;

.field private final downloadPath:Landroid/graphics/Path;

.field private downloading:Z

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloading:Z

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v4, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;)V

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1a4

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->animatedDownloading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->start:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const p1, 0x3faa3d71    # 1.33f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    const v2, 0x3e23d70a    # 0.16f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    const/high16 v3, 0x40600000    # 3.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    neg-float p1, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->animatedDownloading:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloading:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const v2, 0x4102a7f0    # 8.166f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPath:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->start:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1c2

    rem-long/2addr v6, v8

    long-to-float v0, v6

    const/high16 v4, 0x43e10000    # 450.0f

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v6, 0x40600000    # 3.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    neg-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-static {v7, v8, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    neg-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    invoke-static {v8, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    invoke-virtual {p1, v4, v0, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPath:Landroid/graphics/Path;

    iget-object v7, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    cmpl-float v0, v2, v4

    if-lez v0, :cond_0

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    neg-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-static {v7, v8, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    neg-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static {v7, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDownloading(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloading:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->downloading:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
