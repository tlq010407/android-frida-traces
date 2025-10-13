.class public Lorg/telegram/ui/Components/BatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private connectorPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private fillValue:F

.field private fillValueAnimator:Landroid/animation/ValueAnimator;

.field private paintReference:Landroid/graphics/Paint;

.field private rectTmp:Landroid/graphics/RectF;

.field private scale:F

.field private strokePaint:Landroid/graphics/Paint;

.field private translateY:F


# direct methods
.method public static synthetic $r8$lambda$Ogs7G8iRdKf9wrLopXvdru_uIB8(Lorg/telegram/ui/Components/BatteryDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BatteryDrawable;->lambda$setFillValue$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->connectorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->translateY:F

    iput v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValue:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(FIIF)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/BatteryDrawable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BatteryDrawable;->setFillValue(FZ)V

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/BatteryDrawable;->setColor(II)V

    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/BatteryDrawable;->setScale(F)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/BatteryDrawable;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValue:F

    return p1
.end method

.method private synthetic lambda$setFillValue$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValue:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public colorFromPaint(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->paintReference:Landroid/graphics/Paint;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lorg/telegram/ui/Components/BatteryDrawable;->translateY:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v8, v0, Lorg/telegram/ui/Components/BatteryDrawable;->translateY:F

    float-to-int v8, v8

    add-int/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/BatteryDrawable;->paintReference:Landroid/graphics/Paint;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/BatteryDrawable;->setColor(I)V

    :cond_1
    iget v8, v0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v8, v0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    int-to-float v5, v5

    int-to-float v10, v6

    invoke-virtual {v7, v8, v8, v5, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v3, v3

    const v10, 0x4182a3d7    # 16.33f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float v11, v3, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v1

    const v13, 0x3faa3d71    # 1.33f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    sub-float/2addr v11, v14

    int-to-float v2, v2

    int-to-float v4, v4

    const v14, 0x412547ae    # 10.33f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    sub-float v15, v4, v15

    div-float/2addr v15, v12

    add-float/2addr v15, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v10, v3

    div-float/2addr v10, v12

    add-float/2addr v10, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    sub-float/2addr v10, v13

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    add-float/2addr v13, v4

    div-float/2addr v13, v12

    add-float/2addr v13, v2

    invoke-virtual {v5, v11, v15, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    const v10, 0x40151eb8    # 2.33f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget-object v13, v0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v11, v10, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float v11, v3, v11

    div-float/2addr v11, v12

    add-float/2addr v11, v1

    const v13, 0x3fd47ae1    # 1.66f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    sub-float/2addr v11, v14

    const v14, 0x40ea8f5c    # 7.33f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    sub-float v15, v4, v15

    div-float/2addr v15, v12

    add-float/2addr v15, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v16

    sub-float v16, v3, v16

    div-float v16, v16, v12

    add-float v16, v1, v16

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    sub-float v16, v16, v13

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    iget v13, v0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValue:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float v13, v13, v10

    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float v8, v16, v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v4, v10

    div-float/2addr v4, v12

    add-float/2addr v2, v4

    invoke-virtual {v5, v11, v15, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    const v4, 0x3f547ae1    # 0.83f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/Components/BatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    const/high16 v4, 0x418c0000    # 17.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, v3

    const v8, 0x40951eb8    # 4.66f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v5, v10

    div-float/2addr v5, v12

    add-float/2addr v5, v1

    int-to-float v6, v6

    const v10, 0x4029999a    # 2.65f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    sub-float v11, v6, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v12

    add-float/2addr v1, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v6, v3

    invoke-virtual {v2, v5, v11, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/BatteryDrawable;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/BatteryDrawable;->connectorPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float v0, v0, v1

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
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->connectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Components/BatteryDrawable;->setColor(II)V

    return-void
.end method

.method public setColor(II)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->connectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->connectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFillValue(FZ)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    if-nez p2, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValue:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValue:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/BatteryDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BatteryDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BatteryDrawable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/BatteryDrawable$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/BatteryDrawable$1;-><init>(Lorg/telegram/ui/Components/BatteryDrawable;F)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->fillValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->scale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/BatteryDrawable;->translateY:F

    return-void
.end method
