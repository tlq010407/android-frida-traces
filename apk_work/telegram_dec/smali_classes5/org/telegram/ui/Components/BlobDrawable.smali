.class public Lorg/telegram/ui/Components/BlobDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AMPLITUDE_SPEED:F = 0.33f

.field public static FORM_BIG_MAX:F = 0.6f

.field public static FORM_SMALL_MAX:F = 0.6f

.field public static GLOBAL_SCALE:F = 1.0f

.field public static GRADIENT_SPEED_MAX:F = 0.01f

.field public static GRADIENT_SPEED_MIN:F = 0.5f

.field public static LIGHT_GRADIENT_SIZE:F = 0.5f

.field public static MAX_SPEED:F = 8.2f

.field public static MIN_SPEED:F = 0.8f

.field public static SCALE_BIG:F = 0.807f

.field public static SCALE_BIG_MIN:F = 0.878f

.field public static SCALE_SMALL:F = 0.704f

.field public static SCALE_SMALL_MIN:F = 0.926f


# instance fields
.field private final L:F

.field protected final N:F

.field public amplitude:F

.field protected angle:[F

.field protected angleNext:[F

.field private animateAmplitudeDiff:F

.field private animateToAmplitude:F

.field public cubicBezierK:F

.field protected final liteFlag:I

.field private final m:Landroid/graphics/Matrix;

.field public maxRadius:F

.field public minRadius:F

.field public paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointEnd:[F

.field private pointStart:[F

.field protected progress:[F

.field protected radius:[F

.field protected radiusNext:[F

.field protected final random:Ljava/util/Random;

.field protected speed:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 0
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->pointStart:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->pointEnd:[F

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->random:Ljava/util/Random;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->cubicBezierK:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    int-to-float v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->L:F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->radius:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->angle:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->radiusNext:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->angleNext:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->progress:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->speed:[F

    const/4 p1, 0x0

    :goto_0
    int-to-float v0, p1

    iget v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->radius:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->angle:[F

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob([F[FI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->radiusNext:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->angleNext:[F

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob([F[FI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->progress:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/BlobDrawable;->liteFlag:I

    return-void
.end method


# virtual methods
.method public draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lorg/telegram/ui/Components/BlobDrawable;->liteFlag:I

    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/BlobDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    int-to-float v5, v4

    iget v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Components/BlobDrawable;->progress:[F

    aget v7, v5, v4

    add-int/lit8 v8, v4, 0x1

    int-to-float v9, v8

    cmpg-float v6, v9, v6

    if-gez v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aget v5, v5, v6

    iget-object v9, v0, Lorg/telegram/ui/Components/BlobDrawable;->radius:[F

    aget v10, v9, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v7

    mul-float v10, v10, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/BlobDrawable;->radiusNext:[F

    aget v14, v13, v4

    mul-float v14, v14, v7

    add-float/2addr v10, v14

    aget v9, v9, v6

    sub-float/2addr v11, v5

    mul-float v9, v9, v11

    aget v13, v13, v6

    mul-float v13, v13, v5

    add-float/2addr v9, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/BlobDrawable;->angle:[F

    aget v14, v13, v4

    mul-float v14, v14, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/BlobDrawable;->angleNext:[F

    aget v15, v12, v4

    mul-float v15, v15, v7

    add-float/2addr v14, v15

    aget v7, v13, v6

    mul-float v7, v7, v11

    aget v6, v12, v6

    mul-float v6, v6, v5

    add-float/2addr v7, v6

    iget v5, v0, Lorg/telegram/ui/Components/BlobDrawable;->L:F

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v6, v11

    mul-float v5, v5, v6

    iget v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->cubicBezierK:F

    mul-float v5, v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v6, v14, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->pointStart:[F

    aput v1, v6, v3

    sub-float v10, v2, v10

    const/4 v11, 0x1

    aput v10, v6, v11

    add-float v12, v1, v5

    const/4 v13, 0x2

    aput v12, v6, v13

    const/4 v12, 0x3

    aput v10, v6, v12

    iget-object v10, v0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->pointEnd:[F

    aput v1, v6, v3

    sub-float v9, v2, v9

    aput v9, v6, v11

    sub-float v5, v1, v5

    aput v5, v6, v13

    aput v9, v6, v12

    iget-object v5, v0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v5, v0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/BlobDrawable;->m:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Components/BlobDrawable;->pointEnd:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Components/BlobDrawable;->path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/BlobDrawable;->pointStart:[F

    aget v6, v5, v3

    aget v5, v5, v11

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_2
    iget-object v14, v0, Lorg/telegram/ui/Components/BlobDrawable;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/BlobDrawable;->pointStart:[F

    aget v15, v4, v13

    aget v16, v4, v12

    iget-object v4, v0, Lorg/telegram/ui/Components/BlobDrawable;->pointEnd:[F

    aget v17, v4, v13

    aget v18, v4, v12

    aget v19, v4, v3

    aget v20, v4, v11

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v4, v8

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->path:Landroid/graphics/Path;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public generateBlob()V
    .locals 3

    .line 0
    const/4 v0, 0x0

    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->radius:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->angle:[F

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob([F[FI)V

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->radiusNext:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->angleNext:[F

    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob([F[FI)V

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->progress:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected generateBlob([F[FI)V
    .locals 6

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v0, v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget v3, p0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    sub-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BlobDrawable;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    rem-float/2addr v4, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    aput v3, p1, p3

    iget p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    div-float/2addr v1, p1

    int-to-float p1, p3

    mul-float v1, v1, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    int-to-float p1, p1

    rem-float/2addr p1, v5

    div-float/2addr p1, v5

    mul-float p1, p1, v0

    add-float/2addr v1, p1

    aput v1, p2, p3

    iget-object p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->speed:[F

    iget-object p2, p0, Lorg/telegram/ui/Components/BlobDrawable;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    int-to-float p2, p2

    rem-float/2addr p2, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, v5

    float-to-double v0, p2

    const-wide v2, 0x3f689374bc6a7efaL    # 0.003

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x3f916872b020c49cL    # 0.017

    add-double/2addr v0, v2

    double-to-float p2, v0

    aput p2, p1, p3

    return-void
.end method

.method public setValue(FZ)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->animateToAmplitude:F

    iget p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->liteFlag:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->animateToAmplitude:F

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    cmpl-float v0, p1, p2

    sub-float/2addr p1, p2

    if-lez v0, :cond_1

    const/high16 p2, 0x434d0000    # 205.0f

    :goto_0
    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/BlobDrawable;->animateAmplitudeDiff:F

    goto :goto_1

    :cond_1
    const p2, 0x43898000    # 275.0f

    goto :goto_0

    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    cmpl-float v0, p1, p2

    sub-float/2addr p1, p2

    if-lez v0, :cond_3

    const/high16 p2, 0x43a00000    # 320.0f

    goto :goto_0

    :cond_3
    const p2, 0x43bb8000    # 375.0f

    goto :goto_0

    :goto_1
    return-void
.end method

.method public update(FF)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->liteFlag:I

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->N:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->progress:[F

    aget v2, v1, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/BlobDrawable;->speed:[F

    aget v3, v3, v0

    sget v4, Lorg/telegram/ui/Components/BlobDrawable;->MIN_SPEED:F

    mul-float v4, v4, v3

    mul-float v3, v3, p1

    sget v5, Lorg/telegram/ui/Components/BlobDrawable;->MAX_SPEED:F

    mul-float v3, v3, v5

    mul-float v3, v3, p2

    add-float/2addr v4, v3

    add-float/2addr v2, v4

    aput v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x0

    aput v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->radius:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->radiusNext:[F

    aget v3, v2, v0

    aput v3, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->angle:[F

    iget-object v3, p0, Lorg/telegram/ui/Components/BlobDrawable;->angleNext:[F

    aget v4, v3, v0

    aput v4, v1, v0

    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob([F[FI)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateAmplitude(J)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/BlobDrawable;->animateAmplitudeDiff:F

    long-to-float p1, p1

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const/4 p1, 0x0

    cmpl-float p1, v2, p1

    if-lez p1, :cond_0

    cmpl-float p1, v1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p1, v1, v0

    if-gez p1, :cond_1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    :cond_1
    return-void
.end method
