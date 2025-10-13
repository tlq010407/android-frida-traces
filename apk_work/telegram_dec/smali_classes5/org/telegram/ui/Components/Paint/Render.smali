.class public abstract Lorg/telegram/ui/Components/Paint/Render;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 20

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v10

    if-gtz v10, :cond_0

    return-object v8

    :cond_0
    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v12, v10, -0x1

    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v11, v13

    const/16 v19, 0x14

    mul-int/lit8 v11, v11, 0x14

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v13, p0

    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    sub-float v4, v16, v18

    sub-float v6, v17, v18

    add-float v2, v16, v18

    add-float v5, v17, v18

    invoke-direct {v1, v4, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v2, v7, v3

    const/16 v16, 0x1

    aput v4, v7, v16

    const/16 v16, 0x2

    aput v5, v7, v16

    const/16 v16, 0x3

    aput v4, v7, v16

    const/4 v4, 0x4

    aput v2, v7, v4

    const/4 v2, 0x5

    aput v6, v7, v2

    const/4 v2, 0x6

    aput v5, v7, v2

    const/4 v2, 0x7

    aput v6, v7, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v16, v4

    float-to-double v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v4, v16

    invoke-virtual {v5, v3, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Utils;->RectFIntegral(Landroid/graphics/RectF;)V

    invoke-virtual {v8, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    if-eqz v15, :cond_1

    aget v2, v7, v1

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    aget v3, v7, v2

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/2addr v15, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_1
    aget v4, v7, v1

    invoke-virtual {v11, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget v1, v7, v2

    invoke-virtual {v11, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    aget v2, v7, v1

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    aget v2, v7, v1

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    aget v5, v7, v4

    invoke-virtual {v11, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x5

    aget v5, v7, v4

    invoke-virtual {v11, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x6

    aget v5, v7, v4

    invoke-virtual {v11, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v5, 0x7

    aget v9, v7, v5

    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v9, 0x4

    add-int/lit8 v16, v15, 0x4

    if-eq v14, v12, :cond_2

    aget v9, v7, v4

    invoke-virtual {v11, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget v7, v7, v5

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x5

    add-int/2addr v15, v0

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    move/from16 v15, v16

    goto :goto_2

    :goto_3
    add-int/2addr v14, v0

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v18

    const/16 v0, 0x1406

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    move v3, v15

    move v15, v0

    move/from16 v17, v19

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v18

    const/16 v15, 0x1406

    const/16 v16, 0x1

    const/4 v13, 0x1

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v18

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-object v8
.end method

.method private static PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v2

    float-to-double v9, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Point;->substract(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/Paint/Point;

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    iget v4, v8, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, v8, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    :goto_0
    move v11, v4

    goto :goto_1

    :cond_0
    iget-wide v4, v2, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v6, v2, Lorg/telegram/ui/Components/Paint/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_0

    :goto_1
    iget v4, v8, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    float-to-double v4, v4

    iget-wide v6, v1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    iget v6, v8, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    iget v12, v8, Lorg/telegram/ui/Components/Paint/RenderState;->viewportScale:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v12

    double-to-float v12, v4

    iget v4, v8, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    mul-float v4, v4, v12

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v13, v4

    const-wide/16 v15, 0x0

    cmpl-double v4, v9, v15

    if-lez v4, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    :cond_1
    move-object v15, v3

    iget v2, v8, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    const v3, 0x3f933333    # 1.15f

    mul-float v2, v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v16

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    iget-boolean v7, v1, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    iget-wide v3, v8, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v9, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v4

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    iget-wide v3, v8, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    invoke-virtual {v15, v3, v4}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v0

    iget-wide v3, v8, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    const/4 v6, 0x1

    move-wide/from16 v17, v3

    const/4 v3, 0x1

    :goto_2
    cmpg-double v4, v17, v9

    if-gtz v4, :cond_4

    if-eqz v2, :cond_2

    move/from16 v19, v16

    goto :goto_3

    :cond_2
    iget v2, v8, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    move/from16 v19, v2

    :goto_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v3

    const/16 v20, -0x1

    move-object/from16 v2, p2

    move v4, v12

    move v5, v11

    const/4 v1, 0x1

    move/from16 v6, v19

    move/from16 v19, v7

    move/from16 v7, v20

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v15, v13, v14}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double v17, v17, v13

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move/from16 v7, v19

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    move/from16 v19, v7

    const/4 v1, 0x1

    :goto_4
    if-eqz v3, :cond_5

    if-eqz v19, :cond_5

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v5, -0x1

    move-object/from16 v0, p2

    move v2, v12

    move v3, v11

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    :cond_5
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v17, v9

    iput-wide v0, v8, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    return-void
.end method

.method private static PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 8

    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    iget v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->viewportScale:F

    div-float v4, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v3

    iget p0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    iget p0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    move v5, p0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget v6, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    return-void
.end method

.method public static RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;Z)Landroid/graphics/RectF;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBaseWeight()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush;->getSpacing()F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getAlpha()F

    move-result p2

    :goto_0
    iput p2, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getAngle()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getScale()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getLength()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    :goto_1
    array-length v2, p2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v3, p2, v0

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-wide v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Render;->Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
