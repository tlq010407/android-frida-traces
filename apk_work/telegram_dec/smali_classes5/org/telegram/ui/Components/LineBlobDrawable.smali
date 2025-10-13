.class public Lorg/telegram/ui/Components/LineBlobDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final N:F

.field public maxRadius:F

.field public minRadius:F

.field public paint:Landroid/graphics/Paint;

.field public path:Landroid/graphics/Path;

.field private progress:[F

.field private radius:[F

.field private radiusNext:[F

.field final random:Ljava/util/Random;

.field private speed:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->random:Ljava/util/Random;

    int-to-float v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->N:F

    add-int/2addr p1, v1

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->radius:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->radiusNext:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->progress:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->speed:[F

    const/4 p1, 0x0

    :goto_0
    int-to-float v0, p1

    iget v1, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->N:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->radius:[F

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/LineBlobDrawable;->generateBlob([FI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->radiusNext:[F

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/LineBlobDrawable;->generateBlob([FI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->progress:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateBlob([FI)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    iget v1, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    sub-float/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    aput v1, p1, p2

    iget-object p1, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->speed:[F

    iget-object v0, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-float v0, v0

    rem-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v3

    float-to-double v0, v0

    const-wide v2, 0x3f689374bc6a7efaL    # 0.003

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x3f916872b020c49cL    # 0.017

    add-double/2addr v0, v2

    double-to-float v0, v0

    aput v0, p1, p2

    return-void
.end method


# virtual methods
.method public draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    const/16 v1, 0x200

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    :goto_0
    int-to-float v3, v1

    iget v6, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->N:F

    cmpg-float v7, v3, v6

    if-gtz v7, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->progress:[F

    aget v3, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->radius:[F

    aget v6, v6, v1

    sub-float v8, v7, v3

    mul-float v6, v6, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->radiusNext:[F

    aget v8, v8, v1

    mul-float v8, v8, v3

    add-float/2addr v6, v8

    sub-float v3, p2, v6

    mul-float v3, v3, p8

    sub-float v7, v7, p8

    mul-float v6, p7, v7

    add-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->progress:[F

    add-int/lit8 v9, v1, -0x1

    aget v10, v8, v9

    iget-object v11, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->radius:[F

    aget v12, v11, v9

    sub-float v13, v7, v10

    mul-float v12, v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->radiusNext:[F

    aget v14, v13, v9

    mul-float v14, v14, v10

    add-float/2addr v12, v14

    aget v8, v8, v1

    aget v10, v11, v1

    sub-float v11, v7, v8

    mul-float v10, v10, v11

    aget v11, v13, v1

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    sub-float v8, v4, v2

    div-float/2addr v8, v6

    int-to-float v6, v9

    mul-float v6, v6, v8

    mul-float v18, v8, v3

    sub-float v8, v18, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v16, v6, v8

    sub-float v6, p2, v12

    mul-float v6, v6, p8

    sub-float v7, v7, p8

    mul-float v7, v7, p7

    add-float v15, v6, v7

    sub-float v6, p2, v10

    mul-float v6, v6, p8

    add-float v19, v6, v7

    iget-object v13, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    move/from16 v14, v16

    move/from16 v17, v19

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v6, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->N:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/LineBlobDrawable;->path:Landroid/graphics/Path;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public update(FF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->N:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->progress:[F

    aget v2, v1, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->speed:[F

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

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    aput v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->radius:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/LineBlobDrawable;->radiusNext:[F

    aget v3, v2, v0

    aput v3, v1, v0

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/LineBlobDrawable;->generateBlob([FI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
