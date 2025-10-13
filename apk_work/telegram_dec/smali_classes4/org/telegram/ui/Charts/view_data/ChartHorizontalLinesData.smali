.class public Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alpha:I

.field public fixedAlpha:I

.field private formatterTON:Ljava/text/DecimalFormat;

.field private layouts:[Landroid/text/StaticLayout;

.field private layouts2:[Landroid/text/StaticLayout;

.field public values:[J

.field public valuesStr:[Ljava/lang/CharSequence;

.field public valuesStr2:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JJZFILandroid/text/TextPaint;Landroid/text/TextPaint;)V
    .locals 25

    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->fixedAlpha:I

    const-string v8, ""

    const/4 v3, 0x0

    const-wide/16 v4, 0x6

    const-wide/16 v13, 0x2

    const-wide/16 v9, 0x1

    const/4 v15, 0x1

    if-nez p5, :cond_a

    const-wide/16 v18, 0x64

    cmp-long v20, p1, v18

    if-lez v20, :cond_0

    invoke-static/range {p1 .. p2}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->round(J)J

    move-result-wide v18

    move-wide/from16 v11, v18

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p1

    :goto_0
    long-to-double v0, v11

    const-wide/high16 v23, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v0, v11, v4

    if-gez v0, :cond_2

    add-long/2addr v11, v9

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    :cond_1
    :goto_1
    move v9, v0

    goto :goto_2

    :cond_2
    div-long v23, v11, v13

    cmp-long v0, v23, v4

    if-gez v0, :cond_3

    add-long v4, v23, v9

    long-to-int v0, v4

    rem-long/2addr v11, v13

    const-wide/16 v4, 0x0

    cmp-long v9, v11, v4

    if-eqz v9, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x6

    :goto_2
    new-array v0, v9, [J

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    new-array v0, v9, [Ljava/lang/CharSequence;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr:[Ljava/lang/CharSequence;

    new-array v0, v9, [Landroid/text/StaticLayout;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts:[Landroid/text/StaticLayout;

    const/4 v0, 0x0

    cmpl-float v4, p6, v0

    if-lez v4, :cond_4

    new-array v0, v9, [Ljava/lang/CharSequence;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    new-array v0, v9, [Landroid/text/StaticLayout;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts2:[Landroid/text/StaticLayout;

    :cond_4
    long-to-float v0, v1

    div-float v0, v0, p6

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x1

    :goto_4
    if-ge v11, v9, :cond_15

    iget-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    int-to-long v3, v11

    mul-long v3, v3, v1

    aput-wide v3, v0, v11

    iget-object v12, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide v13, v1

    move v1, v5

    move-object/from16 v2, p8

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v12, v11

    const/4 v0, 0x0

    cmpl-float v1, p6, v0

    if-lez v1, :cond_9

    iget-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    aget-wide v1, v0, v11

    long-to-float v0, v1

    div-float v0, v0, p6

    if-eqz v10, :cond_8

    float-to-long v3, v0

    long-to-float v1, v3

    sub-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_7

    if-eq v7, v15, :cond_7

    const/4 v0, 0x2

    if-ne v7, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    aput-object v8, v0, v11

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p9

    move-object/from16 v17, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v17, v11

    goto :goto_6

    :cond_8
    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    float-to-long v3, v0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p9

    move-object/from16 v17, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v17, v11

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-wide v1, v13

    goto :goto_4

    :cond_a
    sub-long v0, p1, p3

    const-wide/16 v21, 0x0

    cmp-long v2, v0, v21

    if-nez v2, :cond_b

    sub-long v0, p3, v9

    const/4 v2, 0x3

    move-wide v9, v0

    const/4 v11, 0x3

    :goto_7
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_b
    cmp-long v2, v0, v4

    if-gez v2, :cond_c

    :goto_8
    add-long/2addr v0, v9

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    move-wide/from16 v9, p3

    move v11, v0

    goto :goto_7

    :cond_c
    div-long v21, v0, v13

    cmp-long v2, v21, v4

    if-gez v2, :cond_d

    rem-long/2addr v0, v13

    add-long v21, v21, v0

    add-long v0, v21, v9

    long-to-int v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    move-wide/from16 v9, p3

    move v11, v0

    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_9

    :cond_d
    long-to-float v2, v0

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v4, v2, v4

    const/4 v2, 0x0

    cmpg-float v5, v4, v2

    if-gtz v5, :cond_e

    goto :goto_8

    :cond_e
    move-wide/from16 v9, p3

    move v13, v4

    const/4 v11, 0x6

    :goto_9
    new-array v0, v11, [J

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr:[Ljava/lang/CharSequence;

    new-array v0, v11, [Landroid/text/StaticLayout;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts:[Landroid/text/StaticLayout;

    const/4 v0, 0x0

    cmpl-float v1, p6, v0

    if-lez v1, :cond_f

    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    new-array v0, v11, [Landroid/text/StaticLayout;

    iput-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts2:[Landroid/text/StaticLayout;

    :cond_f
    div-float v0, v13, p6

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    const/4 v14, 0x1

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v11, :cond_15

    iget-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    int-to-float v1, v5

    mul-float v1, v1, v13

    float-to-long v1, v1

    add-long v3, v9, v1

    aput-wide v3, v0, v5

    iget-object v2, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v17, v2

    move-object/from16 v2, p8

    move/from16 v18, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v17, v18

    const/16 v17, 0x0

    cmpl-float v0, p6, v17

    if-lez v0, :cond_14

    iget-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    aget-wide v1, v0, v18

    long-to-float v0, v1

    div-float v0, v0, p6

    if-eqz v14, :cond_13

    float-to-long v3, v0

    long-to-float v1, v3

    sub-float/2addr v0, v1

    const v16, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v16

    if-ltz v0, :cond_12

    if-eq v7, v15, :cond_12

    const/4 v12, 0x2

    if-ne v7, v12, :cond_11

    goto :goto_c

    :cond_11
    iget-object v0, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    aput-object v8, v0, v18

    goto :goto_d

    :cond_12
    const/4 v12, 0x2

    :goto_c
    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p9

    move-object/from16 v19, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v19, v18

    goto :goto_d

    :cond_13
    const/4 v12, 0x2

    const v16, 0x3c23d70a    # 0.01f

    iget-object v5, v6, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    float-to-long v3, v0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p9

    move-object/from16 v19, v5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v19, v18

    goto :goto_d

    :cond_14
    const/4 v12, 0x2

    const v16, 0x3c23d70a    # 0.01f

    :goto_d
    add-int/lit8 v5, v18, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method public static lookupHeight(J)J
    .locals 3

    const-wide/16 v0, 0x64

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    invoke-static {p0, p1}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->round(J)J

    move-result-wide p0

    :cond_0
    long-to-float p0, p0

    const/high16 p1, 0x40a00000    # 5.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    const-wide/16 v0, 0x5

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static round(J)J
    .locals 4

    const-wide/16 v0, 0x5

    div-long v0, p0, v0

    long-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 v0, 0xa

    div-long/2addr p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr p0, v2

    mul-long p0, p0, v0

    return-wide p0
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/text/TextPaint;)V
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts:[Landroid/text/StaticLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts2:[Landroid/text/StaticLayout;

    :goto_0
    aget-object v0, v0, p3

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr:[Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    :goto_1
    aget-object v2, v0, p3

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts:[Landroid/text/StaticLayout;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->layouts2:[Landroid/text/StaticLayout;

    :goto_2
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    move-object v3, p6

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v0, p2, p3

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p6}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    add-float/2addr p5, p2

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public format(ILandroid/text/TextPaint;JI)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "USD"

    const-string v1, "\u2248"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p5, v4, :cond_3

    if-ne p1, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p2

    invoke-virtual {p2, p3, p4, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->formatterTON:Ljava/text/DecimalFormat;

    const/4 p5, 0x6

    if-nez p1, :cond_1

    new-instance p1, Ljava/text/DecimalFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->formatterTON:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->formatterTON:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->formatterTON:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->formatterTON:Ljava/text/DecimalFormat;

    const-wide/32 v0, 0x3b9aca00

    cmp-long v4, p3, v0

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    :goto_0
    invoke-virtual {p1, v3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "TON "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->formatterTON:Ljava/text/DecimalFormat;

    long-to-double p3, p3

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v0

    invoke-virtual {p5, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p3, 0x3f28f5c3    # 0.66f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    const p4, 0x3f4ccccd    # 0.8f

    invoke-static {p1, p2, p4, p3, v2}, Lorg/telegram/ui/ChannelMonetizationLayout;->replaceTON(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p5, v3, :cond_5

    if-ne p1, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p2

    invoke-virtual {p2, p3, p4, v0}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "XTR "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-static {p3, p4, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x3f266666    # 0.65f

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_5
    long-to-int p1, p3

    invoke-static {p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
