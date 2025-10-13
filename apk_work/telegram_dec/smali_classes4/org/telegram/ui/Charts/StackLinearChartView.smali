.class public Lorg/telegram/ui/Charts/StackLinearChartView;
.super Lorg/telegram/ui/Charts/BaseChartView;
.source "SourceFile"


# instance fields
.field private mapPoints:[F

.field private matrix:Landroid/graphics/Matrix;

.field ovalPath:Landroid/graphics/Path;

.field skipPoints:[Z

.field startFromY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Charts/StackLinearChartView;->ovalPath:Landroid/graphics/Path;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->superDraw:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->useAlphaSignature:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->drawPointOnSelection:Z

    return-void
.end method

.method private quarterForPoint(FF)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_0

    cmpg-float v2, p2, v1

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_1

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    cmpl-float p1, p2, v1

    if-ltz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method


# virtual methods
.method public bridge synthetic createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/StackLinearChartView;->createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/StackLinearViewData;

    move-result-object p1

    return-object p1
.end method

.method public createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/StackLinearViewData;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Charts/view_data/StackLinearViewData;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Charts/view_data/StackLinearViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;)V

    return-object v0
.end method

.method protected drawChart(Landroid/graphics/Canvas;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v2, :cond_36

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    mul-float v3, v3, v2

    sget v4, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/view_data/StackLinearViewData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/view_data/StackLinearViewData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v7, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    if-eqz v7, :cond_1

    array-length v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v8, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v7, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Z

    iput-object v7, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v7, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [F

    iput-object v7, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->startFromY:[F

    :cond_2
    iget v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    if-ne v7, v10, :cond_6

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v7, v7, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const v13, 0x3f19999a    # 0.6f

    div-float/2addr v7, v13

    cmpl-float v13, v7, v11

    if-lez v13, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_3
    iget-object v13, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->ovalPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    goto :goto_1

    :cond_4
    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    :goto_1
    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    goto :goto_2

    :cond_5
    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    :goto_2
    const v15, 0x3ee66666    # 0.45f

    mul-float v14, v14, v15

    sub-float/2addr v13, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v15, v15, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float v15, v11, v15

    mul-float v13, v13, v15

    add-float/2addr v14, v13

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    sub-float v15, v4, v14

    sub-float v9, v5, v14

    add-float v11, v4, v14

    add-float v12, v5, v14

    invoke-virtual {v13, v15, v9, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->ovalPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v13, v14, v14, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v9, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->ovalPath:Landroid/graphics/Path;

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v9, v7

    const/16 v7, 0xff

    goto :goto_4

    :cond_6
    if-ne v7, v8, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v7, v7, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v7, v7, v9

    float-to-int v7, v7

    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    const/16 v7, 0xff

    goto :goto_3

    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v11, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v12, v11

    const/4 v13, 0x1

    if-ge v12, v10, :cond_8

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    aget v11, v11, v13

    mul-float v11, v11, v2

    :goto_5
    sget v12, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    div-float/2addr v12, v11

    float-to-int v11, v12

    add-int/2addr v11, v13

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v12, v11

    sub-int/2addr v12, v13

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v14, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v14, v14, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v14, v14

    sub-int/2addr v14, v13

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v15, v11

    add-int/2addr v15, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v14, v12

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_6
    if-gt v14, v11, :cond_33

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_7
    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-wide/16 v23, 0x0

    if-ge v6, v13, :cond_b

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Charts/view_data/LineViewData;

    move/from16 v25, v7

    iget-boolean v7, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v7, :cond_9

    iget v7, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/16 v17, 0x0

    cmpl-float v7, v7, v17

    if-nez v7, :cond_9

    move/from16 v27, v8

    move/from16 v26, v9

    goto :goto_8

    :cond_9
    iget-object v7, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    move/from16 v27, v8

    move/from16 v26, v9

    aget-wide v8, v7, v14

    cmp-long v7, v8, v23

    if-lez v7, :cond_a

    long-to-float v7, v8

    iget v8, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v7, v7, v8

    add-float v20, v20, v7

    add-int/lit8 v10, v10, 0x1

    :cond_a
    move/from16 v21, v6

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v25

    move/from16 v9, v26

    move/from16 v8, v27

    goto :goto_7

    :cond_b
    move/from16 v25, v7

    move/from16 v27, v8

    move/from16 v26, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_32

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v13, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v13, :cond_c

    iget v13, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/16 v17, 0x0

    cmpl-float v13, v13, v17

    if-nez v13, :cond_c

    move/from16 v30, v2

    move/from16 v31, v3

    move v1, v6

    move/from16 v27, v8

    move/from16 v32, v10

    move/from16 v29, v12

    move/from16 v2, v21

    const/4 v3, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move v8, v4

    move/from16 v21, v15

    move v15, v5

    const/4 v5, 0x0

    goto/16 :goto_29

    :cond_c
    iget-object v13, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v13, v13, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    move/from16 v27, v8

    const/4 v8, 0x1

    if-ne v10, v8, :cond_e

    aget-wide v28, v13, v14

    cmp-long v8, v28, v23

    if-nez v8, :cond_d

    goto :goto_a

    :cond_d
    iget v8, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    move/from16 v28, v5

    move/from16 v39, v8

    move v8, v4

    move/from16 v4, v39

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    cmpl-float v28, v20, v8

    if-nez v28, :cond_f

    :goto_a
    move v8, v4

    move/from16 v28, v5

    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    move v8, v4

    move/from16 v28, v5

    aget-wide v4, v13, v14

    long-to-float v4, v4

    iget v5, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v4, v4, v5

    div-float v4, v4, v20

    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v5, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v29, v5, v14

    mul-float v29, v29, v2

    sub-float v29, v29, v3

    if-ne v14, v11, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    :goto_c
    const/16 v17, 0x0

    goto :goto_d

    :cond_10
    add-int/lit8 v30, v14, 0x1

    aget v5, v5, v30

    mul-float v5, v5, v2

    sub-float/2addr v5, v3

    goto :goto_c

    :goto_d
    cmpl-float v30, v4, v17

    if-nez v30, :cond_11

    move/from16 v30, v2

    move/from16 v2, v21

    if-ne v7, v2, :cond_12

    const/4 v15, 0x1

    goto :goto_e

    :cond_11
    move/from16 v30, v2

    move/from16 v2, v21

    :cond_12
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v31, v3

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int v21, v21, v3

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int v3, v21, v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v32, v10

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int v10, v21, v10

    int-to-float v10, v10

    sub-float/2addr v10, v3

    sub-float/2addr v10, v6

    move/from16 v21, v15

    iget-object v15, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->startFromY:[F

    aput v10, v15, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v15, v1

    int-to-float v1, v15

    if-ne v14, v11, :cond_13

    move/from16 v18, v29

    goto :goto_f

    :cond_13
    if-ne v14, v12, :cond_14

    move/from16 v27, v29

    :cond_14
    :goto_f
    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v33, 0x42b40000    # 90.0f

    move/from16 v34, v3

    const/4 v3, 0x2

    if-ne v15, v3, :cond_1c

    if-eq v7, v2, :cond_1c

    cmpg-float v3, v29, v8

    if-gez v3, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v15, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startX:[F

    aget v15, v15, v7

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startY:[F

    aget v3, v3, v7

    goto :goto_10

    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v15, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->endX:[F

    aget v15, v15, v7

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->endY:[F

    aget v3, v3, v7

    :goto_10
    sub-float v35, v8, v15

    sub-float v36, v28, v3

    sub-float v15, v29, v15

    mul-float v15, v15, v36

    div-float v15, v15, v35

    add-float/2addr v15, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v37, v3, v26

    mul-float v10, v10, v37

    mul-float v15, v15, v26

    add-float/2addr v10, v15

    mul-float v1, v1, v37

    add-float/2addr v1, v15

    div-float v3, v36, v35

    const/4 v15, 0x0

    cmpl-float v35, v3, v15

    if-lez v35, :cond_16

    move/from16 v35, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    neg-double v3, v3

    :goto_11
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_12

    :cond_16
    move/from16 v35, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    goto :goto_11

    :goto_12
    sub-float v3, v3, v33

    cmpl-float v4, v29, v8

    if-ltz v4, :cond_19

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v5, 0x0

    aput v29, v4, v5

    const/4 v5, 0x1

    aput v10, v4, v5

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v5, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v5, v5, v3

    move/from16 v15, v28

    invoke-virtual {v4, v5, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v5, 0x0

    aget v10, v4, v5

    const/16 v22, 0x1

    aget v28, v4, v22

    cmpg-float v19, v10, v8

    if-gez v19, :cond_17

    move v10, v8

    :cond_17
    aput v29, v4, v5

    aput v1, v4, v22

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v4, v4, v3

    invoke-virtual {v1, v4, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    cmpg-float v4, v29, v8

    if-gez v4, :cond_18

    move v5, v8

    move v4, v10

    move/from16 v10, v28

    :goto_13
    move/from16 v28, v6

    goto/16 :goto_16

    :cond_18
    move v4, v10

    move/from16 v10, v28

    move/from16 v5, v29

    goto :goto_13

    :cond_19
    move/from16 v15, v28

    cmpl-float v4, v5, v8

    if-ltz v4, :cond_1a

    mul-float v29, v29, v37

    mul-float v4, v8, v26

    add-float v29, v29, v4

    mul-float v10, v10, v37

    mul-float v5, v15, v26

    add-float/2addr v10, v5

    move/from16 v28, v6

    move v1, v10

    move/from16 v4, v29

    move v5, v4

    goto/16 :goto_16

    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/16 v19, 0x0

    aput v29, v4, v19

    const/16 v22, 0x1

    aput v10, v4, v22

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    move/from16 v28, v6

    iget v6, v10, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v36, v6, v3

    iget-object v10, v10, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    aget v10, v10, v7

    mul-float v6, v6, v10

    add-float v6, v36, v6

    invoke-virtual {v4, v6, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v6, 0x0

    aget v10, v4, v6

    const/16 v19, 0x1

    aget v36, v4, v19

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_1b

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v5, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v19, v16, v5

    mul-float v29, v29, v19

    mul-float v5, v5, v8

    add-float v29, v29, v5

    aput v29, v4, v6

    :goto_14
    const/4 v5, 0x1

    goto :goto_15

    :cond_1b
    aput v29, v4, v6

    goto :goto_14

    :goto_15
    aput v1, v4, v5

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v6, v5, v3

    iget-object v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    aget v4, v4, v7

    mul-float v5, v5, v4

    add-float/2addr v6, v5

    invoke-virtual {v1, v6, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v4, 0x0

    aget v29, v1, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    move v4, v10

    move/from16 v5, v29

    move/from16 v10, v36

    goto :goto_16

    :cond_1c
    move/from16 v35, v4

    move/from16 v15, v28

    move/from16 v28, v6

    move/from16 v4, v29

    move v5, v4

    const/4 v3, 0x0

    :goto_16
    if-ne v14, v12, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v29, v12

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    move/from16 v36, v4

    const/4 v4, 0x2

    if-ne v12, v4, :cond_1d

    if-eq v7, v2, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v12, 0x0

    sub-float v37, v12, v8

    const/4 v12, 0x0

    aput v37, v4, v12

    const/4 v12, 0x1

    aput v6, v4, v12

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v12, v6, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v3, v3, v12

    iget-object v6, v6, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    aget v6, v6, v7

    mul-float v12, v12, v6

    add-float/2addr v3, v12

    invoke-virtual {v4, v3, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v4, 0x0

    aget v6, v3, v4

    const/4 v12, 0x1

    aget v3, v3, v12

    move/from16 v39, v6

    move v6, v3

    move/from16 v3, v39

    goto :goto_17

    :cond_1d
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_17
    iget-object v12, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v12, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    aput-boolean v4, v3, v7

    goto :goto_18

    :cond_1e
    move/from16 v36, v4

    move/from16 v29, v12

    :goto_18
    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    :goto_19
    const/4 v4, 0x0

    goto :goto_1a

    :cond_1f
    iget v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    goto :goto_19

    :goto_1a
    cmpl-float v6, v35, v4

    if-nez v6, :cond_22

    if-lez v14, :cond_22

    add-int/lit8 v4, v14, -0x1

    aget-wide v37, v13, v4

    cmp-long v4, v37, v23

    if-nez v4, :cond_22

    if-ge v14, v11, :cond_22

    add-int/lit8 v4, v14, 0x1

    aget-wide v12, v13, v4

    cmp-long v4, v12, v23

    if-nez v4, :cond_22

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_21

    if-ne v7, v2, :cond_20

    iget-object v4, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float v1, v1, v3

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1b

    :cond_20
    iget-object v3, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_21
    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, v7

    move/from16 v4, v36

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_24

    if-ne v7, v2, :cond_23

    iget-object v4, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v12, v6, v3

    mul-float v1, v1, v12

    :goto_1c
    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1d

    :cond_23
    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v4, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    goto :goto_1c

    :cond_24
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1d
    if-ne v7, v2, :cond_25

    iget-object v1, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    sub-float v3, v6, v3

    mul-float v3, v3, v10

    move/from16 v4, v36

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1e

    :cond_25
    move/from16 v4, v36

    iget-object v1, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1e
    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    const/4 v3, 0x0

    aput-boolean v3, v1, v7

    :goto_1f
    if-ne v14, v11, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v12, 0x2

    if-ne v5, v12, :cond_26

    if-eq v7, v2, :cond_26

    iget-object v5, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    add-float/2addr v1, v8

    const/4 v12, 0x0

    aput v1, v5, v12

    const/4 v1, 0x1

    aput v3, v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    aget v3, v3, v7

    mul-float v5, v5, v3

    invoke-virtual {v1, v5, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v3, 0x0

    aget v5, v1, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    goto :goto_20

    :cond_26
    iget-object v5, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_20
    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_31

    if-eq v7, v2, :cond_30

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v3, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startX:[F

    aget v3, v3, v7

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startY:[F

    aget v1, v1, v7

    sub-float v3, v8, v3

    sub-float v5, v15, v1

    div-float/2addr v5, v3

    const/4 v1, 0x0

    cmpl-float v3, v5, v1

    if-lez v3, :cond_27

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    neg-double v12, v12

    :goto_21
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-float v1, v12

    goto :goto_22

    :cond_27
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    goto :goto_21

    :goto_22
    sub-float v1, v1, v33

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v5, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startX:[F

    aget v5, v5, v7

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startY:[F

    aget v3, v3, v7

    iget-object v12, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v13, 0x0

    aput v5, v12, v13

    const/4 v5, 0x1

    aput v3, v12, v5

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v12, v5, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v1, v1, v12

    iget-object v5, v5, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    aget v5, v5, v7

    mul-float v12, v12, v5

    add-float/2addr v1, v12

    invoke-virtual {v3, v1, v8, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->mapPoints:[F

    const/4 v5, 0x0

    aget v3, v1, v5

    const/4 v12, 0x1

    aget v1, v1, v12

    sub-float v12, v4, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide v35, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v16, v12, v35

    if-gez v16, :cond_2b

    cmpg-float v12, v1, v15

    if-gez v12, :cond_28

    cmpg-float v12, v10, v15

    if-ltz v12, :cond_29

    :cond_28
    cmpl-float v12, v1, v15

    if-lez v12, :cond_2b

    cmpl-float v12, v10, v15

    if-lez v12, :cond_2b

    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    aget v1, v1, v7

    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    :goto_23
    const/4 v4, 0x0

    goto :goto_24

    :cond_2a
    const/4 v1, 0x3

    goto :goto_23

    :cond_2b
    invoke-direct {v0, v4, v10}, Lorg/telegram/ui/Charts/StackLinearChartView;->quarterForPoint(FF)I

    move-result v4

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Charts/StackLinearChartView;->quarterForPoint(FF)I

    move-result v1

    :goto_24
    if-gt v4, v1, :cond_2f

    if-nez v4, :cond_2c

    iget-object v3, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/4 v12, 0x0

    :goto_25
    invoke-virtual {v3, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x2

    const/4 v13, 0x0

    goto :goto_26

    :cond_2c
    const/4 v3, 0x1

    if-ne v4, v3, :cond_2d

    iget-object v3, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    goto :goto_25

    :cond_2d
    const/4 v3, 0x2

    if-ne v4, v3, :cond_2e

    iget-object v10, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_26

    :cond_2e
    const/4 v13, 0x0

    iget-object v10, v9, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v10, v13, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2f
    const/4 v3, 0x2

    :goto_27
    const/4 v13, 0x0

    goto :goto_28

    :cond_30
    const/4 v3, 0x2

    :cond_31
    const/4 v5, 0x0

    goto :goto_27

    :goto_28
    add-float v1, v28, v34

    :goto_29
    add-int/lit8 v7, v7, 0x1

    move v6, v1

    move v4, v8

    move v5, v15

    move/from16 v15, v21

    move/from16 v8, v27

    move/from16 v12, v29

    move/from16 v3, v31

    move/from16 v10, v32

    move-object/from16 v1, p1

    move/from16 v21, v2

    move/from16 v2, v30

    goto/16 :goto_9

    :cond_32
    move/from16 v30, v2

    move/from16 v31, v3

    move v1, v5

    move/from16 v27, v8

    move/from16 v29, v12

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move v8, v4

    add-int/lit8 v14, v14, 0x1

    move v5, v1

    move/from16 v7, v25

    move/from16 v9, v26

    move/from16 v8, v27

    move/from16 v3, v31

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v13, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_33
    move/from16 v25, v7

    move/from16 v27, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v3, p1

    move/from16 v5, v18

    move/from16 v4, v27

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    if-eqz v15, :cond_34

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLineEmpty:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2a
    if-ltz v1, :cond_35

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v4, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    move/from16 v7, v25

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    iget-object v5, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_36
    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/view_data/StackLinearViewData;

    iget-object v5, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v2, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget v4, v2, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedSize:I

    iget-object v5, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    if-eqz v5, :cond_1

    array-length v5, v5

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_2

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v2, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v4, :cond_11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-wide/16 v13, 0x0

    if-ge v8, v12, :cond_5

    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v15, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v15, :cond_3

    iget v15, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v15, v15, v7

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v11, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedY:[[J

    aget-object v11, v11, v8

    aget-wide v6, v11, v2

    cmp-long v11, v6, v13

    if-lez v11, :cond_4

    long-to-float v6, v6

    iget v7, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v6, v6, v7

    add-float/2addr v9, v6

    add-int/lit8 v10, v10, 0x1

    :cond_4
    move v11, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    int-to-float v6, v2

    add-int/lit8 v7, v4, -0x1

    int-to-float v8, v7

    div-float/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v6, v6, v8

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_4
    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_10

    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v3, v15, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v3, :cond_6

    iget v3, v15, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/16 v16, 0x0

    cmpl-float v3, v3, v16

    if-nez v3, :cond_6

    move/from16 v19, v4

    move-wide/from16 v17, v13

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_6
    const/4 v3, 0x1

    if-ne v10, v3, :cond_8

    move-object v3, v15

    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v15, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v15, v15, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedY:[[J

    aget-object v15, v15, v8

    aget-wide v17, v15, v2

    cmp-long v15, v17, v13

    if-nez v15, :cond_7

    goto :goto_6

    :cond_7
    iget v15, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    :goto_5
    const/4 v13, 0x0

    goto :goto_7

    :cond_8
    move-object v3, v15

    const/4 v15, 0x0

    cmpl-float v17, v9, v15

    if-nez v17, :cond_9

    :goto_6
    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_7

    :cond_9
    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v15, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v15, v15, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedY:[[J

    aget-object v15, v15, v8

    aget-wide v13, v15, v2

    long-to-float v13, v13

    iget v14, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v13, v13, v14

    div-float/2addr v13, v9

    move v15, v13

    goto :goto_5

    :goto_7
    cmpl-float v14, v15, v13

    if-nez v14, :cond_a

    if-ne v8, v11, :cond_a

    const/4 v5, 0x1

    :cond_a
    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v13, v13

    mul-float v14, v15, v13

    sub-float v15, v13, v14

    sub-float/2addr v15, v12

    move/from16 v19, v4

    if-nez v2, :cond_b

    iget-object v4, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    move/from16 v20, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    const/4 v13, 0x0

    aput-boolean v13, v4, v8

    goto :goto_8

    :cond_b
    move/from16 v20, v5

    const/4 v5, 0x0

    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedY:[[J

    aget-object v4, v4, v8

    aget-wide v21, v4, v2

    const-wide/16 v17, 0x0

    cmp-long v13, v21, v17

    if-nez v13, :cond_d

    if-lez v2, :cond_d

    add-int/lit8 v13, v2, -0x1

    aget-wide v21, v4, v13

    cmp-long v13, v21, v17

    if-nez v13, :cond_d

    if-ge v2, v7, :cond_d

    add-int/lit8 v13, v2, 0x1

    aget-wide v21, v4, v13

    cmp-long v4, v21, v17

    if-nez v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    aget-boolean v4, v4, v8

    if-nez v4, :cond_c

    iget-object v4, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v13, v13

    invoke-virtual {v4, v6, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    const/4 v13, 0x1

    aput-boolean v13, v4, v8

    const/4 v13, 0x0

    goto :goto_9

    :cond_d
    move v4, v15

    iget-object v13, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    aget-boolean v13, v13, v8

    if-eqz v13, :cond_e

    iget-object v13, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v5, v5

    invoke-virtual {v13, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_e
    iget-object v5, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Charts/StackLinearChartView;->skipPoints:[Z

    const/4 v13, 0x0

    aput-boolean v13, v4, v8

    :goto_9
    if-ne v2, v7, :cond_f

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_f
    add-float/2addr v12, v14

    move/from16 v5, v20

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v13, v17

    move/from16 v4, v19

    goto/16 :goto_4

    :cond_10
    move/from16 v19, v4

    const/4 v13, 0x0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_11
    if-eqz v5, :cond_12

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLineEmpty:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v4, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPathPicker:Landroid/graphics/Path;

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_13
    return-void
.end method

.method public fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    mul-float v3, v3, v2

    sget v4, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v3, v4

    check-cast v1, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    aget v1, v1, v7

    mul-float v1, v1, v2

    :goto_0
    div-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v1, v7

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v7

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v8, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v8, v8

    sub-int/2addr v8, v7

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v9, v1

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v9, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [F

    iput-object v9, v8, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startX:[F

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v9, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [F

    iput-object v9, v8, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startY:[F

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v9, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [F

    iput-object v9, v8, Lorg/telegram/ui/Charts/view_data/TransitionParams;->endX:[F

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v9, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [F

    iput-object v9, v8, Lorg/telegram/ui/Charts/view_data/TransitionParams;->endY:[F

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v9, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [F

    iput-object v9, v8, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_c

    if-ne v8, v7, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-wide/16 v15, 0x0

    if-ge v11, v14, :cond_5

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v5, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v5, :cond_3

    iget v5, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    iget-object v5, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v6, v5, v9

    cmp-long v5, v6, v15

    if-lez v5, :cond_4

    long-to-float v5, v6

    iget v6, v14, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v5, v5, v6

    add-float/2addr v12, v5

    add-int/lit8 v13, v13, 0x1

    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_b

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v11, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v11, :cond_6

    iget v11, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v11, v11, v10

    if-nez v11, :cond_6

    goto :goto_8

    :cond_6
    iget-object v11, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    aget-wide v17, v11, v9

    cmp-long v11, v17, v15

    if-nez v11, :cond_7

    goto :goto_6

    :cond_7
    iget v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    goto :goto_7

    :cond_8
    cmpl-float v17, v12, v10

    if-nez v17, :cond_9

    :goto_6
    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    aget-wide v10, v11, v9

    long-to-float v10, v10

    iget v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v10, v10, v7

    div-float v7, v10, v12

    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v10, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v10, v10, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v10, v10, v9

    mul-float v10, v10, v2

    sub-float/2addr v10, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v11, v14

    sget v14, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v11, v14

    int-to-float v11, v11

    mul-float v7, v7, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v11, v14

    int-to-float v11, v11

    sub-float/2addr v11, v7

    int-to-float v6, v6

    sub-float/2addr v11, v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    if-nez v8, :cond_a

    iget-object v14, v7, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startX:[F

    aput v10, v14, v5

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/TransitionParams;->startY:[F

    aput v11, v7, v5

    goto :goto_8

    :cond_a
    iget-object v14, v7, Lorg/telegram/ui/Charts/view_data/TransitionParams;->endX:[F

    aput v10, v14, v5

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/TransitionParams;->endY:[F

    aput v11, v7, v5

    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public findMaxValue(II)J
    .locals 0

    const-wide/16 p1, 0x64

    return-wide p1
.end method

.method protected getMinDistance()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->tick()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/StackLinearChartView;->drawChart(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawBottomLine(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->drawHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->drawSignaturesToHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawBottomSignature(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawPicker(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawSelection(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
