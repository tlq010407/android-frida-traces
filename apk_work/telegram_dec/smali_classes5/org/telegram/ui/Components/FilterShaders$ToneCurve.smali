.class Lorg/telegram/ui/Components/FilterShaders$ToneCurve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterShaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToneCurve"
.end annotation


# instance fields
.field private blueCurve:[F

.field private curveTexture:[I

.field private greenCurve:[F

.field private redCurve:[F

.field private rgbCompositeCurve:[F


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->curveTexture:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x3ef0a3d7    # 0.47f

    const v5, 0x3f11eb85    # 0.57f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->getPreparedSplineCurve(Ljava/util/ArrayList;)[F

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->rgbCompositeCurve:[F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->getPreparedSplineCurve(Ljava/util/ArrayList;)[F

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->blueCurve:[F

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->greenCurve:[F

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->redCurve:[F

    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->updateToneCurveTexture()V

    return-void
.end method

.method private getPreparedSplineCurve(Ljava/util/ArrayList;)[F
    .locals 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    mul-float v5, v5, v3

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget v5, v4, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v3

    iput v5, v4, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->splineCurve(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    float-to-int v0, v0

    :goto_1
    if-ltz v0, :cond_1

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v5, v0

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v0, v3

    if-gez v2, :cond_2

    float-to-int v0, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xff

    if-gt v0, v2, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    neg-float v4, v4

    :cond_3
    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private secondDerivative(Ljava/util/ArrayList;)[D
    .locals 24

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x3

    aput v5, v4, v2

    const/4 v5, 0x0

    aput v1, v4, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-array v6, v1, [D

    aget-object v7, v4, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v2

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v5

    aput-wide v10, v7, v3

    const/4 v7, 0x1

    :goto_0
    add-int/lit8 v12, v1, -0x1

    if-ge v7, v12, :cond_1

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    aget-object v16, v4, v7

    iget v8, v13, Landroid/graphics/PointF;->x:F

    iget v9, v12, Landroid/graphics/PointF;->x:F

    sub-float v10, v8, v9

    float-to-double v10, v10

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double v19, v10, v17

    aput-wide v19, v16, v5

    iget v5, v15, Landroid/graphics/PointF;->x:F

    sub-float v9, v5, v9

    move-object/from16 v21, v4

    float-to-double v3, v9

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v3, v22

    aput-wide v3, v16, v2

    sub-float/2addr v5, v8

    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v3, v17

    const/4 v5, 0x2

    aput-wide v8, v16, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    iget v8, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v8

    move v9, v14

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v3

    iget v3, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v3

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v10

    sub-double/2addr v13, v3

    aput-wide v13, v6, v7

    move v7, v9

    move-object/from16 v4, v21

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v21, v4

    move-wide v4, v10

    const/4 v3, 0x0

    aput-wide v4, v6, v3

    aput-wide v4, v6, v12

    aget-object v0, v21, v12

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v0, v2

    aput-wide v4, v0, v3

    const/4 v7, 0x2

    aput-wide v4, v0, v7

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v4, v21, v0

    aget-wide v8, v4, v3

    add-int/lit8 v5, v0, -0x1

    aget-object v10, v21, v5

    aget-wide v11, v10, v2

    div-double/2addr v8, v11

    aget-wide v11, v4, v2

    aget-wide v13, v10, v7

    mul-double v13, v13, v8

    sub-double/2addr v11, v13

    aput-wide v11, v4, v2

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v3

    aget-wide v3, v6, v0

    aget-wide v10, v6, v5

    mul-double v8, v8, v10

    sub-double/2addr v3, v8

    aput-wide v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x2

    :goto_2
    if-ltz v0, :cond_3

    aget-object v3, v21, v0

    const/4 v4, 0x2

    aget-wide v7, v3, v4

    add-int/lit8 v5, v0, 0x1

    aget-object v9, v21, v5

    aget-wide v10, v9, v2

    div-double/2addr v7, v10

    aget-wide v10, v3, v2

    const/4 v12, 0x0

    aget-wide v13, v9, v12

    mul-double v13, v13, v7

    sub-double/2addr v10, v13

    aput-wide v10, v3, v2

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v4

    aget-wide v13, v6, v0

    aget-wide v15, v6, v5

    mul-double v7, v7, v15

    sub-double/2addr v13, v7

    aput-wide v13, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    new-array v0, v1, [D

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_4

    aget-wide v3, v6, v5

    aget-object v7, v21, v5

    aget-wide v8, v7, v2

    div-double/2addr v3, v8

    aput-wide v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    return-object v0

    :cond_5
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private splineCurve(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->secondDerivative(Ljava/util/ArrayList;)[D

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    float-to-int v9, v9

    :goto_1
    iget v10, v8, Landroid/graphics/PointF;->x:F

    float-to-int v11, v10

    if-ge v9, v11, :cond_3

    int-to-float v11, v9

    iget v12, v6, Landroid/graphics/PointF;->x:F

    sub-float v13, v11, v12

    float-to-double v13, v13

    sub-float/2addr v10, v12

    move-object v15, v4

    float-to-double v3, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v13

    iget v10, v6, Landroid/graphics/PointF;->y:F

    move-wide/from16 v18, v13

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v16

    iget v10, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v20, v15

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v18

    add-double/2addr v12, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v3

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    div-double/2addr v3, v14

    mul-double v14, v16, v16

    mul-double v14, v14, v16

    sub-double v14, v14, v16

    aget-wide v16, v1, v5

    mul-double v14, v14, v16

    mul-double v16, v18, v18

    mul-double v16, v16, v18

    sub-double v16, v16, v18

    aget-wide v18, v1, v7

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double v3, v3, v14

    add-double/2addr v12, v3

    double-to-float v3, v12

    const/high16 v4, 0x437f0000    # 255.0f

    cmpl-float v10, v3, v4

    if-lez v10, :cond_1

    const/high16 v3, 0x437f0000    # 255.0f

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    cmpg-float v10, v3, v4

    if-gez v10, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_2
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v11, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, v20

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object v4, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v5, v7

    goto/16 :goto_0

    :cond_4
    move-object v3, v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private updateToneCurveTexture()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->curveTexture:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->curveTexture:[I

    aget v0, v0, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->redCurve:[F

    array-length v0, v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->greenCurve:[F

    array-length v0, v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->blueCurve:[F

    array-length v0, v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->rgbCompositeCurve:[F

    array-length v0, v0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    int-to-float v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->redCurve:[F

    aget v4, v4, v0

    add-float/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->greenCurve:[F

    aget v7, v7, v0

    add-float/2addr v7, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->blueCurve:[F

    aget v8, v8, v0

    add-float/2addr v3, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v8, v3

    iget-object v9, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->rgbCompositeCurve:[F

    aget v3, v9, v3

    add-float/2addr v8, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-float v3, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->rgbCompositeCurve:[F

    aget v7, v8, v7

    add-float/2addr v3, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-float v3, v4

    iget-object v7, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->rgbCompositeCurve:[F

    aget v4, v7, v4

    add-float/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v3, -0x1

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x100

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurveTexture()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterShaders$ToneCurve;->curveTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
