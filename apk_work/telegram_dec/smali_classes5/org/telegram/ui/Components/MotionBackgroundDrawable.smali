.class public Lorg/telegram/ui/Components/MotionBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static errorWhileGenerateLegacyBitmap:Z

.field private static legacyBitmapScale:F

.field private static final useLegacyBitmap:Z

.field private static final useSoftLight:Z


# instance fields
.field private alpha:I

.field private animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

.field private backgroundAlpha:F

.field private bitmapHeight:I

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bitmapWidth:I

.field private colors:[I

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private disableGradientShaderScaling:Z

.field private fastAnimation:Z

.field private gradientCanvas:Landroid/graphics/Canvas;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private gradientFromBitmap:Landroid/graphics/Bitmap;

.field private gradientFromCanvas:Landroid/graphics/Canvas;

.field private gradientShader:Landroid/graphics/BitmapShader;

.field private gradientToBitmap:[Landroid/graphics/Bitmap;

.field private ignoreInterpolator:Z

.field private indeterminateSpeedScale:F

.field private intensity:I

.field private final interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private invalidateLegacy:Z

.field private isIndeterminateAnimation:Z

.field public isPreview:Z

.field private lastUpdateTime:J

.field private legacyBitmap:Landroid/graphics/Bitmap;

.field private legacyBitmap2:Landroid/graphics/Bitmap;

.field private legacyBitmapColor:I

.field private legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

.field private legacyCanvas:Landroid/graphics/Canvas;

.field private legacyCanvas2:Landroid/graphics/Canvas;

.field private matrix:Landroid/graphics/Matrix;

.field private overrideBitmapPaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private parentView:Ljava/lang/ref/WeakReference;

.field private patternAlpha:F

.field private patternBitmap:Landroid/graphics/Bitmap;

.field private patternBounds:Landroid/graphics/Rect;

.field private patternColorFilter:Landroid/graphics/ColorFilter;

.field private phase:I

.field public posAnimationProgress:F

.field private postInvalidateParent:Z

.field private rect:Landroid/graphics/RectF;

.field private rotatingPreview:Z

.field private rotationBack:Z

.field private roundRadius:I

.field private translationY:I

.field private updateAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$JhxzxEkcblM4z5jLTOxcuhQAC8s(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sput-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    sput-boolean v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const v0, 0x3f333333    # 0.7f

    sput v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, -0x785d7c

    const v1, -0x20936

    const v2, -0xbd92a9

    const v3, -0x81b75

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/16 v1, 0x64

    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/16 v1, 0xff

    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    const/16 v0, 0x3c

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    const/16 v0, 0x50

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->init()V

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 8

    .line 0
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIIIZZ)V
    .locals 17

    .line 0
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, -0x785d7c

    const v1, -0x20936

    const v2, -0xbd92a9

    const v3, -0x81b75

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide v9, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v11, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/16 v1, 0x64

    iput v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/16 v1, 0xff

    iput v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    const/16 v0, 0x3c

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    const/16 v0, 0x50

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    if-eqz p7, :cond_0

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    :cond_0
    move/from16 v0, p6

    iput-boolean v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->init()V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 7

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZ)V

    return-void
.end method

.method private createLegacyBitmap()V
    .locals 5

    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v0, :cond_4

    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_4

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iput-boolean v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    sput-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_4
    :goto_0
    return-void
.end method

.method public static getPatternColor(IIII)I
    .locals 1

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isDark(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    invoke-static {p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    if-eqz p3, :cond_2

    invoke-static {p3, p0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_2
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(IZ)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x64000000

    or-int/2addr p0, p1

    return p0

    :cond_3
    const/high16 p0, -0x1000000

    return p0
.end method

.method private init()V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v3, 0x1

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    :cond_1
    return-void
.end method

.method private invalidateParent()V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public static isDark(IIII)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p0, p3}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 p1, 0x2

    aget p0, p0, p1

    const p1, 0x3e99999a    # 0.3f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v9, v7, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v4, v4, v8

    mul-float v5, v5, v8

    sub-float v8, v6, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v10, v7, v5

    div-float/2addr v10, v9

    iget-boolean v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v11, :cond_1

    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v11

    add-float/2addr v8, v12

    iget v12, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v12

    add-float/2addr v10, v13

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/high16 v16, 0x42c80000    # 100.0f

    const/4 v14, 0x0

    if-gez v11, :cond_c

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    const/high16 v5, -0x1000000

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_10

    sget-boolean v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v5, :cond_8

    sget-boolean v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v2

    div-float v5, v6, v2

    int-to-float v4, v4

    div-float v10, v7, v4

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v2, v2, v5

    mul-float v4, v4, v5

    sub-float/2addr v6, v2

    div-float/2addr v6, v9

    sub-float/2addr v7, v4

    div-float/2addr v7, v9

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v4, v7

    invoke-virtual {v5, v6, v7, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v8

    aget v2, v2, v13

    invoke-static {v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    if-eqz v4, :cond_2

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v15, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_10

    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v15, v15, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v10, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v14, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float v5, v6, v3

    int-to-float v4, v4

    div-float v10, v7, v4

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v3, v3, v5

    mul-float v4, v4, v5

    sub-float/2addr v6, v3

    div-float/2addr v6, v9

    sub-float/2addr v7, v4

    div-float/2addr v7, v9

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v3, v6

    add-float/2addr v4, v7

    invoke-virtual {v5, v6, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    mul-float v4, v4, v12

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    sget v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v14, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v5, v5, v6

    sub-float v2, v3, v2

    mul-float v5, v5, v2

    float-to-int v2, v5

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v3, v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_6

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    goto/16 :goto_3

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_9

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v10, v3

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v10, v7, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v4, v4, v8

    mul-float v5, v5, v8

    sub-float/2addr v6, v4

    div-float/2addr v6, v9

    sub-float/2addr v7, v5

    div-float/2addr v7, v9

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    float-to-int v5, v6

    int-to-float v5, v5

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    if-eqz v3, :cond_a

    const v3, 0x3fb33333    # 1.4f

    cmpl-float v3, v8, v3

    if-gtz v3, :cond_a

    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v8, v3

    if-gez v3, :cond_b

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_c
    iget v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    if-eqz v11, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v15, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_e

    float-to-int v3, v8

    float-to-int v11, v10

    add-float/2addr v8, v4

    float-to-int v4, v8

    add-float/2addr v10, v5

    float-to-int v5, v10

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v4, v8

    add-float/2addr v5, v10

    invoke-virtual {v2, v8, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->overrideBitmapPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_f

    goto :goto_4

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v4, v3

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v14, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v4, v6, v2

    int-to-float v3, v3

    div-float v5, v7, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v2, v2, v4

    mul-float v3, v3, v4

    sub-float/2addr v6, v2

    div-float/2addr v6, v9

    sub-float/2addr v7, v3

    div-float/2addr v7, v9

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v3, v7

    invoke-virtual {v4, v6, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float v6, v4, v2

    int-to-float v3, v3

    div-float v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v2, v2, v6

    mul-float v3, v3, v6

    sub-float/2addr v4, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    iget-boolean v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    add-float/2addr v4, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v7

    add-float/2addr v5, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v6, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x1000000

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_3

    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    if-eqz v6, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    float-to-int v1, v4

    float-to-int v6, v5

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->overrideBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v2, v1

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public drawPattern(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float v6, v4, v2

    int-to-float v3, v3

    div-float v7, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v2, v2, v6

    mul-float v3, v3, v6

    sub-float v2, v4, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v3, v5, v3

    div-float/2addr v3, v6

    iget-boolean v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v7, :cond_1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v7

    add-float/2addr v2, v8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v8

    add-float/2addr v3, v9

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/4 v8, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v10, 0x0

    if-gez v7, :cond_c

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_d

    sget-boolean v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v11, :cond_8

    sget-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v0

    div-float v7, v4, v0

    int-to-float v2, v2

    div-float v12, v5, v2

    invoke-static {v7, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v0, v0, v7

    mul-float v2, v2, v7

    sub-float/2addr v4, v0

    div-float/2addr v4, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v0, v4

    add-float/2addr v2, v5

    invoke-virtual {v6, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x2

    aget v2, v0, v2

    aget v3, v0, v3

    aget v0, v0, v8

    invoke-static {v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eqz v2, :cond_2

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    if-eq v0, v2, :cond_4

    :cond_3
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v11, v11, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v13, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7, v10, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v1, v1

    div-float v7, v4, v1

    int-to-float v2, v2

    div-float v11, v5, v2

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v1, v1, v7

    mul-float v2, v2, v7

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v1, v4

    add-float/2addr v2, v5

    invoke-virtual {v6, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    sget v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v10, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v0, v12

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v2, v2, v3

    sub-float/2addr v12, v0

    mul-float v2, v2, v12

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    goto/16 :goto_3

    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    if-nez v7, :cond_9

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v12, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v12, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v7, v4, v2

    int-to-float v3, v3

    div-float v11, v5, v3

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v2, v2, v7

    mul-float v3, v3, v7

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    float-to-int v3, v4

    int-to-float v3, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    if-eqz v1, :cond_a

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v1, v7, v1

    if-gtz v1, :cond_a

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v7, v1

    if-gez v1, :cond_b

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    div-float v2, v4, v0

    int-to-float v1, v1

    div-float v3, v5, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v0, v0, v2

    mul-float v1, v1, v2

    sub-float/2addr v4, v0

    div-float/2addr v4, v6

    sub-float/2addr v5, v1

    div-float/2addr v5, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v0, v4

    add-float/2addr v1, v5

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    :cond_d
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public generateNextGradient()V
    .locals 12

    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas2:Landroid/graphics/Canvas;

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas2:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    :cond_4
    const/4 v0, -0x1

    :goto_4
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    int-to-float v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v7, v2, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    :goto_5
    move-object v4, v0

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v0

    goto :goto_5

    :goto_6
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v5, 0x1

    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    move v0, v1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapShader()Landroid/graphics/BitmapShader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    return-object v0
.end method

.method public getIntensity()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPatternBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPatternColor()I
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v0

    return v0
.end method

.method public getPhase()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    return v0
.end method

.method public getPosAnimationProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    return v0
.end method

.method public hasPattern()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndeterminateAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    return v0
.end method

.method public isOneColor()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ne v2, v4, :cond_0

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ne v2, v4, :cond_0

    const/4 v4, 0x3

    aget v0, v0, v4

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public rotatePreview(Z)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(IIII)V
    .locals 7

    .line 0
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    return-void
.end method

.method public setColors(IIIIIZ)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v6

    filled-new-array/range {p1 .. p2}, [I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_0
    iput-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v1, :cond_1

    aget v7, v5, v10

    if-ne v7, v2, :cond_1

    aget v7, v5, v9

    if-ne v7, v3, :cond_1

    aget v7, v5, v8

    if-ne v7, v4, :cond_1

    return-void

    :cond_1
    aput v1, v5, v6

    aput v2, v5, v10

    aput v3, v5, v9

    aput v4, v5, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    iget v13, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v14

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v17

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v12, 0x1

    move-object/from16 v18, v1

    invoke-static/range {v11 .. v18}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    if-eqz p6, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    :cond_2
    return-void
.end method

.method public setColors(IIIILandroid/graphics/Bitmap;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x1

    move-object v1, p5

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    return-void
.end method

.method public setIndeterminateAnimation(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3e000000    # 0.125f

    div-float v2, v0, v1

    float-to-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    return-void
.end method

.method public setIndeterminateSpeedScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setPatternAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setPatternBitmap(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPatternBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPatternBitmap(ILandroid/graphics/Bitmap;Z)V
    .locals 3

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    iput-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    if-ltz p1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, v1}, Lorg/telegram/messenger/ImageReceiver$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    :cond_2
    :goto_0
    if-gez p1, :cond_4

    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/ComposeShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    :cond_4
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    return-void
.end method

.method public setPatternColorFilter(I)V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setPhase(I)V
    .locals 9

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x1

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    return-void
.end method

.method public setPosAnimationProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public setPostInvalidateParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setTranslationY(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    return-void
.end method

.method public switchToNextPosition()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    return-void
.end method

.method public switchToNextPosition(Z)V
    .locals 3

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez v0, :cond_1

    const/4 v0, 0x7

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->generateNextGradient()V

    :cond_2
    :goto_0
    return-void
.end method

.method public switchToPrevPosition(Z)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->generateNextGradient()V

    return-void
.end method

.method public updateAnimation(Z)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x14

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const-wide/16 v3, 0x11

    :cond_0
    iput-wide v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lastUpdateTime:J

    const-wide/16 v1, 0x1

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_2

    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :cond_2
    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpg-float v7, v6, v5

    if-gez v7, :cond_25

    iget-boolean v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v7, 0x1

    :goto_1
    const/4 v10, 0x2

    if-eqz v1, :cond_6

    long-to-float v1, v3

    const v3, 0x463b8000    # 12000.0f

    div-float/2addr v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    mul-float v1, v1, v3

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v6, v5

    if-ltz v1, :cond_5

    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :cond_5
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v3, 0x3e000000    # 0.125f

    div-float v4, v1, v3

    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    sub-float v1, v5, v1

    move v15, v1

    const/4 v7, 0x1

    goto/16 :goto_d

    :cond_6
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    const/4 v11, 0x7

    if-eqz v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3e800000    # 0.25f

    cmpg-float v14, v1, v13

    if-gtz v14, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    cmpg-float v14, v1, v12

    if-gtz v14, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    cmpg-float v1, v1, v6

    if-gtz v1, :cond_9

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-eqz v14, :cond_a

    invoke-interface {v14, v0}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    goto :goto_4

    :cond_a
    iget v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    long-to-float v3, v3

    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v4, :cond_b

    const/high16 v4, 0x447a0000    # 1000.0f

    goto :goto_3

    :cond_b
    const/high16 v4, 0x44fa0000    # 2000.0f

    :goto_3
    div-float/2addr v3, v4

    add-float/2addr v14, v3

    iput v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :goto_4
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    iput v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-nez v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_5

    :cond_d
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-eqz v4, :cond_f

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_e

    cmpl-float v4, v3, v5

    if-nez v4, :cond_f

    :cond_e
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    :cond_f
    if-nez v1, :cond_10

    cmpl-float v4, v3, v13

    if-gtz v4, :cond_12

    :cond_10
    if-ne v1, v9, :cond_11

    cmpl-float v4, v3, v12

    if-gtz v4, :cond_12

    :cond_11
    if-ne v1, v10, :cond_14

    cmpl-float v1, v3, v6

    if-lez v1, :cond_14

    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v1, :cond_13

    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_14

    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    goto :goto_6

    :cond_13
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    sub-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez v1, :cond_14

    iput v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_14
    :goto_6
    cmpg-float v1, v3, v13

    if-gtz v1, :cond_15

    :goto_7
    div-float/2addr v3, v13

    move v1, v3

    goto :goto_8

    :cond_15
    cmpg-float v1, v3, v12

    if-gtz v1, :cond_16

    sub-float/2addr v3, v13

    goto :goto_7

    :cond_16
    cmpg-float v1, v3, v6

    if-gtz v1, :cond_17

    sub-float/2addr v3, v12

    goto :goto_7

    :cond_17
    sub-float/2addr v3, v6

    goto :goto_7

    :goto_8
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v3, :cond_18

    sub-float v1, v5, v1

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_18

    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_20

    goto :goto_c

    :cond_18
    move v15, v1

    goto :goto_d

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-eqz v1, :cond_1a

    invoke-interface {v1, v0}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    goto :goto_a

    :cond_1a
    long-to-float v1, v3

    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    if-eqz v3, :cond_1b

    const/high16 v3, 0x43960000    # 300.0f

    goto :goto_9

    :cond_1b
    const/high16 v3, 0x43fa0000    # 500.0f

    :goto_9
    div-float/2addr v1, v3

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :goto_a
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1c

    iput v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-nez v1, :cond_1d

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-nez v1, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_b

    :cond_1d
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :goto_b
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-eqz v3, :cond_1f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1e

    cmpl-float v3, v1, v5

    if-nez v3, :cond_1f

    :cond_1e
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    :cond_1f
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v3, :cond_18

    sub-float v1, v5, v1

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_18

    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_20

    :goto_c
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_20
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_d
    if-eqz v7, :cond_21

    iget-object v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v13, 0x1

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v19}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    iput-boolean v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    goto :goto_11

    :cond_21
    sget-boolean v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v1, :cond_22

    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v1, :cond_22

    goto :goto_11

    :cond_22
    cmpl-float v1, v15, v5

    if-eqz v1, :cond_24

    const v1, 0x3eaaaaab

    div-float v3, v15, v1

    float-to-int v3, v3

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_23

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    :goto_e
    invoke-virtual {v5, v6, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_23
    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    goto :goto_e

    :goto_f
    int-to-float v4, v3

    mul-float v4, v4, v1

    sub-float/2addr v15, v4

    div-float/2addr v15, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v15, v15, v4

    float-to-int v4, v15

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    :goto_10
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v10

    goto :goto_10

    :goto_11
    if-eqz p1, :cond_25

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    :cond_25
    return-void
.end method
