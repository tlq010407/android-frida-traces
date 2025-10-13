.class public Lorg/telegram/ui/Charts/DoubleLinearChartView;
.super Lorg/telegram/ui/Charts/BaseChartView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected createHorizontalLinesData(JJI)Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v1, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    array-length v2, v1

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget v3, v1, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    aget v4, v1, v2

    move v11, v4

    :goto_0
    new-instance v1, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    iget-boolean v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    move-object v5, v1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v12, p5

    invoke-direct/range {v5 .. v14}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;-><init>(JJZFILandroid/text/TextPaint;Landroid/text/TextPaint;)V

    return-object v1
.end method

.method public createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/Charts/view_data/LineViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

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

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-ne v4, v7, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v10, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    mul-float v11, v10, v5

    sub-float v11, v8, v11

    :goto_0
    mul-float v10, v10, v5

    add-float/2addr v10, v8

    iget v12, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v1, v10, v8, v12, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_1
    if-ne v4, v9, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    const v10, 0x3e99999a    # 0.3f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    move v11, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v10, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    iget v12, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v1, v10, v10, v12, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_3
    const/4 v10, 0x3

    if-ne v4, v10, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v11, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    goto :goto_2

    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_2
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_e

    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v13, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v13, :cond_5

    iget v13, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v13, v13, v6

    if-nez v13, :cond_5

    move/from16 v19, v2

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_5
    iget-object v13, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v13, v13, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget-object v14, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v14, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v14, v14, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v15, v14

    if-ge v15, v7, :cond_6

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    aget v14, v14, v9

    mul-float v14, v14, v2

    :goto_5
    sget v15, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    div-float/2addr v15, v14

    float-to-int v14, v15

    add-int/2addr v14, v9

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v15, v14

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v6, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v6, v6

    sub-int/2addr v6, v9

    iget v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v7, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    :goto_6
    if-gt v15, v6, :cond_b

    aget-wide v8, v13, v15

    const-wide/16 v16, 0x0

    cmp-long v18, v8, v16

    if-gez v18, :cond_7

    move/from16 v19, v2

    goto :goto_7

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v5, v4, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v5, v5, v15

    mul-float v5, v5, v2

    sub-float/2addr v5, v3

    long-to-float v8, v8

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    aget v4, v4, v10

    mul-float v8, v8, v4

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v8, v4

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v9, v4

    div-float/2addr v8, v9

    iget-object v4, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int v9, v17, v9

    int-to-float v9, v9

    sub-float/2addr v9, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v19, v2

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int v17, v17, v2

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int v2, v17, v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    mul-float v8, v8, v2

    sub-float/2addr v9, v8

    sget-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v2, :cond_9

    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    add-int/lit8 v4, v14, 0x1

    if-nez v14, :cond_8

    aput v5, v2, v14

    add-int/lit8 v14, v14, 0x2

    aput v9, v2, v4

    goto :goto_7

    :cond_8
    aput v5, v2, v14

    add-int/lit8 v8, v14, 0x2

    aput v9, v2, v4

    add-int/lit8 v4, v14, 0x3

    aput v5, v2, v8

    add-int/lit8 v14, v14, 0x4

    aput v9, v2, v4

    goto :goto_7

    :cond_9
    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    if-eqz v7, :cond_a

    invoke-virtual {v2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v7, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v19

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_b
    move/from16 v19, v2

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v2, v4

    const/16 v4, 0x64

    if-le v2, v4, :cond_c

    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_8
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_9

    :cond_c
    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_8

    :goto_9
    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    iget v4, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    mul-float v4, v4, v11

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-nez v2, :cond_d

    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    iget-object v4, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_d
    iget-object v2, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget-object v4, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v14, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v19

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v5, :cond_9

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_9

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    const/4 v9, 0x0

    if-nez v8, :cond_0

    iget v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    :goto_1
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_0
    iget-object v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v8, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v8, v8

    iget-object v10, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v10, v10, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget-object v11, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->chartPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v8, :cond_6

    aget-wide v13, v10, v11

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-gez v17, :cond_1

    move/from16 v18, v8

    goto :goto_4

    :cond_1
    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v15, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v5, v15, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v5, v5, v11

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v5, v5, v9

    sget-boolean v9, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-eqz v9, :cond_2

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    move/from16 v18, v8

    goto :goto_3

    :cond_2
    move/from16 v18, v8

    iget-wide v8, v15, Lorg/telegram/ui/Charts/data/ChartData;->maxValue:J

    long-to-float v9, v8

    :goto_3
    long-to-float v8, v13

    iget-object v13, v15, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    aget v13, v13, v6

    mul-float v8, v8, v13

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    sub-int v8, v2, v4

    int-to-float v8, v8

    mul-float v9, v9, v8

    sget-boolean v8, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v8, :cond_4

    iget-object v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    add-int/lit8 v13, v12, 0x1

    if-nez v12, :cond_3

    aput v5, v8, v12

    add-int/lit8 v12, v12, 0x2

    aput v9, v8, v13

    goto :goto_4

    :cond_3
    aput v5, v8, v12

    add-int/lit8 v14, v12, 0x2

    aput v9, v8, v13

    add-int/lit8 v13, v12, 0x3

    aput v5, v8, v14

    add-int/lit8 v12, v12, 0x4

    aput v9, v8, v13

    goto :goto_4

    :cond_4
    iget-object v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    if-nez v11, :cond_5

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v18

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    iput v12, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-boolean v5, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v5, :cond_7

    iget v5, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v5, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    iget v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v5, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    if-eqz v5, :cond_8

    iget-object v5, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottom:[F

    iget v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v9, v8, v7}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    iget-object v5, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method protected drawSelection(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ltz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartActiveLineAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    mul-float v3, v3, v2

    sget v4, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v0, v4, v0

    mul-float v0, v0, v2

    sub-float/2addr v0, v3

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    move v5, v0

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v2, :cond_1

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    aget-wide v3, v2, v3

    long-to-float v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v3, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    aget v3, v3, v4

    mul-float v2, v2, v3

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v4, v5

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->selectionPaint:Landroid/graphics/Paint;

    iget v4, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    iget v4, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v4, v4, v5

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method protected drawSignaturesToHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v1, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    array-length v9, v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v2, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v10, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v2, v11, 0x1

    const/4 v12, 0x2

    rem-int/lit8 v13, v2, 0x2

    const v2, 0x3dcccccd    # 0.1f

    if-le v9, v12, :cond_1

    aget-wide v5, v1, v10

    aget-wide v14, v1, v3

    sub-long/2addr v5, v14

    long-to-float v1, v5

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iget v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v1, v5

    float-to-double v5, v1

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v5, v14

    if-gez v7, :cond_1

    div-float/2addr v1, v2

    move v14, v1

    goto :goto_1

    :cond_1
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_1
    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    if-ne v1, v12, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float/2addr v4, v1

    :goto_2
    move v15, v4

    goto :goto_4

    :cond_2
    if-ne v1, v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    goto :goto_2

    :cond_4
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    iget v4, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    mul-float v4, v4, v15

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v1, v2

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int v7, v1, v2

    int-to-float v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v6, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v7

    iget-object v3, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    move/from16 v17, v11

    aget-wide v10, v3, v5

    long-to-float v3, v10

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v3, v4

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v10, v4

    div-float/2addr v3, v10

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v10, v1

    iget-object v1, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v12, :cond_5

    goto :goto_7

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget v2, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget v2, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    :goto_6
    mul-float v2, v2, v3

    mul-float v2, v2, v15

    mul-float v2, v2, v14

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    :cond_6
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget v2, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    goto :goto_6

    :goto_8
    sget v11, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-int v1, v10, v6

    int-to-float v4, v1

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    const/16 v18, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move/from16 v3, v18

    move/from16 v18, v4

    move v4, v5

    move/from16 v20, v5

    move v5, v11

    move v11, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->drawText(Landroid/graphics/Canvas;IIFFLandroid/text/TextPaint;)V

    goto :goto_9

    :cond_7
    move/from16 v20, v5

    move v11, v6

    move/from16 v18, v7

    :goto_9
    iget-object v1, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x1

    if-le v1, v7, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    move/from16 v6, v17

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget v2, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    iget v2, v8, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v2, v2, v3

    mul-float v2, v2, v15

    mul-float v2, v2, v14

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float v5, v1, v2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    const/4 v3, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v16, v4

    move/from16 v4, v20

    move v6, v10

    const/4 v10, 0x1

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->drawText(Landroid/graphics/Canvas;IIFFLandroid/text/TextPaint;)V

    goto :goto_a

    :cond_8
    const/4 v10, 0x1

    :goto_a
    add-int/lit8 v5, v20, 0x1

    move v6, v11

    move/from16 v11, v17

    move/from16 v7, v18

    goto/16 :goto_5

    :cond_9
    return-void
.end method

.method public findMaxValue(II)J
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v6, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v6, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v6, v6, Lorg/telegram/ui/Charts/data/ChartData$Line;->segmentTree:Lorg/telegram/messenger/SegmentTree;

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/SegmentTree;->rMaxQ(II)J

    move-result-wide v6

    long-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v7, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    aget v7, v7, v3

    mul-float v6, v6, v7

    float-to-long v6, v6

    goto :goto_1

    :cond_1
    move-wide v6, v1

    :goto_1
    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    move-wide v4, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v4
.end method

.method public findMinValue(II)J
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->segmentTree:Lorg/telegram/messenger/SegmentTree;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/SegmentTree;->rMinQ(II)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v5, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    aget v5, v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    goto :goto_1

    :cond_1
    const-wide/32 v4, 0x7fffffff

    :goto_1
    cmp-long v6, v4, v1

    if-gez v6, :cond_2

    move-wide v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    invoke-super {p0}, Lorg/telegram/ui/Charts/BaseChartView;->init()V

    return-void
.end method

.method protected updatePickerMinMaxHeight()V
    .locals 8

    sget-boolean v0, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v0, v0, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updatePickerMinMaxHeight()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v6, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v6, :cond_2

    iget-object v5, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-wide v5, v5, Lorg/telegram/ui/Charts/data/ChartData$Line;->maxValue:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    move-wide v3, v5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_4

    long-to-float v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v3, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;->linesK:[F

    aget v3, v3, v5

    mul-float v0, v0, v3

    float-to-long v3, v0

    :cond_4
    cmp-long v0, v3, v1

    if-lez v0, :cond_6

    long-to-float v0, v3

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMaxHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMaxHeight:F

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMaxHeight:F

    new-instance v2, Lorg/telegram/ui/Charts/DoubleLinearChartView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Charts/DoubleLinearChartView$1;-><init>(Lorg/telegram/ui/Charts/DoubleLinearChartView;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_6
    return-void
.end method
