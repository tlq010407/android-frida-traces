.class public Lorg/telegram/ui/Components/LoadingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private appearByGradient:Z

.field private appearGradient:Landroid/graphics/LinearGradient;

.field private appearGradientWidth:I

.field private appearMatrix:Landroid/graphics/Matrix;

.field private appearPaint:Landroid/graphics/Paint;

.field public backgroundPaint:Landroid/graphics/Paint;

.field public color1:Ljava/lang/Integer;

.field public color2:Ljava/lang/Integer;

.field public colorKey1:I

.field public colorKey2:I

.field private disappearGradient:Landroid/graphics/LinearGradient;

.field private disappearGradientWidth:I

.field private disappearMatrix:Landroid/graphics/Matrix;

.field private disappearPaint:Landroid/graphics/Paint;

.field private disappearStart:J

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientColor1:I

.field private gradientColor2:I

.field private gradientStrokeColor1:I

.field private gradientStrokeColor2:I

.field private gradientWidth:I

.field private gradientWidthScale:F

.field private lastBounds:Landroid/graphics/Rect;

.field private matrix:Landroid/graphics/Matrix;

.field public paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private rectF:Landroid/graphics/RectF;

.field public resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private speed:F

.field private start:J

.field public stroke:Z

.field public strokeColor1:Ljava/lang/Integer;

.field public strokeColor2:Ljava/lang/Integer;

.field private strokeGradient:Landroid/graphics/LinearGradient;

.field private strokeMatrix:Landroid/graphics/Matrix;

.field public strokePaint:Landroid/graphics/Paint;

