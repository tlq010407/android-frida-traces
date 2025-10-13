.class public Lorg/telegram/ui/Components/Paint/ShapeInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/ShapeInput$Point;,
        Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;
    }
.end annotation


# instance fields
.field private allPoints:Ljava/util/ArrayList;

.field private center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

.field private centerPointPaint:Landroid/graphics/Paint;

.field private centerPointStrokePaint:Landroid/graphics/Paint;

.field private controlPointPaint:Landroid/graphics/Paint;

.field private controlPointStrokePaint:Landroid/graphics/Paint;

.field private invalidate:Ljava/lang/Runnable;

.field private invertMatrix:Landroid/graphics/Matrix;

.field private linePaint:Landroid/graphics/Paint;

.field private movingPoint:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

.field private movingPoints:Ljava/util/ArrayList;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private shape:Lorg/telegram/ui/Components/Paint/Shape;

.field private tempPoint:[F

.field private touchOffsetX:F

.field private touchOffsetY:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;Ljava/lang/Runnable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v2, v0, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->invalidate:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointPaint:Landroid/graphics/Paint;

    const p2, -0xd32fa8

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointStrokePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointPaint:Landroid/graphics/Paint;

    const v4, -0xff8501

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointStrokePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/DashPathEffect;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v3, v0, v4

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3fc00000    # 1.5f

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p1, v2, v1, p2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/ShapeInput;)Lorg/telegram/ui/Components/Paint/Shape;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/ShapeInput;FFFFD)F
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/Paint/ShapeInput;->distToLine(FFFFD)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/ShapeInput;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/ShapeInput;FFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(FFZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/ShapeInput;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    return-object p0
.end method

.method private distToLine(FFFFD)F
    .locals 4

    .line 0
    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-float/2addr p4, p2

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    sub-float/2addr p3, p1

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p4, p4, p1

    sub-double/2addr v0, p4

    double-to-float p1, v0

    return p1
.end method

.method private distToLine(FFFFFF)F
    .locals 3

    .line 0
    sub-float/2addr p5, p3

    sub-float/2addr p6, p4

    mul-float v0, p5, p5

    mul-float v1, p6, p6

    add-float/2addr v0, v1

    sub-float v1, p1, p3

    mul-float v1, v1, p5

    sub-float v2, p2, p4

    mul-float v2, v2, p6

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float p5, p5, v0

    add-float/2addr p3, p5

    sub-float/2addr p3, p1

    mul-float v0, v0, p6

    add-float/2addr p4, v0

    sub-float/2addr p4, p2

    mul-float p3, p3, p3

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private drawPoint(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/Size;Lorg/telegram/ui/Components/Paint/ShapeInput$Point;)V
    .locals 5

    iget v0, p3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget v1, p2, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget v2, p2, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->green:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget v1, p2, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget p2, p2, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float v1, v1, p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-boolean p3, p3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->green:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->centerPointStrokePaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->controlPointStrokePaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private isInsideShape(FF)Z
    .locals 20

    move-object/from16 v7, p0

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v11, :cond_4

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v9

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/ShapeInput;->distToLine(FFFFFF)F

    move-result v12

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/ShapeInput;->distToLine(FFFFFF)F

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    div-float/2addr v1, v10

    sub-float/2addr v0, v1

    iget v1, v9, Lorg/telegram/ui/Components/Size;->width:F

    iget v2, v9, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v8, 0x1

    :cond_3
    return v8

    :cond_4
    :goto_0
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    sub-float v6, v4, v5

    iget v12, v0, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    div-float/2addr v12, v10

    sub-float/2addr v6, v12

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    sub-float v13, v10, v0

    sub-float/2addr v13, v12

    add-float/2addr v4, v5

    add-float/2addr v4, v12

    add-float/2addr v10, v0

    add-float/2addr v10, v12

    cmpl-float v0, p2, v13

    if-lez v0, :cond_6

    cmpg-float v0, p2, v10

    if-gez v0, :cond_6

    cmpg-float v0, p1, v6

    if-gez v0, :cond_5

    sub-float v6, v6, p1

    :goto_1
    move v8, v6

    goto :goto_2

    :cond_5
    cmpl-float v0, p1, v4

    if-lez v0, :cond_8

    sub-float v6, p1, v4

    goto :goto_1

    :cond_6
    cmpg-float v0, p1, v6

    if-gez v0, :cond_9

    cmpl-float v0, p1, v4

    if-lez v0, :cond_9

    cmpg-float v0, p2, v13

    if-gez v0, :cond_7

    sub-float v6, v13, p2

    goto :goto_1

    :cond_7
    cmpl-float v0, p2, v10

    if-lez v0, :cond_8

    sub-float v6, p2, v10

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    sub-float v0, p1, v6

    float-to-double v5, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-float v0, p2, v13

    float-to-double v12, v0

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    sub-float v0, p1, v4

    float-to-double v8, v0

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double v12, v18, v12

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float v0, p2, v10

    float-to-double v14, v0

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v4, v4, v18

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v8, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v6, v0

    goto :goto_1

    :goto_2
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    if-ne v0, v3, :cond_a

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/ShapeInput;->distToLine(FFFFFF)F

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    :cond_a
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_b

    const/4 v8, 0x1

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    :goto_3
    return v8

    :cond_c
    :goto_4
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    sub-float v0, p1, v0

    float-to-double v3, v0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    sub-float v0, p2, v0

    float-to-double v5, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    iget-object v2, v7, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    div-float/2addr v2, v10

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    :goto_5
    return v8
.end method

.method private rotate(FFZ)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(Z)V

    return-void
.end method

.method private rotate(Z)V
    .locals 12

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    sub-float/2addr v6, v0

    aput v6, v2, v5

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-float p1, p1

    mul-float v1, v1, p1

    float-to-double v6, v4

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget p1, p1, v5

    float-to-double v8, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    sub-double/2addr v6, v8

    double-to-float p1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v2, v2, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v2, v2, v5

    float-to-double v8, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v0

    add-double/2addr v6, v8

    double-to-float v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v4, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    add-float/2addr p1, v4

    aput p1, v1, v3

    iget p1, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    add-float/2addr v0, p1

    aput v0, v1, v5

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->clearShape()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->draw:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p1, v0, v3}, Lorg/telegram/ui/Components/Paint/ShapeInput;->drawPoint(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/Size;Lorg/telegram/ui/Components/Paint/ShapeInput$Point;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v4, v2, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    neg-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double v4, v4, v6

    double-to-float v4, v4

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v5, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v5, v5, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget v6, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v6, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v7, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v8, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v9, v2, v4

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v6, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v7, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v8, v2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    iget v4, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v9, v2, v4

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->linePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget-boolean v4, v2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->draw:Z

    if-eqz v4, :cond_5

    iget-boolean v4, v2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v0, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->drawPoint(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/Size;Lorg/telegram/ui/Components/Paint/ShapeInput$Point;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_7

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onColorChange()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->paintShape(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onWeightChange()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->paintShape(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;F)V
    .locals 12

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v1, p1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v1, p1, v2

    aget p1, p1, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->invalidate:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    const/4 v3, 0x0

    if-nez p2, :cond_b

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 p2, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p2, v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget-boolean v7, v6, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->draw:Z

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aput v1, v7, v2

    aput p1, v7, v0

    iget-boolean v7, v6, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-eqz v7, :cond_2

    invoke-direct {p0, v1, p1, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(FFZ)V

    :cond_2
    iget v7, v6, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget v8, v6, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v10, v9, v2

    aget v9, v9, v0

    invoke-static {v7, v8, v10, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v7

    float-to-double v7, v7

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v11, v7, v9

    if-gez v11, :cond_4

    if-eqz v3, :cond_3

    cmpg-double v9, v7, v4

    if-gez v9, :cond_4

    :cond_3
    move-object v3, v6

    move-wide v4, v7

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aput v1, p2, v2

    aput p1, p2, v0

    invoke-direct {p0, v1, p1, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(FFZ)V

    if-nez v3, :cond_7

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/Paint/ShapeInput;->isInsideShape(FF)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/ShapeInput;->stop()V

    return-void

    :cond_7
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aput v1, p2, v2

    aput p1, p2, v0

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoint:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    if-eqz v3, :cond_9

    iget-boolean p2, v3, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-eqz p2, :cond_8

    invoke-direct {p0, v1, p1, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(FFZ)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoint:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget p2, p1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v2, v1, v2

    sub-float/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetX:F

    iget p1, p1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    aget p2, v1, v0

    :goto_3
    sub-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetY:F

    goto/16 :goto_5

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    if-eqz p2, :cond_12

    iget-boolean p2, p2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-eqz p2, :cond_a

    invoke-direct {p0, v1, p1, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(FFZ)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget p2, p1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v2, v1, v2

    sub-float/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetX:F

    iget p1, p1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    aget p2, v1, v0

    goto :goto_3

    :cond_b
    const/4 v4, 0x2

    if-ne p2, v4, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoint:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    if-eqz p2, :cond_f

    iget-boolean p2, p2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-eqz p2, :cond_c

    invoke-direct {p0, v1, p1, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(FFZ)V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget p2, p1, v2

    iget v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetX:F

    add-float/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget v4, v1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    sub-float/2addr p2, v4

    aget p1, p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetY:F

    add-float/2addr p1, v0

    iget v0, v1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    sub-float/2addr p1, v0

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget v1, v0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->x:F

    add-float/2addr v1, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->y:F

    add-float/2addr v4, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->update(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    iget-boolean p1, p2, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    if-eqz p1, :cond_e

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput;->rotate(Z)V

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoint:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->tempPoint:[F

    aget v1, p2, v2

    iget v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetX:F

    add-float/2addr v1, v2

    aget p2, p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->touchOffsetY:F

    add-float/2addr p2, v0

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->update(FF)V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/Paint/Painting;->paintShape(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_10
    if-eq p2, v0, :cond_11

    const/4 p1, 0x3

    if-ne p2, p1, :cond_12

    :cond_11
    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoint:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    :cond_12
    :goto_5
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public start(I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Shape;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->make(I)Lorg/telegram/ui/Components/Paint/Brush$Shape;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Shape;-><init>(Lorg/telegram/ui/Components/Paint/Brush$Shape;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v1, p1, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v3, p1, Lorg/telegram/ui/Components/Size;->height:F

    div-float v4, v3, v2

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->rounding:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getFillShapes()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->fill:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v3, p1, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget p1, p1, Lorg/telegram/ui/Components/Size;->height:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, p1, v3

    mul-float v4, v4, v3

    iput v4, v0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    div-float/2addr p1, v2

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    mul-float v3, v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ShapeInput$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$1;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/Paint/ShapeInput$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Paint/ShapeInput$2;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Lorg/telegram/ui/Components/Paint/ShapeInput$Point;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/Paint/ShapeInput$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/Paint/ShapeInput$3;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Lorg/telegram/ui/Components/Paint/ShapeInput$Point;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ShapeInput$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$4;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ShapeInput$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$5;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result p1

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-direct {v4, p0, v5, v2, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Lorg/telegram/ui/Components/Paint/Shape;ZZ)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-direct {v4, p0, v5, v3, v2}, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Lorg/telegram/ui/Components/Paint/Shape;ZZ)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-direct {v4, p0, v5, v2, v3}, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Lorg/telegram/ui/Components/Paint/Shape;ZZ)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-direct {v4, p0, v5, v3, v3}, Lorg/telegram/ui/Components/Paint/ShapeInput$CornerPoint;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Lorg/telegram/ui/Components/Paint/Shape;ZZ)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Paint/ShapeInput$6;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/Components/Paint/ShapeInput$6;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Z)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v4, p1, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    iget v4, p1, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    const v5, 0x3f99999a    # 1.2f

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    iget v4, p1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    add-float/2addr v0, v4

    iput v0, p1, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ShapeInput$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/ShapeInput$7;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p1, Lorg/telegram/ui/Components/Paint/ShapeInput$8;

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/Components/Paint/ShapeInput$8;-><init>(Lorg/telegram/ui/Components/Paint/ShapeInput;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result p1

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iput-boolean v2, p1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->draw:Z

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    iput-boolean v2, p1, Lorg/telegram/ui/Components/Paint/ShapeInput$Point;->rotate:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->center:Lorg/telegram/ui/Components/Paint/ShapeInput$Point;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->paintShape(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->commitShape(Lorg/telegram/ui/Components/Paint/Shape;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->allPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->movingPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->shape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ShapeInput;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->resetBrush()V

    :cond_1
    :goto_0
    return-void
.end method
