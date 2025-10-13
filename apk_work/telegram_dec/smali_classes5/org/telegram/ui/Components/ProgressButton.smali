.class public Lorg/telegram/ui/Components/ProgressButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private angle:I

.field private drawProgress:Z

.field private lastUpdateTime:J

.field private progressAlpha:F

.field private final progressPaint:Landroid/graphics/Paint;

.field private final progressRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 p1, 0x41600000    # 14.0f

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/Button;Landroid/view/ViewOutlineProvider;)V

    :cond_0
    const/high16 p1, 0x41000000    # 8.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p1, v1}, Lorg/telegram/ui/Components/ViewHelper;->setPadding(Landroid/view/View;FFFF)V

    const/high16 p1, 0x42700000    # 60.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProgressButton;->drawProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ProgressButton;->progressRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ProgressButton;->progressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ProgressButton;->progressRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ProgressButton;->angle:I

    int-to-float v5, v0

    iget-object v8, p0, Lorg/telegram/ui/Components/ProgressButton;->progressPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x435c0000    # 220.0f

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ProgressButton;->lastUpdateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ProgressButton;->lastUpdateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x168

    mul-long v6, v6, v4

    long-to-float p1, v6

    const/high16 v0, 0x44fa0000    # 2000.0f

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ProgressButton;->angle:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    div-int/lit16 v0, p1, 0x168

    mul-int/lit16 v0, v0, 0x168

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/ProgressButton;->angle:I

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ProgressButton;->drawProgress:Z

    const/high16 v0, 0x43480000    # 200.0f

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v6, p1, v1

    if-gez v6, :cond_2

    long-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    cmpl-float v6, p1, v1

    if-lez v6, :cond_2

    long-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iput-wide v2, p0, Lorg/telegram/ui/Components/ProgressButton;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3
    return-void
.end method

.method public setBackgroundRoundRect(II)V
    .locals 1

    .line 0
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ProgressButton;->setBackgroundRoundRect(IIF)V

    return-void
.end method

.method public setBackgroundRoundRect(IIF)V
    .locals 1

    .line 0
    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p3, p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawProgress(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProgressButton;->drawProgress:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProgressButton;->drawProgress:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ProgressButton;->progressAlpha:F

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ProgressButton;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProgressButton;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
