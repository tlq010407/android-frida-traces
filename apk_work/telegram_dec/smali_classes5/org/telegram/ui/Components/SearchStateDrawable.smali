.class public Lorg/telegram/ui/Components/SearchStateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private alpha:I

.field private cx:F

.field private cy:F

.field private delaySetProgress:Ljava/lang/Runnable;

.field private fromState:I

.field private mn:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private progress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private progressAngleFrom:F

.field private progressAngleTo:F

.field private final progressRadius:F

.field private progressRect:Landroid/graphics/RectF;

.field private progressSegments:[F

.field private progressStart:J

.field private progressStartedWithOverTo:Z

.field private toState:I

.field private waitingForProgressToEnd:Z

.field private wereNotWaitingForProgressToEnd:Z


# direct methods
.method public static synthetic $r8$lambda$vUNpdGS-xmtEg60zr-a0-aT28JE(Lorg/telegram/ui/Components/SearchStateDrawable;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchStateDrawable;->lambda$setIconState$0(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->alpha:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressRadius:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStart:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleFrom:F

    iput v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleTo:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressSegments:[F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v3, Lorg/telegram/ui/Components/SearchStateDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/SearchStateDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SearchStateDrawable;)V

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x15e

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    const v1, 0x3faa9fbe    # 1.333f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private containsAngle(FFF)Z
    .locals 3

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p2, v0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    add-float/2addr p2, v0

    :cond_0
    rem-float/2addr p3, v0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    add-float/2addr p3, v0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p2, p3

    cmpl-float p2, p1, p2

    if-lez v2, :cond_4

    if-gez p2, :cond_3

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    if-ltz p2, :cond_5

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFF)V
    .locals 1

    const v0, 0x3d99999a    # 0.075f

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->w(F)F

    move-result v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;FFFF)V
    .locals 7

    invoke-static {p2, p3, p4, p5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const v1, 0x3d99999a    # 0.075f

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SearchStateDrawable;->w(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;FFFFFF)V
    .locals 2

    invoke-static {p2, p3, p4, p5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {p6, p7, p4, p5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3d99999a    # 0.075f

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SearchStateDrawable;->w(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p6, p7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$setIconState$0(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->delaySetProgress:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZZ)V

    return-void
.end method

.method private lerp3(FFFFFF)F
    .locals 0

    mul-float p1, p1, p4

    mul-float p2, p2, p5

    add-float/2addr p1, p2

    mul-float p3, p3, p6

    add-float/2addr p1, p3

    return p1
.end method

.method private setIconState(IZZ)V
    .locals 5

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, p1, :cond_1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->delaySetProgress:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->delaySetProgress:Ljava/lang/Runnable;

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_3

    if-ne p1, v1, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->delaySetProgress:Ljava/lang/Runnable;

    if-nez p3, :cond_2

    new-instance p3, Lorg/telegram/ui/Components/SearchStateDrawable$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/SearchStateDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SearchStateDrawable;IZ)V

    iput-object p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->delaySetProgress:Ljava/lang/Runnable;

    const-wide/16 p1, 0x41

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->delaySetProgress:Ljava/lang/Runnable;

    if-eqz p3, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    if-eqz p2, :cond_5

    iget p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    invoke-virtual {p0, p3, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    :cond_5
    const/4 p3, 0x0

    if-ne p1, v1, :cond_6

    const/high16 v3, 0x43340000    # 180.0f

    iput v3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleFrom:F

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStart:J

    goto :goto_0

    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    if-ne v3, v1, :cond_8

    if-nez p1, :cond_7

    const/high16 v3, -0x3dcc0000    # -45.0f

    iput v3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleTo:F

    goto :goto_0

    :cond_7
    iput p3, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleTo:F

    :cond_8
    :goto_0
    const/4 v3, 0x1

    if-eqz p2, :cond_a

    iget p2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    iput p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    if-ne p2, v1, :cond_9

    if-eq p1, v1, :cond_9

    const/4 v2, 0x1

    :cond_9
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_1

    :cond_a
    iput p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    iput p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private w(F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->mn:F

    mul-float v0, v0, p1

    return v0
.end method

.method private x(F)F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->cx:F

    iget v1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->mn:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private y(F)F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->cy:F

    iget v1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->mn:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->mn:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->cx:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->cy:F

    iget v5, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->alpha:I

    const/16 v10, 0xff

    if-ge v5, v10, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_0
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v13

    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    iget v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-nez v0, :cond_3

    if-nez v1, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move v7, v13

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    sub-float v1, v11, v13

    move v7, v1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    const/4 v14, 0x1

    iget v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-ne v0, v14, :cond_6

    if-ne v1, v14, :cond_5

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    move v15, v13

    goto :goto_2

    :cond_6
    if-ne v1, v14, :cond_7

    sub-float v1, v11, v13

    move v15, v1

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    :goto_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_9

    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-ne v0, v6, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    move v5, v13

    goto :goto_3

    :cond_9
    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-ne v0, v6, :cond_a

    sub-float v0, v11, v13

    move v5, v0

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v7, v12

    if-lez v0, :cond_b

    invoke-direct {v8, v4}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    const v1, 0x3ee353f8    # 0.444f

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v2

    invoke-static {v0, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-direct {v8, v3}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v2

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v1

    invoke-static {v2, v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    const v2, 0x3e54fdf4    # 0.208f

    invoke-direct {v8, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->w(F)F

    move-result v2

    invoke-static {v12, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-direct {v8, v9, v0, v1, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->drawCircle(Landroid/graphics/Canvas;FFF)V

    :cond_b
    const/high16 v16, 0x42340000    # 45.0f

    const v2, 0x3e76ae7d    # 0.2409f

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v7, v12

    if-gtz v0, :cond_d

    cmpl-float v0, v15, v12

    if-lez v0, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v18, v5

    const/4 v0, 0x0

    const v10, 0x3e76ae7d    # 0.2409f

    const/high16 v11, 0x3f400000    # 0.75f

    const/4 v12, 0x2

    const/high16 v14, 0x3f000000    # 0.5f

    goto/16 :goto_9

    :cond_d
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v0, v7, v16

    iget v3, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->cx:F

    iget v4, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->cy:F

    invoke-virtual {v9, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v0, 0x3f69fbe7    # 0.914f

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v3

    const v0, 0x3f438866    # 0.7638f

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v4

    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-ne v0, v6, :cond_e

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    :goto_5
    move/from16 v17, v0

    goto :goto_6

    :cond_e
    invoke-direct {v8, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    goto :goto_5

    :goto_6
    move-object/from16 v0, p0

    const/high16 v11, 0x3f400000    # 0.75f

    move v1, v3

    const v3, 0x3e76ae7d    # 0.2409f

    move v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    const v10, 0x3e76ae7d    # 0.2409f

    move/from16 v3, v17

    const/high16 v14, 0x3f000000    # 0.5f

    move v4, v7

    move/from16 v18, v5

    move v5, v15

    const/4 v12, 0x2

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SearchStateDrawable;->lerp3(FFFFFF)F

    move-result v19

    invoke-direct {v8, v14}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v20

    const v0, 0x3f2872b0    # 0.658f

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v1

    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v2

    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-ne v0, v12, :cond_f

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    :goto_7
    move v3, v0

    goto :goto_8

    :cond_f
    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    goto :goto_7

    :goto_8
    move-object/from16 v0, p0

    move v4, v7

    move v5, v15

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SearchStateDrawable;->lerp3(FFFFFF)F

    move-result v4

    invoke-direct {v8, v14}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v5

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SearchStateDrawable;->drawLine(Landroid/graphics/Canvas;FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x0

    :goto_9
    cmpl-float v1, v15, v0

    if-lez v1, :cond_11

    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->fromState:I

    if-ne v0, v12, :cond_10

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v1

    invoke-static {v0, v1, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    :goto_a
    move v4, v0

    goto :goto_b

    :cond_10
    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    goto :goto_a

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float v7, v7, v16

    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->cx:F

    iget v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->cy:F

    invoke-virtual {v9, v7, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v0, 0x3e7b15b5    # 0.2452f

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v1

    mul-float v1, v1, v15

    add-float v2, v4, v1

    invoke-direct {v8, v14}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v1

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v8, v3}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v5

    invoke-static {v1, v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-direct {v8, v14}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v5

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v0

    mul-float v0, v0, v15

    add-float v6, v4, v0

    invoke-direct {v8, v14}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v0

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v1

    invoke-static {v0, v1, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/SearchStateDrawable;->drawLines(Landroid/graphics/Canvas;FFFFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    move/from16 v1, v18

    const/4 v0, 0x0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_17

    iget-wide v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStart:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_12

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStart:J

    iget-boolean v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    iput-boolean v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->wereNotWaitingForProgressToEnd:Z

    :cond_12
    iget-wide v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStart:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStart:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x45a8c000    # 5400.0f

    rem-float/2addr v0, v2

    iget-object v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressSegments:[F

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getSegments(F[F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressSegments:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result v4

    if-eq v4, v12, :cond_13

    iget-boolean v4, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    if-nez v4, :cond_13

    const/high16 v4, 0x43340000    # 180.0f

    sub-float v5, v3, v4

    const/high16 v6, 0x43b40000    # 360.0f

    div-float/2addr v5, v6

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-float v5, v14

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    const/4 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleTo:F

    add-float/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v5, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleTo:F

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    :cond_13
    iget v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleTo:F

    iget v4, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleFrom:F

    add-float v5, v4, v3

    add-float/2addr v4, v0

    invoke-direct {v8, v1, v5, v4}, Lorg/telegram/ui/Components/SearchStateDrawable;->containsAngle(FFF)Z

    move-result v1

    iget-boolean v4, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    if-eqz v4, :cond_14

    iget-boolean v5, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->wereNotWaitingForProgressToEnd:Z

    if-nez v5, :cond_14

    iput-boolean v4, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->wereNotWaitingForProgressToEnd:Z

    iput-boolean v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStartedWithOverTo:Z

    :cond_14
    iget-boolean v5, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStartedWithOverTo:Z

    if-eqz v5, :cond_15

    if-nez v1, :cond_15

    iput-boolean v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStartedWithOverTo:Z

    :cond_15
    if-eqz v4, :cond_16

    if-eqz v1, :cond_16

    iget-boolean v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressStartedWithOverTo:Z

    if-nez v1, :cond_16

    iput-boolean v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->waitingForProgressToEnd:Z

    :cond_16
    iget-object v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v8, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v4

    invoke-direct {v8, v2}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v2

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/SearchStateDrawable;->x(F)F

    move-result v5

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/SearchStateDrawable;->y(F)F

    move-result v6

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressRect:Landroid/graphics/RectF;

    iget v2, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->progressAngleFrom:F

    add-float/2addr v2, v3

    sub-float v3, v0, v3

    iget-object v5, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_17
    iget v0, v8, Lorg/telegram/ui/Components/SearchStateDrawable;->alpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v13, v0

    if-gez v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_19
    return-void
.end method

.method public getIconState()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->toState:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

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
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->alpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->alpha:I

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setIconState(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    return-void
.end method

.method public setIconState(IZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZZ)V

    return-void
.end method
