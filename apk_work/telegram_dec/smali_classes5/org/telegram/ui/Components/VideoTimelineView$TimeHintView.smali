.class public Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoTimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeHintView"
.end annotation


# instance fields
.field private cx:F

.field private lastTime:J

.field private scale:F

.field private show:Z

.field private tooltipBackground:Landroid/graphics/drawable/Drawable;

.field private tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

.field private tooltipLayout:Landroid/text/StaticLayout;

.field private tooltipPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->lastTime:J

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v0, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->updateColors()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show:Z

    const v1, 0x3df5c28f    # 0.12f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_5

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_4

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    return-void

    :cond_5
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v4, v0, v1

    if-lez v4, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    div-float/2addr v0, v1

    :goto_1
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->cx:F

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v4, v8

    float-to-int v4, v4

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    add-float/2addr v8, v7

    float-to-int v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setCx(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTime(I)V
    .locals 13

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->lastTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->lastTime:J

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v8, v0

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
