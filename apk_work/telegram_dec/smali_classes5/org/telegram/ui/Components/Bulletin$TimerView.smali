.class public Lorg/telegram/ui/Components/Bulletin$TimerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerView"
.end annotation


# instance fields
.field private lastUpdateTime:J

.field private prevSeconds:I

.field private final progressPaint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/RectF;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field textWidthOut:I

.field timeLayout:Landroid/text/StaticLayout;

.field timeLayoutOut:Landroid/text/StaticLayout;

.field public timeLeft:J

.field private timeLeftString:Ljava/lang/String;

.field timeReplaceProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin$TimerView;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->prevSeconds:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->prevSeconds:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeftString:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    iput-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidthOut:I

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidth:I

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeftString:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v9, 0x7fffffff

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpg-float v1, v0, v5

    if-gez v1, :cond_4

    const v1, 0x3dda740e

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iput v5, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpg-float v8, v1, v5

    if-gez v8, :cond_5

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    sub-float v1, v5, v1

    mul-float v9, v9, v1

    float-to-int v1, v9

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidthOut:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v1, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v8, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpl-float v8, v1, v5

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v0

    mul-float v9, v9, v1

    float-to-int v1, v9

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v1, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/Layout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v8, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    sub-float v7, v5, v7

    mul-float v6, v6, v7

    sub-float/2addr v8, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v8, v2

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    iget-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v0, v1

    const/high16 v1, -0x3c4c0000    # -360.0f

    mul-float v8, v0, v1

    iget-object v10, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    cmp-long p1, v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_9

    iget-wide v2, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    :cond_9
    iput-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
