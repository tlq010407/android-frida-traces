.class public Lorg/telegram/ui/Charts/BarChartView;
.super Lorg/telegram/ui/Charts/BaseChartView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->superDraw:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->useAlphaSignature:Z

    return-void
.end method


# virtual methods
.method public createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/BarViewData;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Charts/view_data/BarViewData;

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Charts/view_data/BarViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public bridge synthetic createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BarChartView;->createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/BarViewData;

    move-result-object p1

    return-object p1
.end method

.method protected drawChart(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v1, :cond_e

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v4, v3

    div-float v8, v2, v4

    mul-float v3, v3, v8

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float v9, v3, v2

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    const/4 v11, 0x0

    if-gez v2, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    move v12, v2

    :goto_0
    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v2, v10

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    array-length v1, v1

    sub-int/2addr v1, v10

    if-le v2, v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    :cond_1
    move v13, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartEnd:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v14, 0x0

    invoke-virtual {v7, v1, v14, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v15, 0x40000000    # 2.0f

    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v1, v6, :cond_2

    iput-boolean v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    iput v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float v3, v5, v2

    mul-float v2, v2, v15

    add-float/2addr v2, v5

    iget v4, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v7, v2, v5, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_1
    move/from16 v16, v3

    goto :goto_2

    :cond_2
    if-ne v1, v10, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v3, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v7, v3, v5, v2, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    :cond_3
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_2
    const/4 v4, 0x0

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Charts/view_data/BarViewData;

    iget-boolean v1, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v1, :cond_4

    iget v1, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v1, v1, v14

    if-nez v1, :cond_4

    move/from16 v18, v4

    const/4 v10, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_4
    const/16 v17, 0x2

    goto/16 :goto_c

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v2, v1

    if-ge v2, v6, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_5
    aget v1, v1, v10

    mul-float v1, v1, v8

    :goto_5
    iget-object v2, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget v6, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    move v10, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_6
    if-gt v10, v13, :cond_7

    div-float v21, v1, v15

    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v15, v15, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v15, v15, v10

    mul-float v15, v15, v8

    add-float v21, v21, v15

    sub-float v21, v21, v9

    aget-wide v14, v2, v10

    long-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    div-float/2addr v14, v15

    mul-float v14, v14, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v15, v5

    int-to-float v5, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v22, v2

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v15, v2

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v15, v2

    int-to-float v2, v15

    mul-float v14, v14, v2

    sub-float/2addr v5, v14

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ne v10, v2, :cond_6

    iget-boolean v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz v2, :cond_6

    move/from16 v18, v5

    move/from16 v19, v21

    const/16 v20, 0x1

    goto :goto_7

    :cond_6
    iget-object v2, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    add-int/lit8 v14, v11, 0x1

    aput v21, v2, v11

    add-int/lit8 v15, v11, 0x2

    aput v5, v2, v14

    add-int/lit8 v5, v11, 0x3

    aput v21, v2, v15

    add-int/lit8 v11, v11, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    aput v14, v2, v5

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v22

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_6

    :cond_7
    if-nez v20, :cond_9

    iget-boolean v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    iget-object v2, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    goto :goto_9

    :cond_9
    :goto_8
    iget-object v2, v3, Lorg/telegram/ui/Charts/view_data/BarViewData;->unselectedPaint:Landroid/graphics/Paint;

    :goto_9
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v20, :cond_a

    iget-object v5, v3, Lorg/telegram/ui/Charts/view_data/BarViewData;->unselectedPaint:Landroid/graphics/Paint;

    iget v6, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    iget v10, v3, Lorg/telegram/ui/Charts/view_data/BarViewData;->blendColor:I

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v14, v15, v14

    invoke-static {v6, v10, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    :cond_a
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_a
    iget-boolean v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    if-eqz v5, :cond_b

    iget-object v5, v3, Lorg/telegram/ui/Charts/view_data/BarViewData;->unselectedPaint:Landroid/graphics/Paint;

    iget v6, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    iget v10, v3, Lorg/telegram/ui/Charts/view_data/BarViewData;->blendColor:I

    const/4 v14, 0x0

    invoke-static {v6, v10, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_b
    const/4 v14, 0x0

    :goto_b
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v11, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    if-eqz v20, :cond_c

    iget-object v2, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v6, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object v11, v3

    move/from16 v3, v18

    move/from16 v18, v4

    move/from16 v4, v19

    const/16 v17, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    :cond_c
    move/from16 v18, v4

    goto/16 :goto_4

    :goto_c
    add-int/lit8 v4, v18, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/view_data/BarViewData;

    iget-boolean v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v7, :cond_0

    iget v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    move-object/from16 v6, p1

    move/from16 v18, v2

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_0
    iget-object v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->bottomLinePath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v8, v7

    array-length v9, v7

    const/4 v11, 0x2

    if-ge v9, v11, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    aget v7, v7, v9

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v7, v7, v9

    :goto_1
    iget-object v9, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget v11, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v8, :cond_4

    aget-wide v14, v9, v12

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-gez v18, :cond_2

    move/from16 v18, v2

    move v2, v8

    move-object/from16 v19, v9

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v10, v4, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v10, v10, v12

    move/from16 v18, v2

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v10, v10, v2

    sget-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    move v4, v2

    move v2, v8

    move-object/from16 v19, v9

    goto :goto_3

    :cond_3
    move v2, v8

    move-object/from16 v19, v9

    iget-wide v8, v4, Lorg/telegram/ui/Charts/data/ChartData;->maxValue:J

    long-to-float v4, v8

    :goto_3
    long-to-float v8, v14

    div-float/2addr v8, v4

    mul-float v8, v8, v11

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v8, v4, v8

    sub-int v9, v1, v3

    int-to-float v9, v9

    mul-float v8, v8, v9

    iget-object v9, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    add-int/lit8 v14, v13, 0x1

    aput v10, v9, v13

    add-int/lit8 v15, v13, 0x2

    aput v8, v9, v14

    add-int/lit8 v8, v13, 0x3

    aput v10, v9, v15

    add-int/lit8 v13, v13, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v10, v14

    int-to-float v10, v10

    aput v10, v9, v8

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v8, v2

    move/from16 v2, v18

    move-object/from16 v9, v19

    goto :goto_2

    :cond_4
    move/from16 v18, v2

    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v7, v4

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget-object v4, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v13, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected drawSelection(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected getMinDistance()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->tick()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BarChartView;->drawChart(Landroid/graphics/Canvas;)V

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

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BarChartView;->drawSelection(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
