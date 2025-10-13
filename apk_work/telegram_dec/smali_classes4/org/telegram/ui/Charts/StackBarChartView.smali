.class public Lorg/telegram/ui/Charts/StackBarChartView;
.super Lorg/telegram/ui/Charts/BaseChartView;
.source "SourceFile"


# instance fields
.field private yMaxPoints:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->superDraw:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->useAlphaSignature:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/StackBarChartView;->createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/StackBarViewData;

    move-result-object p1

    return-object p1
.end method

.method public createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/StackBarViewData;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Charts/view_data/StackBarViewData;

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Charts/view_data/StackBarViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method protected drawChart(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v4, v3

    div-float v8, v2, v4

    mul-float v3, v3, v8

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float v9, v3, v2

    check-cast v1, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v3, v1

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    aget v1, v1, v6

    mul-float v3, v1, v8

    sub-float v10, v8, v3

    mul-float v1, v1, v10

    move v10, v1

    move v11, v3

    :goto_0
    div-float/2addr v2, v11

    float-to-int v1, v2

    add-int/2addr v1, v6

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    sub-int/2addr v2, v1

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v12, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v12, v12, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v12, v12

    sub-int/2addr v12, v6

    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    add-int/2addr v13, v1

    add-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iput v3, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    if-ne v12, v4, :cond_3

    iput-boolean v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    iput v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v12, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float v15, v5, v12

    mul-float v12, v12, v13

    add-float/2addr v12, v5

    iget v3, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v7, v12, v5, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_3
    if-ne v12, v6, :cond_4

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v15, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    iget v4, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pX:F

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pY:F

    invoke-virtual {v7, v15, v5, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    if-ne v12, v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v15, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    goto :goto_2

    :cond_5
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_2
    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ltz v3, :cond_6

    iget-boolean v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-gt v2, v1, :cond_a

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ne v3, v2, :cond_8

    if-eqz v6, :cond_8

    :cond_7
    move/from16 v19, v15

    goto/16 :goto_6

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v5, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v5, :cond_9

    iget v5, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v5, v5, v14

    if-nez v5, :cond_9

    move/from16 v19, v15

    goto :goto_5

    :cond_9
    iget-object v5, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    div-float v18, v11, v13

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v13, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v13, v13, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v13, v13, v2

    sub-float v19, v8, v11

    mul-float v13, v13, v19

    add-float v18, v18, v13

    sub-float v18, v18, v9

    move/from16 v19, v15

    aget-wide v14, v5, v2

    long-to-float v5, v14

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    div-float/2addr v5, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v14, v15

    sget v15, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float v5, v5, v14

    iget v14, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v5, v5, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    sub-float/2addr v14, v5

    iget-object v15, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget v13, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    add-int/lit8 v20, v13, 0x1

    aput v18, v15, v13

    add-int/lit8 v21, v13, 0x2

    sub-float/2addr v14, v4

    aput v14, v15, v20

    add-int/lit8 v14, v13, 0x3

    aput v18, v15, v21

    add-int/lit8 v13, v13, 0x4

    iput v13, v12, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    sub-float/2addr v12, v4

    aput v12, v15, v14

    add-float/2addr v4, v5

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v19

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    goto :goto_4

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v19

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_a
    move/from16 v19, v15

    const/4 v1, 0x0

    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v12, 0x437f0000    # 255.0f

    if-ge v1, v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/view_data/StackBarViewData;

    if-nez v6, :cond_c

    iget-boolean v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    iget-object v3, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v3, v2, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->unselectedPaint:Landroid/graphics/Paint;

    :goto_9
    if-eqz v6, :cond_d

    iget-object v4, v2, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->unselectedPaint:Landroid/graphics/Paint;

    iget v5, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    iget v13, v2, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->blendColor:I

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    invoke-static {v5, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_d
    iget-boolean v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    if-eqz v4, :cond_e

    iget-object v4, v2, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->unselectedPaint:Landroid/graphics/Paint;

    iget v5, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    iget v13, v2, Lorg/telegram/ui/Charts/view_data/StackBarViewData;->blendColor:I

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v5, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    :cond_e
    const/high16 v14, 0x3f800000    # 1.0f

    :goto_a
    mul-float v15, v19, v12

    float-to-int v4, v15

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget v2, v2, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    if-eqz v6, :cond_12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v2, :cond_10

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v15, 0x0

    cmpl-float v2, v2, v15

    if-nez v2, :cond_11

    const/high16 v16, 0x40000000    # 2.0f

    goto :goto_c

    :cond_10
    const/4 v15, 0x0

    :cond_11
    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v11, v16

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    aget v4, v4, v5

    sub-float v6, v8, v11

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    sub-float v4, v3, v9

    aget-wide v5, v2, v5

    long-to-float v2, v5

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v3, v5

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v17, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v2, v17

    iget-object v3, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    mul-float v5, v19, v12

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    sub-float v3, v2, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float v5, v2, v14

    iget-object v6, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v14, v14, v17

    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v1, :cond_b

    check-cast v1, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iput v3, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-float v4, v1

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Charts/StackBarChartView;->yMaxPoints:[J

    if-eqz v6, :cond_1

    array-length v6, v6

    if-ge v6, v2, :cond_2

    :cond_1
    new-array v6, v2, [J

    iput-object v6, v0, Lorg/telegram/ui/Charts/StackBarChartView;->yMaxPoints:[J

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_9

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v7, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v7, v7, v6

    iget v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v7, v7, v8

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    if-ge v8, v2, :cond_5

    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v11, v10, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v11, :cond_3

    iget v11, v10, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v9, v11, v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    iget-object v9, v10, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v10, v9, v6

    iget-object v9, v0, Lorg/telegram/ui/Charts/StackBarChartView;->yMaxPoints:[J

    aget-wide v12, v9, v8

    cmp-long v14, v10, v12

    if-lez v14, :cond_4

    aput-wide v10, v9, v8

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    rem-int v8, v6, v4

    if-nez v8, :cond_8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v8, v2, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v12, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v12, :cond_6

    iget v12, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v12, v12, v9

    if-nez v12, :cond_6

    goto :goto_6

    :cond_6
    sget-boolean v12, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-eqz v12, :cond_7

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    goto :goto_5

    :cond_7
    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v12, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-wide v12, v12, Lorg/telegram/ui/Charts/data/ChartData;->maxValue:J

    long-to-float v12, v12

    :goto_5
    iget-object v13, v0, Lorg/telegram/ui/Charts/StackBarChartView;->yMaxPoints:[J

    aget-wide v14, v13, v8

    long-to-float v14, v14

    div-float/2addr v14, v12

    iget v12, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v14, v14, v12

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v12, v12

    mul-float v14, v14, v12

    iget-object v15, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget v9, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    add-int/lit8 v16, v9, 0x1

    aput v7, v15, v9

    add-int/lit8 v17, v9, 0x2

    sub-float v18, v12, v14

    sub-float v18, v18, v10

    aput v18, v15, v16

    add-int/lit8 v16, v9, 0x3

    aput v7, v15, v17

    add-int/lit8 v9, v9, 0x4

    iput v9, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    sub-float/2addr v12, v10

    aput v12, v15, v16

    add-float/2addr v10, v14

    const-wide/16 v11, 0x0

    aput-wide v11, v13, v8

    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v1, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v6, v1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_a
    aget v1, v1, v5

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v1, v1, v5

    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    int-to-float v8, v4

    mul-float v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget v8, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-object v6, v6, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual {v9, v7, v3, v8, v6}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    return-void
.end method

.method protected drawSelection(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public findMaxValue(II)J
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackBarChartData;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Charts/data/StackBarChartData;->findMax(II)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getMinDistance()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method protected initPickerMaxHeight()V
    .locals 10

    invoke-super {p0}, Lorg/telegram/ui/Charts/BaseChartView;->initPickerMaxHeight()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    iget-object v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Charts/view_data/StackBarViewData;

    iget-boolean v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v8, :cond_0

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v8, v7, v3

    add-long/2addr v4, v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    long-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    iput v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onCheckChanged()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    array-length v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v2, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v3, Lorg/telegram/ui/Charts/data/StackBarChartData;

    new-array v4, v0, [J

    iput-object v4, v3, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/view_data/StackBarViewData;

    iget-boolean v5, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v5, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v6, v5, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    aget-wide v7, v6, v3

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v9, v5, v3

    add-long/2addr v7, v9

    aput-wide v7, v6, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackBarChartData;

    new-instance v1, Lorg/telegram/messenger/SegmentTree;

    iget-object v2, v0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySum:[J

    invoke-direct {v1, v2}, Lorg/telegram/messenger/SegmentTree;-><init>([J)V

    iput-object v1, v0, Lorg/telegram/ui/Charts/data/StackBarChartData;->ySumSegmentTree:Lorg/telegram/messenger/SegmentTree;

    invoke-super {p0}, Lorg/telegram/ui/Charts/BaseChartView;->onCheckChanged()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->tick()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/StackBarChartView;->drawChart(Landroid/graphics/Canvas;)V

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

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/StackBarChartView;->drawSelection(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected selectXOnChart(II)V
    .locals 8

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v2, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float v2, v2, v1

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v2, v3

    check-cast p2, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v3, p2, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v4, v3

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-ge v4, v5, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    aget v3, v3, v7

    mul-float v3, v3, v1

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, v2

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedCoordinate:F

    const/4 v1, 0x0

    cmpg-float v3, p1, v1

    if-gez v3, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedCoordinate:F

    goto :goto_1

    :cond_2
    cmpl-float v1, p1, v6

    if-lez v1, :cond_3

    iget-object p1, p2, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length p1, p1

    sub-int/2addr p1, v7

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iput v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedCoordinate:F

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p2, v1, v3, p1}, Lorg/telegram/ui/Charts/data/ChartData;->findIndex(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    if-le p1, p2, :cond_4

    iput p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    if-ge p1, p2, :cond_5

    iput p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    :cond_5
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-eq v0, p1, :cond_7

    iput-boolean v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend(F)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->dateSelectionListener:Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;->onDateSelected(J)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->runSmoothHaptic()V

    :cond_7
    return-void
.end method

.method protected updatePickerMinMaxHeight()V
    .locals 14

    sget-boolean v0, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackBarChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    move-wide v9, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_2

    iget-object v11, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/view_data/StackBarViewData;

    iget-boolean v12, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v12, :cond_1

    iget-object v11, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v11, v11, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v12, v11, v5

    add-long/2addr v9, v12

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    cmp-long v8, v9, v6

    if-lez v8, :cond_3

    move-wide v6, v9

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    cmp-long v0, v6, v3

    if-lez v0, :cond_6

    long-to-float v0, v6

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

    new-instance v2, Lorg/telegram/ui/Charts/StackBarChartView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Charts/StackBarChartView$1;-><init>(Lorg/telegram/ui/Charts/StackBarChartView;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_6
    return-void
.end method
