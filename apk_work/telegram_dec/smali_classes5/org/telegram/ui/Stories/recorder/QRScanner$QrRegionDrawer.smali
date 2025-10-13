.class public Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/QRScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QrRegionDrawer"
.end annotation


# instance fields
.field private final animatedQPX:[Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedQPY:[Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedQr:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedQrCX:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedQrCY:Lorg/telegram/ui/Components/AnimatedFloat;

.field private hasQrResult:Z

.field private final invalidate:Ljava/lang/Runnable;

.field private final qrPaint:Landroid/graphics/Paint;

.field private final qrPath:Landroid/graphics/Path;

.field private qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v3, -0x21f9

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v5, 0x4e80cccd

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPath:Landroid/graphics/Path;

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->invalidate:Ljava/lang/Runnable;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x140

    const/4 v4, 0x0

    move-object v3, v11

    move-object/from16 v5, p1

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQr:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v8, 0xa0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQrCX:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQrCY:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v13

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v14

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v15

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    const/4 v10, 0x4

    new-array v3, v10, [Lorg/telegram/ui/Components/AnimatedFloat;

    const/16 v16, 0x0

    aput-object v11, v3, v16

    aput-object v13, v3, v2

    const/4 v11, 0x2

    aput-object v14, v3, v11

    const/4 v13, 0x3

    aput-object v15, v3, v13

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPX:[Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v3, v14

    const/4 v15, 0x4

    move-object v10, v12

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-instance v17, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object/from16 v3, v17

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-instance v18, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-instance v19, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object/from16 v3, v19

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    new-array v1, v15, [Lorg/telegram/ui/Components/AnimatedFloat;

    aput-object v14, v1, v16

    aput-object v17, v1, v2

    aput-object v18, v1, v11

    aput-object v19, v1, v13

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPY:[Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->points:[Landroid/graphics/PointF;

    array-length v3, v3

    if-gtz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQr:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->hasQrResult:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQrCX:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cx:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    iget v5, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQrCY:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cy:F

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v6

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f8ccccd    # 1.1f

    invoke-static {v8, v9, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v8, v8, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->points:[Landroid/graphics/PointF;

    array-length v5, v5

    const/4 v7, 0x4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    add-int/lit8 v9, v8, -0x1

    if-gez v9, :cond_1

    add-int/lit8 v9, v5, -0x1

    :cond_1
    add-int/lit8 v10, v8, 0x1

    if-lt v10, v5, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    move v11, v10

    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget-object v13, v12, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->points:[Landroid/graphics/PointF;

    aget-object v14, v13, v9

    aget-object v15, v13, v8

    aget-object v13, v13, v11

    iget v7, v2, Landroid/graphics/RectF;->left:F

    move/from16 v16, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPX:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v5, v5, v9

    move/from16 v17, v10

    iget v10, v14, Landroid/graphics/PointF;->x:F

    iget v12, v12, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cx:F

    sub-float/2addr v10, v12

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float v5, v5, v10

    add-float/2addr v7, v5

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPY:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v9, v10, v9

    iget v10, v14, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v12, v12, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cy:F

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    add-float/2addr v9, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    mul-float v9, v9, v10

    add-float/2addr v5, v9

    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPX:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v10, v10, v8

    iget v12, v15, Landroid/graphics/PointF;->x:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v14, v14, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cx:F

    sub-float/2addr v12, v14

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v10

    add-float/2addr v10, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v10, v10, v12

    add-float/2addr v9, v10

    iget v10, v2, Landroid/graphics/RectF;->top:F

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPY:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v8, v12, v8

    iget v12, v15, Landroid/graphics/PointF;->y:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v14, v14, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cy:F

    sub-float/2addr v12, v14

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    add-float/2addr v8, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v8, v8, v12

    add-float/2addr v10, v8

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPX:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v12, v12, v11

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v15, v15, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cx:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v12

    add-float/2addr v12, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v14

    mul-float v12, v12, v14

    add-float/2addr v8, v12

    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPY:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v11, v14, v11

    iget v13, v13, Landroid/graphics/PointF;->y:F

    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    iget v14, v14, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cy:F

    sub-float/2addr v13, v14

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    add-float/2addr v11, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float v11, v11, v13

    add-float/2addr v12, v11

    sub-float/2addr v7, v9

    sub-float/2addr v5, v10

    sub-float/2addr v8, v9

    sub-float/2addr v12, v10

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPath:Landroid/graphics/Path;

    const v13, 0x3e3851ec    # 0.18f

    mul-float v7, v7, v13

    add-float/2addr v7, v9

    mul-float v5, v5, v13

    add-float/2addr v5, v10

    invoke-virtual {v11, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPath:Landroid/graphics/Path;

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPath:Landroid/graphics/Path;

    mul-float v8, v8, v13

    add-float/2addr v9, v8

    mul-float v12, v12, v13

    add-float/2addr v10, v12

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v5, v16

    move/from16 v8, v17

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_2
    return-void
.end method

.method public hasNoDraw()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->hasQrResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQr:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setQrDetected(Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;)V
    .locals 6

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->qrResult:Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->hasQrResult:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQrCX:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cx:F

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQrCY:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cy:F

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->points:[Landroid/graphics/PointF;

    array-length v3, v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPX:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->points:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cx:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->animatedQPY:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->points:[Landroid/graphics/PointF;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Lorg/telegram/ui/Stories/recorder/QRScanner$Detected;->cy:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->hasQrResult:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
