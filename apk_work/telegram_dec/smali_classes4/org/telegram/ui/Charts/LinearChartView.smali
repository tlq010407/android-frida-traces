.class public Lorg/telegram/ui/Charts/LinearChartView;
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

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Charts/view_data/LineViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;Z)V

    return-object v0
.end method

.method protected drawChart(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v2, :cond_f

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

    if-ge v5, v6, :cond_f

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

    move/from16 v16, v5

    const/4 v6, 0x0

    goto/16 :goto_b

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

    float-to-int v7, v12

    add-int/2addr v7, v11

    iget-object v12, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v12, v7

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v13, v13, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v13, v13

    sub-int/2addr v13, v11

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v14, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_2
    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v16, v5

    if-gt v12, v7, :cond_6

    aget-wide v4, v9, v12

    const-wide/16 v17, 0x0

    cmp-long v19, v4, v17

    if-gez v19, :cond_2

    goto :goto_3

    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v8, v8, v12

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

    div-float/2addr v5, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v11, v15

    int-to-float v11, v11

    sub-float/2addr v11, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v15, v10

    sget v10, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v15, v10

    int-to-float v10, v15

    sub-float/2addr v10, v5

    mul-float v4, v4, v10

    sub-float/2addr v11, v4

    sget-boolean v4, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v4, :cond_4

    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    add-int/lit8 v5, v14, 0x1

    if-nez v14, :cond_3

    aput v8, v4, v14

    add-int/lit8 v14, v14, 0x2

    aput v11, v4, v5

    goto :goto_3

    :cond_3
    aput v8, v4, v14

    add-int/lit8 v10, v14, 0x2

    aput v11, v4, v5

    add-int/lit8 v5, v14, 0x3

    aput v8, v4, v10

    add-int/lit8 v14, v14, 0x4

    aput v11, v4, v5

    goto :goto_3

    :cond_4
    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    if-eqz v13, :cond_5

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-ne v4, v7, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v7, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_7

    const/4 v8, 0x0

    goto :goto_4

    :cond_7
    mul-float v8, v7, v15

    sub-float v8, v5, v8

    :goto_4
    mul-float v7, v7, v15

    add-float/2addr v7, v5

    :cond_8
    :goto_5
    iget v9, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v1, v7, v5, v9, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v5, v8

    goto :goto_7

    :cond_9
    const/4 v7, 0x1

    if-ne v4, v7, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const v7, 0x3e99999a    # 0.3f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_a

    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    move v8, v4

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v7, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    iget-boolean v9, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->needScaleY:Z

    if-eqz v9, :cond_8

    move v5, v7

    goto :goto_5

    :cond_b
    const/4 v7, 0x3

    if-ne v4, v7, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v5, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    :cond_c
    :goto_7
    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    iget v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v7, v7, v8

    mul-float v7, v7, v5

    float-to-int v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v4, v5

    const/16 v5, 0x64

    if-le v4, v5, :cond_d

    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_8
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_9

    :cond_d
    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_8

    :goto_9
    sget-boolean v4, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-nez v4, :cond_e

    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto :goto_a

    :cond_e
    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v14, v5}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_b
    add-int/lit8 v5, v16, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v3, :cond_a

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v6, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iget v6, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    move v8, v4

    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_0
    iget-object v6, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v6, v6

    iget-object v8, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget-object v9, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v6, :cond_7

    aget-wide v11, v8, v9

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-gez v15, :cond_1

    move-object/from16 v16, v8

    move v8, v4

    goto :goto_5

    :cond_1
    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v14, v13, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v14, v14, v9

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v14, v14, v15

    sget-boolean v15, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-eqz v15, :cond_2

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    move v7, v3

    move-object/from16 v16, v8

    goto :goto_3

    :cond_2
    move-object/from16 v16, v8

    iget-wide v7, v13, Lorg/telegram/ui/Charts/data/ChartData;->maxValue:J

    long-to-float v7, v7

    :goto_3
    if-eqz v15, :cond_3

    iget v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    move v3, v8

    move v8, v4

    goto :goto_4

    :cond_3
    move v8, v4

    iget-wide v3, v13, Lorg/telegram/ui/Charts/data/ChartData;->minValue:J

    long-to-float v3, v3

    :goto_4
    long-to-float v4, v11

    sub-float/2addr v4, v3

    sub-float/2addr v7, v3

    div-float/2addr v4, v7

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    sget-boolean v4, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v4, :cond_5

    iget-object v4, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    add-int/lit8 v7, v10, 0x1

    if-nez v10, :cond_4

    aput v14, v4, v10

    add-int/lit8 v10, v10, 0x2

    aput v3, v4, v7

    goto :goto_5

    :cond_4
    aput v14, v4, v10

    add-int/lit8 v11, v10, 0x2

    aput v3, v4, v7

    add-int/lit8 v7, v10, 0x3

    aput v14, v4, v11

    add-int/lit8 v10, v10, 0x4

    aput v3, v4, v7

    goto :goto_5

    :cond_5
    iget-object v4, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    if-nez v9, :cond_6

    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v4, v8

    move-object/from16 v8, v16

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    move v8, v4

    iput v10, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-boolean v3, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v3, :cond_8

    iget v3, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    goto/16 :goto_1

    :cond_8
    iget-object v3, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    iget v4, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v3, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v3, :cond_9

    iget-object v3, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    iget v4, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-object v5, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    iget-object v3, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    iget-object v4, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v4, v8, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    invoke-super {p0}, Lorg/telegram/ui/Charts/BaseChartView;->init()V

    return-void
.end method
