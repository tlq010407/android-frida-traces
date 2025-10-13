.class public Lorg/telegram/ui/Components/MsgClockDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private alpha:I

.field private color:I

.field private colorAlpha:I

.field private constantState:Landroid/graphics/drawable/Drawable$ConstantState;

.field private paint:Landroid/graphics/Paint;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    iput v1, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->alpha:I

    iput v1, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->colorAlpha:I

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->startTime:J

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    shr-int/lit8 v1, v1, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-wide v3, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->startTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const v4, 0x44bb8000    # 1500.0f

    rem-float/2addr v3, v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v3, v3, v5

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v3, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v8, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v9, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v10, v3

    iget-object v11, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-wide v3, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->startTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x458ca000    # 4500.0f

    rem-float/2addr v1, v2

    mul-float v1, v1, v5

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    const v2, 0x40133333    # 2.3f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->constantState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/MsgClockDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MsgClockDrawable$1;-><init>(Lorg/telegram/ui/Components/MsgClockDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->constantState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->constantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->alpha:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->colorAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->color:I

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->colorAlpha:I

    iget-object v1, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->alpha:I

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/MsgClockDrawable;->color:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
