.class public Lorg/telegram/ui/Charts/PieChartView;
.super Lorg/telegram/ui/Charts/StackLinearChartView;
.source "SourceFile"


# instance fields
.field MAX_TEXT_SIZE:F

.field MIN_TEXT_SIZE:F

.field currentSelection:I

.field darawingValuesPercentage:[F

.field emptyDataAlpha:F

.field isEmpty:Z

.field lastEndIndex:I

.field lastStartIndex:I

.field lookupTable:[Ljava/lang/String;

.field oldW:I

.field pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

.field rectF:Landroid/graphics/RectF;

.field sum:F

.field textPaint:Landroid/text/TextPaint;

.field values:[F


# direct methods
.method public static synthetic $r8$lambda$ehJqdBgwdULrwxdWHp-FfWVZY4c(Lorg/telegram/ui/Charts/PieChartView;Lorg/telegram/ui/Charts/PieChartViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/PieChartView;->lambda$updateCharValues$0(Lorg/telegram/ui/Charts/PieChartViewData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/StackLinearChartView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Charts/PieChartView;->currentSelection:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Charts/PieChartView;->MIN_TEXT_SIZE:F

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Charts/PieChartView;->MAX_TEXT_SIZE:F

    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->lookupTable:[Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Charts/PieChartView;->oldW:I

    iput p1, p0, Lorg/telegram/ui/Charts/PieChartView;->lastStartIndex:I

    iput p1, p0, Lorg/telegram/ui/Charts/PieChartView;->lastEndIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Charts/PieChartView;->lookupTable:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    const-string v2, "sans-serif-medium"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->canCaptureChartSelection:Z

    return-void
.end method

.method private synthetic lambda$updateCharValues$0(Lorg/telegram/ui/Charts/PieChartViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateCharValues(FFZ)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v7, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v7, v7, v4

    cmpl-float v8, v7, p1

    if-ltz v8, :cond_1

    if-ne v6, v2, :cond_1

    move v6, v4

    :cond_1
    cmpg-float v7, v7, p2

    if-gtz v7, :cond_2

    move v5, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v5, v6, :cond_4

    move v6, v5

    :cond_4
    if-nez p3, :cond_5

    iget p1, p0, Lorg/telegram/ui/Charts/PieChartView;->lastEndIndex:I

    if-ne p1, v5, :cond_5

    iget p1, p0, Lorg/telegram/ui/Charts/PieChartView;->lastStartIndex:I

    if-ne p1, v6, :cond_5

    return-void

    :cond_5
    iput v5, p0, Lorg/telegram/ui/Charts/PieChartView;->lastEndIndex:I

    iput v6, p0, Lorg/telegram/ui/Charts/PieChartView;->lastStartIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/PieChartView;->isEmpty:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Charts/PieChartView;->sum:F

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-gt v6, v5, :cond_9

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    aget v2, v0, p2

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v7, v4, v6

    long-to-float v4, v7

    add-float/2addr v2, v4

    aput v2, v0, p2

    iget v0, p0, Lorg/telegram/ui/Charts/PieChartView;->sum:F

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v2, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v7, v2, v6

    long-to-float v2, v7

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/PieChartView;->sum:F

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/PieChartView;->isEmpty:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-boolean v0, v0, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v0, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v7, v0, v6

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_7

    iput-boolean v3, p0, Lorg/telegram/ui/Charts/PieChartView;->isEmpty:Z

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-nez p3, :cond_c

    :goto_4
    if-ge v3, v1, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object p3, p2, Lorg/telegram/ui/Charts/PieChartViewData;->animator:Landroid/animation/Animator;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_a
    iget p3, p0, Lorg/telegram/ui/Charts/PieChartView;->sum:F

    cmpl-float v0, p3, p1

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    aget v0, v0, v3

    div-float/2addr v0, p3

    :goto_5
    iget p3, p2, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    new-instance v2, Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Charts/PieChartView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Charts/PieChartView;Lorg/telegram/ui/Charts/PieChartViewData;)V

    invoke-virtual {p0, p3, v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/ui/Charts/PieChartViewData;->animator:Landroid/animation/Animator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    if-ge v3, v1, :cond_e

    iget p2, p0, Lorg/telegram/ui/Charts/PieChartView;->sum:F

    cmpl-float p2, p2, p1

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Charts/PieChartViewData;

    iput p1, p2, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    goto :goto_7

    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object p3, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    aget p3, p3, v3

    iget v0, p0, Lorg/telegram/ui/Charts/PieChartView;->sum:F

    div-float/2addr p3, v0

    iput p3, p2, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    return-void
.end method


# virtual methods
.method protected createLegendView()Lorg/telegram/ui/Charts/view_data/LegendSignatureView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Charts/view_data/PieLegendView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Charts/view_data/PieLegendView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    return-object v0
.end method

.method public createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/PieChartViewData;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Charts/PieChartViewData;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Charts/PieChartViewData;-><init>(Lorg/telegram/ui/Charts/data/ChartData$Line;)V

    return-object v0
.end method

.method public bridge synthetic createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/PieChartView;->createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/PieChartViewData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/StackLinearViewData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/PieChartView;->createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/PieChartViewData;

    move-result-object p1

    return-object p1
.end method

.method protected drawBottomLine(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method drawBottomSignature(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected drawChart(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/16 v8, 0xff

    const/4 v9, 0x1

    if-ne v1, v9, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v1, v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    :goto_0
    iget-boolean v2, v0, Lorg/telegram/ui/Charts/PieChartView;->isEmpty:Z

    const v3, 0x3df5c28f    # 0.12f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    cmpl-float v4, v2, v11

    if-eqz v4, :cond_5

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_4

    iput v11, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    goto :goto_1

    :cond_3
    iget v2, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    cmpl-float v4, v2, v10

    if-eqz v4, :cond_5

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_4

    iput v10, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_5
    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Charts/PieChartView;->emptyDataAlpha:F

    mul-float v1, v1, v2

    float-to-int v12, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float v2, v2, v1

    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v1

    if-eqz v7, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v2, v2, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    :goto_2
    const v2, 0x3ee66666    # 0.45f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    sub-float/2addr v4, v1

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    add-float/2addr v6, v1

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v13, v5

    add-float/2addr v13, v1

    invoke-virtual {v2, v3, v4, v6, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v1, v13, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v2, v2, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v2, v2, v3

    add-float/2addr v15, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    cmpl-float v1, v15, v11

    if-nez v1, :cond_a

    if-eqz v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void

    :cond_a
    const/high16 v16, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    const/high16 v17, -0x3d4c0000    # -90.0f

    :goto_4
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v18, 0x43b40000    # 360.0f

    if-ge v6, v13, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpg-float v3, v3, v11

    if-gtz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-boolean v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    div-float/2addr v3, v15

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v19, v3, v4

    iget-object v3, v0, Lorg/telegram/ui/Charts/PieChartView;->darawingValuesPercentage:[F

    aput v19, v3, v6

    cmpl-float v3, v19, v11

    if-nez v3, :cond_c

    :goto_5
    move v14, v6

    move/from16 v24, v12

    move/from16 v23, v15

    goto/16 :goto_8

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :cond_d
    div-float v1, v19, v1

    mul-float v1, v1, v18

    add-float v1, v17, v1

    float-to-double v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v1, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_e

    sget-object v1, Lorg/telegram/ui/Charts/BaseChartView;->INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v5, v5, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    invoke-virtual {v1, v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    if-eqz v7, :cond_e

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move/from16 v23, v15

    int-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v20, v20, v14

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v24, v12

    mul-double v11, v20, v14

    double-to-float v1, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v14

    double-to-float v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_e
    move/from16 v24, v12

    move/from16 v23, v15

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    xor-int/2addr v2, v9

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-eqz v7, :cond_f

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    if-eq v1, v9, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    mul-float v4, v19, v18

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v11, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    move v14, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_f
    move v14, v6

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v19, v19, v18

    add-float v17, v17, v19

    :goto_8
    add-int/lit8 v6, v14, 0x1

    move/from16 v15, v23

    move/from16 v12, v24

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_10
    move/from16 v24, v12

    move/from16 v23, v15

    if-eqz v7, :cond_15

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v13, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-boolean v3, v3, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v3, :cond_11

    move-object v5, v7

    move/from16 v8, v24

    const/16 v2, 0xff

    const/high16 v4, 0x40000000    # 2.0f

    goto/16 :goto_b

    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v3, v3, Lorg/telegram/ui/Charts/PieChartViewData;->drawingPart:F

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v3, v3, v4

    div-float v3, v3, v23

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v4, v3, v1

    mul-float v4, v4, v18

    add-float v4, v16, v4

    float-to-double v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v6, v6, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_12

    sget-object v6, Lorg/telegram/ui/Charts/BaseChartView;->INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    iget-object v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v11, v11, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    invoke-virtual {v6, v11}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    double-to-float v6, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    double-to-float v1, v11

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_12
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const v2, 0x3ca3d70a    # 0.02f

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_13

    if-lez v1, :cond_13

    const/16 v2, 0x64

    if-gt v1, v2, :cond_13

    iget-object v2, v0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v6, 0x3ed70a3d    # 0.42f

    mul-float v2, v2, v6

    float-to-double v8, v2

    sub-float v2, v10, v3

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v11

    double-to-float v2, v8

    iget-object v6, v0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    iget v8, v0, Lorg/telegram/ui/Charts/PieChartView;->MIN_TEXT_SIZE:F

    iget v9, v0, Lorg/telegram/ui/Charts/PieChartView;->MAX_TEXT_SIZE:F

    mul-float v9, v9, v3

    add-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, v0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    move/from16 v8, v24

    int-to-float v9, v8

    iget-object v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v11, v11, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v9, v9, v11

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/Charts/PieChartView;->lookupTable:[Ljava/lang/String;

    aget-object v1, v6, v1

    iget-object v6, v0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    float-to-double v11, v6

    move-wide/from16 v21, v11

    float-to-double v10, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v24, v24, v10

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    add-double v6, v21, v24

    double-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    move v9, v3

    float-to-double v2, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v10

    double-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Charts/PieChartView;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_13
    move v9, v3

    move-object v5, v7

    move/from16 v8, v24

    const/high16 v4, 0x40000000    # 2.0f

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float v3, v9, v18

    add-float v16, v16, v3

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object v7, v5

    move/from16 v24, v8

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    const/16 v8, 0xff

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_9

    :cond_14
    move-object v5, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    return-void
.end method

.method protected drawHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V
    .locals 0

    return-void
.end method

.method protected drawPickerChart(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v1, :cond_b

    check-cast v1, Lorg/telegram/ui/Charts/data/StackLinearChartData;

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
    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v4, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    iget v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    mul-float v5, v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_a

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    iget-object v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    check-cast v7, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object v7, v7, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget v7, v7, v4

    iget v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    sub-float/2addr v8, v5

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_2
    if-ge v9, v2, :cond_3

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v14, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v14, :cond_1

    iget v15, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v15, v15, v7

    if-nez v15, :cond_1

    move/from16 v17, v9

    goto :goto_3

    :cond_1
    iget-object v15, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v15, v15, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    move/from16 v17, v9

    aget-wide v8, v15, v4

    long-to-float v8, v8

    iget v9, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v8, v8, v9

    add-float/2addr v10, v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_2

    add-int/lit8 v11, v11, 0x1

    if-eqz v14, :cond_2

    const/4 v12, 0x0

    :cond_2
    :goto_3
    add-int/lit8 v9, v17, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v8, v2, :cond_9

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v14, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v14, :cond_4

    iget v14, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v14, v14, v7

    if-nez v14, :cond_4

    move/from16 v17, v8

    goto :goto_8

    :cond_4
    iget-object v14, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v14, v14, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    const/4 v15, 0x1

    if-ne v11, v15, :cond_6

    aget-wide v16, v14, v4

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-nez v14, :cond_5

    goto :goto_5

    :cond_5
    iget v14, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    move/from16 v17, v8

    goto :goto_7

    :cond_6
    cmpl-float v16, v10, v7

    if-nez v16, :cond_7

    :goto_5
    move/from16 v17, v8

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move/from16 v17, v8

    if-eqz v12, :cond_8

    aget-wide v7, v14, v4

    long-to-float v7, v7

    div-float/2addr v7, v10

    iget v8, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v7, v7, v8

    :goto_6
    mul-float v14, v7, v8

    goto :goto_7

    :cond_8
    aget-wide v7, v14, v4

    long-to-float v7, v7

    div-float/2addr v7, v10

    iget v8, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    goto :goto_6

    :goto_7
    iget v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    int-to-float v7, v7

    mul-float v14, v14, v7

    iget-object v8, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget v15, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    add-int/lit8 v19, v15, 0x1

    aput v6, v8, v15

    add-int/lit8 v20, v15, 0x2

    sub-float v21, v7, v14

    sub-float v21, v21, v9

    aput v21, v8, v19

    add-int/lit8 v19, v15, 0x3

    aput v6, v8, v20

    add-int/lit8 v15, v15, 0x4

    iput v15, v13, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    sub-float/2addr v7, v9

    aput v7, v8, v19

    add-float/2addr v9, v14

    :goto_8
    add-int/lit8 v8, v17, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_b

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v6, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPath:[F

    iget v7, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->linesPathBottomSize:I

    iget-object v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual {v8, v6, v3, v7, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    return-void
.end method

.method protected drawSelection(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected drawSignaturesToHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V
    .locals 0

    return-void
.end method

.method public fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Charts/PieChartView;->drawChart(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Charts/PieChartView;->darawingValuesPercentage:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    add-float/2addr v0, v2

    iget-object v2, p1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->angle:[F

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v3, v3, v0

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onActionUp()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Charts/PieChartView;->currentSelection:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Charts/PieChartView;->currentSelection:I

    const v2, 0x3dcccccd    # 0.1f

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v1, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v4, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    add-float/2addr v4, v2

    iput v4, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v1, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iput v3, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v1, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v4, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    sub-float/2addr v4, v2

    iput v4, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v1, v1, Lorg/telegram/ui/Charts/PieChartViewData;->selectionA:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/Charts/StackLinearChartView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Charts/PieChartView;->oldW:I

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/PieChartView;->oldW:I

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_0
    const p2, 0x3ee66666    # 0.45f

    mul-float p1, p1, p2

    float-to-int p1, p1

    div-int/lit8 p2, p1, 0xd

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Charts/PieChartView;->MIN_TEXT_SIZE:F

    div-int/lit8 p1, p1, 0x7

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Charts/PieChartView;->MAX_TEXT_SIZE:F

    :cond_1
    return-void
.end method

.method public onPickerDataChanged(ZZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Charts/BaseChartView;->onPickerDataChanged(ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget p3, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iget p1, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    invoke-direct {p0, p3, p1, p2}, Lorg/telegram/ui/Charts/PieChartView;->updateCharValues(FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPickerJumpTo(FFZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Charts/PieChartView;->updateCharValues(FFZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateIndexes()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method protected selectXOnChart(II)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/PieChartView;->isEmpty:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float p2, p2

    sub-float/2addr v0, p2

    float-to-double v2, v0

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr p1, v2

    double-to-float p1, p1

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    float-to-double v2, p1

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-float p1, v2

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/PieChartViewData;

    iget-boolean v5, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/PieChartViewData;

    iget v5, v5, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    cmpl-float v5, v5, p2

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    cmpl-float v5, p1, v4

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Charts/PieChartView;->darawingValuesPercentage:[F

    aget v5, v5, v3

    add-float/2addr v5, v4

    cmpg-float v6, p1, v5

    if-gez v6, :cond_3

    move p2, v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Charts/PieChartView;->darawingValuesPercentage:[F

    aget v5, v5, v3

    add-float/2addr v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_2
    iget p1, p0, Lorg/telegram/ui/Charts/PieChartView;->currentSelection:I

    if-eq p1, v3, :cond_7

    if-ltz v3, :cond_7

    iput v3, p0, Lorg/telegram/ui/Charts/PieChartView;->currentSelection:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v3, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    iget-object v5, p1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v5, v5, Lorg/telegram/ui/Charts/data/ChartData$Line;->name:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    iget v7, p0, Lorg/telegram/ui/Charts/PieChartView;->currentSelection:I

    aget v6, v6, v7

    float-to-int v6, v6

    iget p1, p1, Lorg/telegram/ui/Charts/view_data/LineViewData;->lineColor:I

    invoke-virtual {v3, v5, v6, p1}, Lorg/telegram/ui/Charts/view_data/PieLegendView;->setData(Ljava/lang/String;II)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v5, -0x80000000

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iget-object v3, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-double v5, v3

    float-to-double v7, p1

    mul-float p2, p2, v0

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float/2addr p2, p1

    float-to-double v9, p2

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v11

    iget-object p2, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-double v11, p2

    mul-float v4, v4, v0

    sub-float/2addr v4, p1

    float-to-double p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v3

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v0, v3

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v3, v1

    sub-int/2addr v0, v3

    sub-int/2addr v2, v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-double p1, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v7

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Charts/PieChartView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    int-to-float v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Charts/PieChartView;->pieLegendView:Lorg/telegram/ui/Charts/view_data/PieLegendView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend()V

    :cond_8
    :goto_4
    return-void
.end method

.method public bridge synthetic setData(Lorg/telegram/ui/Charts/data/ChartData;)Z
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/PieChartView;->setData(Lorg/telegram/ui/Charts/data/StackLinearChartData;)Z

    move-result p1

    return p1
.end method

.method public setData(Lorg/telegram/ui/Charts/data/StackLinearChartData;)Z
    .locals 2

    .line 0
    invoke-super {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->setData(Lorg/telegram/ui/Charts/data/ChartData;)Z

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Charts/PieChartView;->values:[F

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Charts/PieChartView;->darawingValuesPercentage:[F

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1}, Lorg/telegram/ui/Charts/PieChartView;->onPickerDataChanged(ZZZ)V

    :cond_0
    return v0
.end method

.method public updatePicker(Lorg/telegram/ui/Charts/data/ChartData;J)V
    .locals 7

    iget-object v0, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v0, v0

    const-wide/32 v1, 0x5265c00

    rem-long v1, p2, v1

    sub-long/2addr p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v5, v4, v2

    cmp-long v4, p2, v5

    if-ltz v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length p2, p2

    const/4 p3, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    if-ge p2, p3, :cond_2

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length p2, p2

    int-to-float p2, p2

    div-float p2, v0, p2

    :goto_1
    if-nez v3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    const/4 p3, 0x0

    iput p3, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iput p2, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    return-void

    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length p1, p1

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    if-lt v3, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    sub-float p2, v0, p2

    iput p2, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iput v0, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    return-void

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    int-to-float v2, v3

    mul-float v2, v2, p2

    iput v2, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    add-float/2addr v2, p2

    iput v2, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    cmpl-float p2, v2, v0

    if-lez p2, :cond_5

    iput v0, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    :cond_5
    invoke-virtual {p0, p3, p3, v1}, Lorg/telegram/ui/Charts/PieChartView;->onPickerDataChanged(ZZZ)V

    return-void
.end method
