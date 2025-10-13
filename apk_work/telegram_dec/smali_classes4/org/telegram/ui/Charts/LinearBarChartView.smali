.class public Lorg/telegram/ui/Charts/LinearBarChartView;
.super Lorg/telegram/ui/Charts/BaseChartView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Charts/view_data/LineViewData;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Charts/view_data/LineViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;Z)V

    return-object v0
.end method

.method protected drawChart(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    mul-float v3, v3, v2

    sget v4, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    const/4 v8, 0x0

    if-nez v7, :cond_0

    iget v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    move/from16 v21, v2

    move/from16 v17, v5

    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_0
    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v9, v7

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v9, v10, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    aget v7, v7, v11

    mul-float v7, v7, v2

    :goto_1
    iget-object v9, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    sget v12, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    div-float/2addr v12, v7

    float-to-int v12, v12

    add-int/2addr v12, v11

    iget-object v13, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v13, v12

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v14, v14, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v14, v14

    sub-int/2addr v14, v11

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    :goto_2
    const/high16 v16, 0x40000000    # 2.0f

    if-gt v13, v12, :cond_7

    move/from16 v17, v5

    aget-wide v4, v9, v13

    const-wide/16 v18, 0x0

    cmp-long v20, v4, v18

    if-gez v20, :cond_2

    move/from16 v21, v2

    goto/16 :goto_4

    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v8, v8, v13

    mul-float v8, v8, v2

    sub-float/2addr v8, v3

    long-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v4, v5

    iget v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v11, v5

    div-float/2addr v4, v11

    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float v5, v5, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v11, v10

    int-to-float v10, v11

    sub-float/2addr v10, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move/from16 v21, v2

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v11, v2

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v11, v2

    int-to-float v2, v11

    sub-float/2addr v2, v5

    mul-float v4, v4, v2

    sub-float/2addr v10, v4

    sget-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v2, :cond_5

    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    add-int/lit8 v4, v15, 0x1

    if-nez v15, :cond_3

    div-float v5, v7, v16

    sub-float v11, v8, v5

    aput v11, v2, v15

    add-int/lit8 v11, v15, 0x2

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x3

    add-float/2addr v8, v5

    aput v8, v2, v11

    add-int/lit8 v5, v15, 0x4

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x5

    aput v8, v2, v5

    add-int/lit8 v15, v15, 0x6

    aput v10, v2, v4

    goto :goto_4

    :cond_3
    if-ne v13, v12, :cond_4

    div-float v11, v7, v16

    sub-float v16, v8, v11

    aput v16, v2, v15

    add-int/lit8 v22, v15, 0x2

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x3

    aput v16, v2, v22

    add-int/lit8 v16, v15, 0x4

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x5

    add-float/2addr v8, v11

    aput v8, v2, v16

    add-int/lit8 v11, v15, 0x6

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x7

    aput v8, v2, v11

    add-int/lit8 v11, v15, 0x8

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x9

    aput v8, v2, v11

    add-int/lit8 v15, v15, 0xa

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v8, v5

    aput v8, v2, v4

    goto :goto_4

    :cond_4
    div-float v5, v7, v16

    sub-float v11, v8, v5

    aput v11, v2, v15

    add-int/lit8 v16, v15, 0x2

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x3

    aput v11, v2, v16

    add-int/lit8 v11, v15, 0x4

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x5

    add-float/2addr v8, v5

    aput v8, v2, v11

    add-int/lit8 v5, v15, 0x6

    aput v10, v2, v4

    add-int/lit8 v4, v15, 0x7

    aput v8, v2, v5

    add-int/lit8 v15, v15, 0x8

    aput v10, v2, v4

    goto :goto_4

    :cond_5
    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    div-float v4, v7, v16

    sub-float v4, v8, v4

    if-eqz v14, :cond_6

    invoke-virtual {v2, v4, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v14, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v4, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    div-float v4, v7, v16

    add-float/2addr v8, v4

    invoke-virtual {v2, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    move/from16 v2, v21

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_7
    move/from16 v21, v2

    move/from16 v17, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-ne v2, v5, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_8

    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    mul-float v7, v5, v16

    sub-float v8, v4, v7

    :goto_5
    mul-float v5, v5, v16

    add-float/2addr v5, v4

    :cond_9
    :goto_6
    iget v7, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v2, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v1, v5, v4, v7, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v4, v8

    goto :goto_8

    :cond_a
    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v2, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_b

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    move v8, v2

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    iget-boolean v7, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->needScaleY:Z

    if-eqz v7, :cond_9

    move v4, v5

    goto :goto_6

    :cond_c
    const/4 v5, 0x3

    if-ne v2, v5, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v2, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    :cond_d
    :goto_8
    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    iget v5, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v5, v5, v7

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v2, v4

    const/16 v4, 0x64

    if-le v2, v4, :cond_e

    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_9
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_a

    :cond_e
    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_9

    :goto_a
    sget-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-nez v2, :cond_f

    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    goto :goto_b

    :cond_f
    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v15, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_c
    add-int/lit8 v2, v17, 0x1

    move v5, v2

    move/from16 v2, v21

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v4, v3

    const/4 v6, 0x2

    if-ge v4, v6, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    aget v3, v3, v4

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v3, v3, v4

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_c

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    const/4 v9, 0x0

    if-nez v8, :cond_1

    iget v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move/from16 v19, v6

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_1
    iget-object v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v8, v8

    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v10, v10, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget-object v11, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v8, :cond_9

    aget-wide v13, v10, v11

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-gez v17, :cond_2

    move/from16 v19, v6

    move-object v6, v10

    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_2
    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v4, v15, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v4, v4, v11

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v4, v4, v9

    sget-boolean v9, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-eqz v9, :cond_3

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    move/from16 v19, v6

    goto :goto_4

    :cond_3
    move/from16 v19, v6

    iget-wide v5, v15, Lorg/telegram/ui/Charts/data/ChartData;->maxValue:J

    long-to-float v5, v5

    :goto_4
    if-eqz v9, :cond_4

    iget v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    move v9, v6

    move-object v6, v10

    goto :goto_5

    :cond_4
    move-object v6, v10

    iget-wide v9, v15, Lorg/telegram/ui/Charts/data/ChartData;->minValue:J

    long-to-float v9, v9

    :goto_5
    long-to-float v10, v13

    sub-float/2addr v10, v9

    sub-float/2addr v5, v9

    div-float/2addr v10, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v9, v5, v10

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    sget-boolean v10, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v10, :cond_7

    if-nez v12, :cond_5

    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    add-int/lit8 v14, v12, 0x1

    div-float v13, v3, v13

    sub-float v15, v4, v13

    aput v15, v10, v12

    add-int/lit8 v15, v12, 0x2

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x3

    add-float/2addr v4, v13

    aput v4, v10, v15

    add-int/lit8 v13, v12, 0x4

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x5

    aput v4, v10, v13

    add-int/lit8 v12, v12, 0x6

    aput v9, v10, v14

    goto :goto_7

    :cond_5
    add-int/lit8 v10, v8, -0x1

    if-ne v11, v10, :cond_6

    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    add-int/lit8 v14, v12, 0x1

    div-float v13, v3, v13

    sub-float v15, v4, v13

    aput v15, v10, v12

    add-int/lit8 v18, v12, 0x2

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x3

    aput v15, v10, v18

    add-int/lit8 v15, v12, 0x4

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x5

    add-float/2addr v4, v13

    aput v4, v10, v15

    add-int/lit8 v13, v12, 0x6

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x7

    aput v4, v10, v13

    add-int/lit8 v13, v12, 0x8

    aput v9, v10, v14

    add-int/lit8 v9, v12, 0x9

    aput v4, v10, v13

    add-int/lit8 v12, v12, 0xa

    const/4 v4, 0x0

    aput v4, v10, v9

    goto :goto_7

    :cond_6
    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    add-int/lit8 v14, v12, 0x1

    div-float v13, v3, v13

    sub-float v15, v4, v13

    aput v15, v10, v12

    add-int/lit8 v18, v12, 0x2

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x3

    aput v15, v10, v18

    add-int/lit8 v15, v12, 0x4

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x5

    add-float/2addr v4, v13

    aput v4, v10, v15

    add-int/lit8 v13, v12, 0x6

    aput v9, v10, v14

    add-int/lit8 v14, v12, 0x7

    aput v4, v10, v13

    add-int/lit8 v12, v12, 0x8

    aput v9, v10, v14

    goto :goto_7

    :cond_7
    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    div-float v14, v3, v13

    sub-float v14, v4, v14

    if-nez v11, :cond_8

    invoke-virtual {v10, v14, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_6

    :cond_8
    invoke-virtual {v10, v14, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_6
    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    div-float v13, v3, v13

    add-float/2addr v4, v13

    invoke-virtual {v10, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object v10, v6

    move/from16 v6, v19

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_9
    move/from16 v19, v6

    const/high16 v5, 0x3f800000    # 1.0f

    iput v12, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-boolean v4, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v4, :cond_a

    iget v4, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_a

    goto/16 :goto_2

    :cond_a
    iget-object v4, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    iget v6, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v4, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v4, :cond_b

    iget-object v4, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    iget v6, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v6, v7}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    iget-object v4, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    iget-object v6, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_8
    add-int/lit8 v6, v19, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    invoke-super {p0}, Lorg/telegram/ui/Charts/BaseChartView;->init()V

    return-void
.end method
