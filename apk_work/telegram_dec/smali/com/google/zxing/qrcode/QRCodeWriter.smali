.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imageBlockX:I

.field private imageBloks:I

.field private imageSize:I

.field public includeSideQuads:Z

.field private input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field private radii:[F

.field private sideQuadSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->includeSideQuads:Z

    return-void
.end method

.method public static drawSideQuads(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;FFIFF[FZ)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    if-nez v4, :cond_0

    int-to-float v5, v2

    move v6, v5

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    mul-float v5, p4, p5

    sub-float v5, p7, v5

    int-to-float v6, v2

    sub-float/2addr v5, v6

    :goto_1
    move v13, v6

    move v6, v5

    move v5, v13

    goto :goto_2

    :cond_1
    int-to-float v5, v2

    mul-float v6, p4, p5

    sub-float v6, p7, v6

    sub-float/2addr v6, v5

    goto :goto_1

    :goto_2
    add-float/2addr v6, p1

    add-float v5, v5, p2

    const/high16 v7, 0x40800000    # 4.0f

    if-eqz p10, :cond_2

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v9, v6, p5

    add-float v10, v5, p5

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v11, p4, v11

    mul-float v11, v11, p5

    add-float v12, v6, v11

    add-float/2addr v11, v5

    invoke-virtual {v8, v9, v10, v12, v11}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v9, p4, p5

    div-float/2addr v9, v7

    mul-float v9, v9, p8

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v8, v9, v9, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v3, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_2
    mul-float v8, p4, p5

    const/high16 v9, 0x40400000    # 3.0f

    div-float v9, v8, v9

    mul-float v9, v9, p8

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v11, v6, v8

    add-float/2addr v8, v5

    invoke-virtual {v10, v6, v5, v11, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p10, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    const/high16 v8, 0x40000000    # 2.0f

    sub-float v9, p4, v8

    mul-float v9, v9, p5

    div-float v7, v9, v7

    mul-float v7, v7, p8

    mul-float v8, v8, p5

    add-float v11, v6, v8

    add-float/2addr v8, v5

    add-float/2addr v6, v9

    add-float/2addr v5, v9

    invoke-virtual {v10, v11, v8, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v10, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static drawSideQuadsGradient(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/drawable/GradientDrawable;FFIFF[FII)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-static/range {p9 .. p9}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    const/4 v15, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v15, v0, :cond_6

    if-nez v15, :cond_1

    int-to-float v0, v8

    move v4, v0

    move v5, v4

    goto :goto_3

    :cond_1
    if-ne v15, v11, :cond_2

    mul-float v0, p3, p4

    sub-float v0, p6, v0

    int-to-float v1, v8

    sub-float/2addr v0, v1

    :goto_2
    move v4, v0

    move v5, v1

    goto :goto_3

    :cond_2
    int-to-float v0, v8

    mul-float v1, p3, p4

    sub-float v1, p6, v1

    sub-float/2addr v1, v0

    goto :goto_2

    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v16, 0x40800000    # 4.0f

    if-eqz v12, :cond_3

    add-float v1, v4, p4

    add-float v2, v5, p4

    sub-float v3, p3, v0

    mul-float v3, v3, p4

    add-float v11, v4, v3

    add-float/2addr v3, v5

    invoke-virtual {v14, v1, v2, v11, v3}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v1, p3, p4

    div-float v1, v1, v16

    mul-float v1, v1, p7

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v13, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_3
    mul-float v11, p3, p4

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v11, v1

    mul-float v1, v1, p7

    invoke-static {v9, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    float-to-int v1, v4

    float-to-int v2, v5

    add-float v3, v4, v11

    float-to-int v3, v3

    add-float v0, v5, v11

    float-to-int v0, v0

    invoke-virtual {v7, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    add-float v3, v4, p4

    add-float v2, v5, p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p3, v0

    mul-float v0, v0, p4

    add-float v1, v4, v0

    add-float/2addr v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v1

    move v1, v3

    move/from16 v19, v2

    move v8, v3

    move/from16 v3, v18

    move/from16 v20, v4

    move/from16 v4, v17

    move/from16 v21, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    if-nez v12, :cond_5

    div-float v11, v11, v16

    mul-float v11, v11, p7

    invoke-static {v9, v11}, Ljava/util/Arrays;->fill([FF)V

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    float-to-int v1, v8

    move/from16 v5, v19

    float-to-int v2, v5

    move/from16 v4, v18

    float-to-int v3, v4

    move/from16 v5, v17

    float-to-int v4, v5

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_5
    move/from16 v0, p9

    :goto_4
    const/high16 v1, 0x40000000    # 2.0f

    sub-float v2, p3, v1

    mul-float v2, v2, p4

    div-float v3, v2, v16

    mul-float v3, v3, p7

    invoke-static {v9, v3}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float v1, v1, p4

    add-float v4, v20, v1

    float-to-int v3, v4

    add-float v5, v21, v1

    float-to-int v1, v5

    add-float v4, v20, v2

    float-to-int v4, v4

    add-float v5, v21, v2

    float-to-int v2, v5

    invoke-virtual {v7, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, p5

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private has(II)Z
    .locals 3

    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBlockX:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_0

    if-lt p2, v0, :cond_0

    if-ge p2, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    if-ge p2, v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_3

    return v1

    :cond_3
    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 0
    const/4 v7, -0x1

    const/high16 v8, -0x1000000

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 27

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    if-ltz v1, :cond_15

    if-ltz v2, :cond_15

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v3, :cond_1

    sget-object v5, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v4

    :cond_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v6, p1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    const/4 v5, 0x4

    :goto_0
    invoke-static {v6, v4, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v3

    iput-object v3, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v15

    iget-object v3, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v3, v15, :cond_2

    invoke-direct {v0, v3, v10}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v15, v5

    add-int/2addr v5, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v1, v3

    div-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v1, v8, v15

    add-int/lit8 v2, v1, 0x20

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v7, p5

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v7, v3

    :goto_3
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v3, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    int-to-float v1, v1

    const v3, 0x4094cccd    # 4.65f

    div-float/2addr v1, v3

    int-to-float v3, v8

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    rem-int/lit8 v10, v1, 0x2

    rem-int/lit8 v14, v15, 0x2

    if-eq v10, v14, :cond_5

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    :cond_5
    iget v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    sub-int v10, v15, v1

    div-int/lit8 v10, v10, 0x2

    iput v10, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBlockX:I

    mul-int v1, v1, v8

    add-int/lit8 v1, v1, -0x18

    iput v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageSize:I

    sub-int v1, v2, v1

    div-int/lit8 v14, v1, 0x2

    iget-boolean v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->includeSideQuads:Z

    const/16 v18, 0x10

    if-eqz v1, :cond_6

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    int-to-float v10, v1

    int-to-float v2, v2

    iget-object v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    move-object/from16 v19, v1

    move-object v1, v6

    move/from16 v20, v2

    move-object v2, v5

    move/from16 v21, v3

    move-object v3, v4

    move-object/from16 v22, v4

    move v4, v10

    move-object/from16 v23, v5

    move/from16 v5, v21

    move-object v10, v6

    move/from16 v6, v18

    move-object/from16 v24, v7

    move/from16 v7, v20

    move/from16 v20, v8

    move/from16 v8, p6

    const/16 v25, 0x1

    move-object/from16 v9, v19

    move-object/from16 v26, v10

    move/from16 v10, p7

    move/from16 v19, v14

    move v14, v11

    move/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->drawSideQuadsGradient(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/drawable/GradientDrawable;FFIFF[FII)V

    goto :goto_4

    :cond_6
    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v26, v6

    move-object/from16 v24, v7

    move/from16 v20, v8

    move/from16 v19, v14

    const/16 v25, 0x1

    move v14, v11

    :goto_4
    invoke-static/range {p7 .. p7}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v21, v1

    mul-float v3, v3, p6

    const/4 v1, 0x0

    const/16 v2, 0x10

    :goto_6
    if-ge v1, v14, :cond_13

    const/4 v4, 0x0

    const/16 v5, 0x10

    :goto_7
    if-ge v4, v15, :cond_12

    invoke-direct {v0, v4, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v6

    const/4 v9, 0x7

    const/4 v11, 0x3

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    invoke-static {v6, v3}, Ljava/util/Arrays;->fill([FF)V

    add-int/lit8 v6, v1, -0x1

    invoke-direct {v0, v4, v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v7, v6, v25

    const/4 v8, 0x0

    aput v7, v6, v8

    aput v7, v6, v11

    aput v7, v6, v16

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v6, v1, 0x1

    invoke-direct {v0, v4, v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v7, v6, v9

    const/16 v21, 0x6

    aput v7, v6, v21

    const/16 v21, 0x5

    aput v7, v6, v21

    const/16 v17, 0x4

    aput v7, v6, v17

    :cond_9
    add-int/lit8 v6, v4, -0x1

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v7, v6, v25

    aput v7, v6, v8

    aput v7, v6, v9

    const/4 v9, 0x6

    aput v7, v6, v9

    :cond_a
    add-int/lit8 v6, v4, 0x1

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v7, v6, v11

    aput v7, v6, v16

    const/4 v9, 0x5

    aput v7, v6, v9

    const/4 v9, 0x4

    aput v7, v6, v9

    :cond_b
    move-object/from16 v6, v22

    invoke-virtual {v6, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int v7, v5, v20

    add-int v9, v2, v20

    invoke-virtual {v6, v5, v2, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v7, v26

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v21, v3

    move-object v3, v7

    move/from16 v22, v10

    goto/16 :goto_c

    :cond_c
    move-object/from16 v6, v22

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    invoke-static {v9, v7}, Ljava/util/Arrays;->fill([FF)V

    add-int/lit8 v7, v4, -0x1

    add-int/lit8 v9, v1, -0x1

    invoke-direct {v0, v7, v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-direct {v0, v4, v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_d

    iget-object v11, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v3, v11, v25

    aput v3, v11, v8

    const/4 v11, 0x1

    goto :goto_9

    :cond_d
    const/4 v11, 0x0

    :goto_9
    add-int/lit8 v8, v4, 0x1

    invoke-direct {v0, v8, v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-direct {v0, v4, v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    const/4 v11, 0x3

    aput v3, v9, v11

    aput v3, v9, v16

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    move v9, v11

    :goto_a
    add-int/lit8 v11, v1, 0x1

    invoke-direct {v0, v7, v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-direct {v0, v7, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-direct {v0, v4, v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    const/4 v9, 0x7

    aput v3, v7, v9

    const/4 v9, 0x6

    aput v3, v7, v9

    const/4 v9, 0x1

    :cond_f
    invoke-direct {v0, v8, v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {v0, v8, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {v0, v4, v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    const/4 v8, 0x5

    aput v3, v7, v8

    const/4 v8, 0x4

    aput v3, v7, v8

    const/4 v9, 0x1

    goto :goto_b

    :cond_10
    const/4 v8, 0x4

    :goto_b
    if-eqz v9, :cond_11

    if-nez v10, :cond_11

    int-to-float v7, v5

    int-to-float v9, v2

    add-int v11, v5, v20

    int-to-float v8, v11

    move/from16 v21, v3

    add-int v3, v2, v20

    move/from16 v22, v10

    int-to-float v10, v3

    move-object/from16 p1, v26

    move/from16 p2, v7

    move/from16 p3, v9

    move/from16 p4, v8

    move/from16 p5, v10

    move-object/from16 p6, v23

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v6, v5, v2, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v3, v26

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c

    :cond_11
    move/from16 v21, v3

    move/from16 v22, v10

    move-object/from16 v3, v26

    :goto_c
    add-int/lit8 v4, v4, 0x1

    add-int v5, v5, v20

    move-object/from16 v26, v3

    move/from16 v3, v21

    move/from16 v10, v22

    move-object/from16 v22, v6

    goto/16 :goto_7

    :cond_12
    move/from16 v21, v3

    move-object/from16 v6, v22

    move-object/from16 v3, v26

    move/from16 v22, v10

    add-int/lit8 v1, v1, 0x1

    add-int v2, v2, v20

    move/from16 v3, v21

    move-object/from16 v22, v6

    goto/16 :goto_6

    :cond_13
    move-object/from16 v3, v26

    sget v1, Lorg/telegram/messenger/R$raw;->qr_logo:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageSize:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move/from16 v2, v19

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v24

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_15
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested dimensions are too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found empty contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method

.method public getImageSize()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageSize:I

    return v0
.end method
