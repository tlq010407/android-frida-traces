.class public Lorg/telegram/ui/Charts/data/StackLinearChartData;
.super Lorg/telegram/ui/Charts/data/ChartData;
.source "SourceFile"


# instance fields
.field public simplifiedSize:I

.field public simplifiedY:[[J

.field ySum:[J

.field ySumSegmentTree:Lorg/telegram/messenger/SegmentTree;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 13

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [J

    iget-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    move-wide v4, v0

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v6, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v9, v8, v7

    aget-wide v11, p2, v3

    add-long/2addr v11, v9

    aput-wide v11, p2, v3

    cmp-long v8, v9, v0

    if-nez v8, :cond_0

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aget-wide v6, p2, v3

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    aget-wide v7, p2, v6

    long-to-double v7, v7

    long-to-double v9, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v11, v7, v9

    if-gez v11, :cond_3

    aget v7, v2, v6

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Charts/data/ChartData$Line;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v3, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object p2, p2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    array-length p2, p2

    iget-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, p2, [J

    iput-object v3, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->ySum:[J

    const/4 v3, 0x0

    :goto_4
    if-ge v3, p2, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->ySum:[J

    aput-wide v0, v4, v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->ySum:[J

    aget-wide v6, v5, v3

    iget-object v8, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v8, v8, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v9, v8, v3

    add-long/2addr v6, v9

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    new-instance p1, Lorg/telegram/messenger/SegmentTree;

    iget-object p2, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->ySum:[J

    invoke-direct {p1, p2}, Lorg/telegram/messenger/SegmentTree;-><init>([J)V

    iput-object p1, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->ySumSegmentTree:Lorg/telegram/messenger/SegmentTree;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Charts/data/ChartData;J)V
    .locals 7

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Charts/data/ChartData;-><init>()V

    iget-object v0, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p2

    add-int/lit8 p3, p2, -0x4

    add-int/lit8 p2, p2, 0x4

    const/4 v0, 0x0

    if-gez p3, :cond_0

    neg-int p3, p3

    add-int/2addr p2, p3

    const/4 p3, 0x0

    :cond_0
    iget-object v1, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-le p2, v2, :cond_1

    array-length v2, v1

    sub-int/2addr p2, v2

    sub-int/2addr p3, p2

    array-length p2, v1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    sub-int v1, p2, p3

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [J

    iput-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    new-array v2, v1, [F

    iput-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Charts/data/ChartData$Line;-><init>(Lorg/telegram/ui/Charts/data/ChartData;)V

    new-array v4, v1, [J

    iput-object v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->id:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->id:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->name:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iput v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    iput v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    iput v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    iget-object v4, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-gt p3, p2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    iget-object v3, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v4, v3, p3

    aput-wide v4, v2, v1

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget-object v4, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v5, v4, p3

    aput-wide v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    const-wide/32 p1, 0x5265c00

    iput-wide p1, p0, Lorg/telegram/ui/Charts/data/ChartData;->timeStep:J

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/data/StackLinearChartData;->measure()V

    return-void
.end method


# virtual methods
.method protected measure()V
    .locals 14

    invoke-super {p0}, Lorg/telegram/ui/Charts/data/ChartData;->measure()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedSize:I

    iget-object v1, p0, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x430c0000    # 140.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v5, v1, v3

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v4

    aput v2, v6, v0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    iput-object v6, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedY:[[J

    new-array v6, v2, [J

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_1

    iget-object v9, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    aget-wide v10, v9, v7

    aget-wide v12, v6, v8

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    aput-wide v10, v6, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    rem-int v8, v7, v3

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_2

    iget-object v9, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedY:[[J

    aget-object v9, v9, v8

    iget v10, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedSize:I

    aget-wide v11, v6, v8

    aput-wide v11, v9, v10

    const-wide/16 v9, 0x0

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget v8, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedSize:I

    add-int/2addr v8, v4

    iput v8, p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;->simplifiedSize:I

    if-lt v8, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method
