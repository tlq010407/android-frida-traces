.class public Lorg/telegram/ui/Components/SeekBarWaveform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SeekBarWaveform$Particles;
    }
.end annotation


# static fields
.field private static paintInner:Landroid/graphics/Paint;

.field private static paintOuter:Landroid/graphics/Paint;


# instance fields
.field private alpha:F

.field private alphaPath:Landroid/graphics/Path;

.field private animatedValues:Ljava/util/ArrayList;

.field private appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private clearProgress:F

.field private delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

.field public explodeProgress:F

.field private exploding:Z

.field public explosionRate:F

.field private fromHeights:[F

.field private fromWidth:I

.field private height:I

.field private heights:[F

.field private innerColor:I

.field private isUnread:Z

.field private loading:Z

.field private loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingPaint:Landroid/graphics/Paint;

.field private loadingPaintColor1:I

.field private loadingPaintColor2:I

.field private loadingPaintWidth:F

.field private loadingStart:J

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private outerColor:I

.field private parentView:Landroid/view/View;

.field private particles:Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

.field private path:Landroid/graphics/Path;

.field private pressed:Z

.field private progress:F

.field private selected:Z

.field private selectedColor:I

.field private startDraging:Z

.field private startX:F

.field private thumbDX:I

.field private thumbX:I

.field private toHeights:[F

.field private toWidth:I

.field private waveScaling:F

.field private waveformBytes:[B

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x7d

    const-wide/16 v4, 0x258

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveScaling:F

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x96

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->exploding:Z

    sget-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    sget-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method private addBar(Landroid/graphics/Path;FF)V
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveScaling:F

    mul-float p3, p3, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, p2

    div-float v0, v1, v0

    sub-float/2addr v5, v0

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    neg-float v8, p3

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr p2, v4

    add-float/2addr p2, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr p3, v0

    add-float/2addr v2, p3

    invoke-virtual {v3, v5, v7, p2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v3, v1, v1, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private calculateHeights(I)[F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    if-eqz v2, :cond_7

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-array v3, v1, [F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    const/4 v4, 0x5

    div-int/2addr v2, v4

    int-to-float v5, v2

    int-to-float v6, v1

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v2, :cond_6

    if-eq v8, v9, :cond_1

    goto :goto_3

    :cond_1
    move v12, v9

    const/4 v13, 0x0

    :goto_1
    if-ne v9, v12, :cond_2

    add-float/2addr v10, v5

    float-to-int v12, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v9, v8, 0x5

    div-int/lit8 v14, v9, 0x8

    mul-int/lit8 v15, v14, 0x8

    sub-int/2addr v9, v15

    rsub-int/lit8 v15, v9, 0x8

    rsub-int/lit8 v16, v15, 0x5

    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    aget-byte v7, v7, v14

    shr-int/2addr v7, v9

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/16 v17, 0x2

    shl-int v9, v17, v9

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v7, v9

    int-to-byte v7, v7

    if-lez v16, :cond_3

    add-int/lit8 v14, v14, 0x1

    iget-object v9, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    array-length v4, v9

    if-ge v14, v4, :cond_3

    shl-int v4, v7, v16

    int-to-byte v4, v4

    aget-byte v7, v9, v14

    rsub-int/lit8 v9, v15, 0x4

    shl-int v9, v17, v9

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    int-to-byte v7, v4

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v13, :cond_5

    if-lt v11, v1, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v9, v11, 0x1

    mul-int/lit8 v14, v7, 0x7

    int-to-float v14, v14

    const/high16 v15, 0x41f80000    # 31.0f

    div-float/2addr v14, v15

    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    aput v14, v3, v11

    add-int/lit8 v4, v4, 0x1

    move v11, v9

    goto :goto_2

    :cond_5
    move v9, v12

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x5

    goto :goto_0

    :cond_6
    return-object v3

    :cond_7
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private drawFill(Landroid/graphics/Canvas;F)V
    .locals 15

    move-object v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->isUnread:Z

    sget-object v5, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    goto :goto_1

    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    :goto_1
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loading:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    sget-object v5, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    invoke-static {v6, v8, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    sub-float v8, v7, v2

    mul-float v6, v6, v8

    mul-float v6, v6, p2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v5, v5

    add-float v12, v5, v1

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v13, v5

    sget-object v14, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    cmpg-float v5, v2, v7

    if-gez v5, :cond_4

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    mul-float v5, v5, v6

    mul-float v12, v5, v8

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v13, v1

    sget-object v14, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    cmpl-float v1, v2, v4

    if-lez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintWidth:F

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor1:I

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    if-ne v1, v5, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor2:I

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    if-eq v1, v5, :cond_7

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    iput v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor1:I

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    iput v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor2:I

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v8, v5

    iput v8, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintWidth:F

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor1:I

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor2:I

    filled-new-array {v5, v6, v5}, [I

    move-result-object v10

    const/4 v5, 0x3

    new-array v11, v5, [F

    fill-array-data v11, :array_0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    mul-float v2, v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingStart:J

    sub-long/2addr v1, v5

    long-to-float v1, v1

    const/high16 v2, 0x43870000    # 270.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3fcccccd    # 1.6f

    rem-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintWidth:F

    mul-float v1, v1, v2

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v6, v1

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    sub-float v8, v3, v1

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v9, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    if-eqz v2, :cond_1b

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-eqz v2, :cond_1b

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    goto/16 :goto_13

    :cond_0
    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    div-float/2addr v2, v5

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    return-void

    :cond_1
    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_3

    const v7, 0x3dda740e

    add-float/2addr v5, v7

    iput v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iput v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    if-nez v7, :cond_4

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    if-nez v7, :cond_5

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->reverseWaveform()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    if-eqz v10, :cond_f

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    if-eqz v11, :cond_f

    iget v12, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iget v13, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v14, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    sub-int/2addr v14, v13

    int-to-float v13, v14

    div-float/2addr v12, v13

    array-length v10, v10

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    array-length v11, v11

    iget-object v13, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    array-length v13, v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    array-length v14, v13

    iget-object v15, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    array-length v4, v15

    if-ge v14, v4, :cond_7

    move-object v4, v13

    goto :goto_4

    :cond_7
    move-object v4, v15

    :goto_4
    array-length v14, v13

    array-length v3, v15

    if-ge v14, v3, :cond_8

    move-object v3, v15

    goto :goto_5

    :cond_8
    move-object v3, v13

    :goto_5
    array-length v13, v13

    array-length v14, v15

    if-ge v13, v14, :cond_9

    goto :goto_6

    :cond_9
    sub-float v12, v6, v12

    :goto_6
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v10, :cond_13

    int-to-float v6, v15

    int-to-float v8, v10

    div-float v8, v6, v8

    int-to-float v9, v11

    mul-float v8, v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    move/from16 v16, v10

    const/4 v9, 0x1

    add-int/lit8 v10, v11, -0x1

    const/4 v9, 0x0

    invoke-static {v8, v9, v10}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    if-ge v13, v8, :cond_c

    int-to-float v10, v8

    invoke-static {v10, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    mul-float v6, v6, v13

    if-eqz v7, :cond_a

    array-length v10, v4

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    sub-int/2addr v10, v8

    goto :goto_8

    :cond_a
    const/4 v13, 0x1

    move v10, v8

    :goto_8
    aget v10, v4, v10

    if-eqz v7, :cond_b

    array-length v9, v3

    sub-int/2addr v9, v13

    sub-int/2addr v9, v15

    goto :goto_9

    :cond_b
    move v9, v15

    :goto_9
    aget v9, v3, v9

    invoke-static {v10, v9, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    invoke-direct {v0, v10, v6, v9}, Lorg/telegram/ui/Components/SeekBarWaveform;->addBar(Landroid/graphics/Path;FF)V

    move v13, v8

    goto :goto_c

    :cond_c
    int-to-float v9, v8

    invoke-static {v9, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float v6, v6, v10

    if-eqz v7, :cond_d

    array-length v9, v4

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    sub-int v8, v9, v8

    goto :goto_a

    :cond_d
    const/4 v10, 0x1

    :goto_a
    aget v8, v4, v8

    if-eqz v7, :cond_e

    array-length v9, v3

    sub-int/2addr v9, v10

    sub-int/2addr v9, v15

    goto :goto_b

    :cond_e
    move v9, v15

    :goto_b
    aget v9, v3, v9

    invoke-static {v8, v9, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    invoke-direct {v0, v9, v6, v8}, Lorg/telegram/ui/Components/SeekBarWaveform;->addBar(Landroid/graphics/Path;FF)V

    move v14, v12

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    if-eqz v3, :cond_12

    const/4 v8, 0x0

    :goto_d
    int-to-float v3, v8

    cmpg-float v4, v3, v2

    if-gez v4, :cond_12

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    array-length v4, v4

    if-lt v8, v4, :cond_10

    goto :goto_f

    :cond_10
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float v6, v6, v3

    mul-float v4, v5, v2

    sub-float/2addr v4, v3

    const/4 v3, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v9}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    if-eqz v7, :cond_11

    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    sub-int/2addr v10, v8

    goto :goto_e

    :cond_11
    const/4 v11, 0x1

    move v10, v8

    :goto_e
    aget v3, v3, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    mul-float v3, v3, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float v4, v9, v4

    mul-float v10, v10, v4

    sub-float/2addr v3, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    invoke-direct {v0, v4, v6, v3}, Lorg/telegram/ui/Components/SeekBarWaveform;->addBar(Landroid/graphics/Path;FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    :goto_f
    const/4 v14, 0x0

    :cond_13
    iget-boolean v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->exploding:Z

    if-nez v3, :cond_15

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explosionRate:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    goto :goto_10

    :cond_14
    const/4 v6, 0x0

    goto :goto_11

    :cond_15
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    mul-float v4, v4, v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explodeProgress:F

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explosionRate:F

    mul-float v3, v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float v4, v4, v3

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_11
    cmpl-float v3, v14, v6

    if-lez v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    mul-float v14, v14, v3

    invoke-direct {v0, v1, v14}, Lorg/telegram/ui/Components/SeekBarWaveform;->drawFill(Landroid/graphics/Canvas;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/SeekBarWaveform;->drawFill(Landroid/graphics/Canvas;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->exploding:Z

    if-nez v3, :cond_17

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explosionRate:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->particles:Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

    if-nez v3, :cond_18

    new-instance v3, Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

    new-instance v4, Lorg/telegram/ui/Components/SeekBarWaveform$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/SeekBarWaveform$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SeekBarWaveform;)V

    const/16 v6, 0xfa

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/Components/SeekBarWaveform$Particles;-><init>(ILjava/lang/Runnable;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->particles:Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

    :cond_18
    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explodeProgress:F

    const v4, 0x3f7d70a4    # 0.99f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    if-eqz v4, :cond_1a

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    if-eqz v7, :cond_19

    sub-float v7, v2, v6

    int-to-float v3, v3

    sub-float/2addr v7, v3

    float-to-int v3, v7

    :cond_19
    if-ltz v3, :cond_1a

    array-length v4, v4

    if-ge v3, v4, :cond_1a

    mul-float v5, v5, v2

    int-to-float v4, v3

    sub-float/2addr v5, v4

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v4, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    aget v3, v5, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    mul-float v3, v3, v4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explodeProgress:F

    sub-float v5, v6, v5

    mul-float v2, v2, v5

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float v2, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveScaling:F

    mul-float v3, v3, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v9, v2

    div-float/2addr v6, v5

    sub-float/2addr v9, v6

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v7

    int-to-float v10, v10

    neg-float v11, v3

    sub-float/2addr v11, v6

    add-float/2addr v10, v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v2, v8

    add-float/2addr v2, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v7, v5

    int-to-float v5, v7

    add-float/2addr v3, v6

    add-float/2addr v5, v3

    invoke-virtual {v4, v9, v10, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->particles:Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarWaveform$Particles;->setColor(I)Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/SeekBarWaveform$Particles;->setEmitArea(Landroid/graphics/RectF;)Lorg/telegram/ui/Components/SeekBarWaveform$Particles;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->explosionRate:F

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/SeekBarWaveform$Particles;->draw(Landroid/graphics/Canvas;F)V

    :cond_1b
    :goto_13
    return-void
.end method

.method public explodeAt(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->exploding:Z

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->explodeProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarWaveform;->invalidate()V

    return-void
.end method

.method public getProgress()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    return v0
.end method

.method public isStartDraging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    return v0
.end method

.method public onTouch(IFF)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->isSeekBarDragAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    cmpg-float v2, p1, p2

    if-gtz v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_a

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_a

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarPressed()V

    return v0

    :cond_1
    if-eq p1, v0, :cond_8

    const/4 p3, 0x3

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    int-to-float p1, p1

    sub-float p1, p2, p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez p1, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_0

    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le p1, p3, :cond_4

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :cond_4
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float p1, p1

    iget p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float v1, p1, p3

    if-eqz v1, :cond_7

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    :cond_7
    return v0

    :cond_8
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz p2, :cond_a

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    if-eqz p1, :cond_9

    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarReleased()V

    return v0

    :cond_a
    return v1
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    return-void
.end method

.method public setColors(III)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    return-void
.end method

.method public setExplosionRate(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->explosionRate:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarWaveform;->invalidate()V

    return-void
.end method

.method public setLoading(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loading:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingStart:J

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loading:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->animatedValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->animatedValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarWaveform;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->isSeekBarDragAllowed()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->isUnread:Z

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :goto_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-nez v2, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    :cond_4
    :goto_2
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez p1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_3

    :cond_5
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le p1, p2, :cond_6

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :cond_6
    :goto_3
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    return-void
.end method

.method public setSent()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p1, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setSize(IIII)V

    return-void
.end method

.method public setSize(IIII)V
    .locals 2

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p2, :cond_0

    array-length p2, p2

    int-to-float p1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-eq p2, p1, :cond_1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    :cond_1
    if-eq p3, p4, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromWidth:I

    if-ne p1, p3, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    if-eq p1, p4, :cond_3

    :cond_2
    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromWidth:I

    iput p4, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    int-to-float p1, p3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    int-to-float p1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    goto :goto_0

    :cond_3
    if-ne p3, p4, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    :cond_4
    :goto_0
    return-void
.end method

.method public setWaveform([B)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->isSeekBarDragAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    :cond_0
    return-void
.end method