.field private usePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    iput v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidthScale:F

    iput v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->speed:F

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public disappear()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->getPaintAlpha()I

    move-result v3

    if-gtz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    if-gtz v3, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :cond_2
    const/high16 v5, 0x43c80000    # 400.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidthScale:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_3
    iget v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:I

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_4
    iget v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:I

    iget-object v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor1:Ljava/lang/Integer;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_5
    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey1:I

    iget-object v10, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor2:Ljava/lang/Integer;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_3

    :cond_6
    iget v10, v0, Lorg/telegram/ui/Components/LoadingDrawable;->colorKey2:I

    iget-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v11, :cond_7

    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    if-ne v3, v11, :cond_7

    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor1:I

    if-ne v5, v11, :cond_7

    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor2:I

    if-ne v6, v11, :cond_7

    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor1:I

    if-ne v9, v11, :cond_7

    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor2:I

    if-eq v10, v11, :cond_8

    :cond_7
    iput v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    iput v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor1:I

    iput v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor2:I

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor1:I

    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientColor2:I

    filled-new-array {v6, v11, v6}, [I

    move-result-object v19

    new-array v6, v1, [F

    fill-array-data v6, :array_0

    sget-object v27, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v14, v3

    move/from16 v17, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v27

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor1:I

    iput v10, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor2:I

    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor1:I

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientStrokeColor2:I

    filled-new-array {v6, v6, v9, v6}, [I

    move-result-object v25

    const/4 v6, 0x4

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v3

    move/from16 v23, v5

    move-object/from16 v26, v6

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeGradient:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    const-wide/16 v14, 0x0

    cmp-long v3, v9, v14

    if-gez v3, :cond_9

    iput-wide v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    :cond_9
    iget-wide v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    sub-long v9, v5, v9

    long-to-float v3, v9

    const/high16 v9, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v9

    iget v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->speed:F

    mul-float v3, v3, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v3, v9

    float-to-double v10, v3

    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v9

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidth:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    rem-float/2addr v2, v3

    iget-wide v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    sub-long v9, v5, v9

    long-to-float v3, v9

    const v9, 0x44098000    # 550.0f

    div-float/2addr v3, v9

    iget-wide v9, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    cmp-long v11, v9, v14

    if-lez v11, :cond_a

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-long/2addr v5, v9

    long-to-float v5, v5

    const/high16 v6, 0x43a00000    # 320.0f

    div-float/2addr v5, v6

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float v5, v12, v5

    move v9, v5

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v5

    const/16 v6, 0x1f

    const/16 v10, 0xff

    const v14, 0xffffff

    const/4 v15, -0x1

    const/4 v11, 0x1

    if-eqz v5, :cond_d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v18

    div-int/lit8 v13, v18, 0x3

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    cmpg-float v13, v9, v12

    if-gez v13, :cond_d

    iget-object v13, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    if-nez v13, :cond_b

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    iput v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    int-to-float v5, v5

    filled-new-array {v15, v14}, [I

    move-result-object v25

    const/4 v11, 0x2

    new-array v12, v11, [F

    fill-array-data v12, :array_2

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v13

    move/from16 v23, v5

    move-object/from16 v26, v12

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    iget-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v11, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    :cond_b
    iget v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    if-eq v11, v5, :cond_c

    new-instance v11, Landroid/graphics/LinearGradient;

    iput v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    int-to-float v5, v5

    filled-new-array {v15, v14}, [I

    move-result-object v25

    const/4 v12, 0x2

    new-array v13, v12, [F

    fill-array-data v13, :array_3

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v11

    move/from16 v23, v5

    move-object/from16 v26, v13

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_c
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    neg-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    neg-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v5, v10, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v11, 0x1

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    :goto_6
    iget-boolean v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearByGradient:Z

    if-eqz v5, :cond_10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_10

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_e

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    iput v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    int-to-float v1, v1

    filled-new-array {v14, v15}, [I

    move-result-object v25

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_4

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v4

    move/from16 v23, v1

    move-object/from16 v26, v12

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_7

    :cond_e
    const/4 v5, 0x1

    iget v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    if-eq v4, v1, :cond_f

    new-instance v4, Landroid/graphics/LinearGradient;

    iput v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    int-to-float v1, v1

    filled-new-array {v14, v15}, [I

    move-result-object v25

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_5

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v4

    move/from16 v23, v1

    move-object/from16 v26, v12

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_f
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    neg-float v4, v4

    iget-object v12, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    neg-float v12, v12

    invoke-virtual {v1, v4, v12}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v1, v10, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/16 v17, 0x1

    goto :goto_8

    :cond_10
    const/16 v17, 0x0

    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->gradient:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/Components/LoadingDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iput-object v8, v0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_14

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_15
    if-eqz v17, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradientWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v3, v3, v1

    int-to-float v1, v2

    sub-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->appearPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    if-eqz v11, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradientWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v9, v9, v1

    int-to-float v1, v2

    sub-float/2addr v9, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    iget v2, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_18
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f2b851f    # 0.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f2b851f    # 0.67f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPaintAlpha()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isDisappeared()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisappearing()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43a00000    # 320.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->start:J

    return-void
.end method

.method public resetDisappear()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAppearByGradient(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->appearByGradient:Z

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-super {p0, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    return-void
.end method

.method public setColors(IIII)V
    .locals 0

    .line 0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->stroke:Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor1:Ljava/lang/Integer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokeColor2:Ljava/lang/Integer;

    return-void
.end method

.method public setGradientScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->gradientWidthScale:F

    return-void
.end method

.method public setRadii(FFFF)V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x2

    cmpl-float v2, v2, p1

    if-nez v2, :cond_1

    aget v2, v0, v6

    cmpl-float v2, v2, p2

    if-nez v2, :cond_1

    aget v2, v0, v5

    cmpl-float v2, v2, p3

    if-nez v2, :cond_1

    aget v2, v0, v4

    cmpl-float v2, v2, p4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    aput p1, v0, v3

    aput p1, v0, v1

    const/4 p1, 0x3

    aput p2, v0, p1

    aput p2, v0, v6

    const/4 p1, 0x5

    aput p3, v0, p1

    aput p3, v0, v5

    const/4 p1, 0x7

    aput p4, v0, p1

    aput p4, v0, v4

    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object p3, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_2
    return-void
.end method

.method public setRadii([F)V
    .locals 6

    .line 0
    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/LoadingDrawable;->radii:[F

    aget v4, v3, v0

    aget v5, p1, v0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    aput v5, v3, v0

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->lastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->rectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setRadiiDp(F)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1, p1, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(FFFF)V

    :goto_0
    return-void
.end method

.method public setRadiiDp(FFFF)V
    .locals 0

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadii(FFFF)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->speed:F

    return-void
.end method

.method public timeToDisappear()J
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/LoadingDrawable;->disappearStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x140

    sub-long/2addr v2, v0

    :cond_0
    return-wide v2
.end method

.method public updateBounds()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public usePath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingDrawable;->usePath:Landroid/graphics/Path;

    return-void
.end method
