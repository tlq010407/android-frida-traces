.class Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;
.super Landroid/graphics/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaveformPath"
.end annotation


# instance fields
.field private lastAudioHeight:F

.field private lastAudioSelected:F

.field private lastBottom:F

.field private lastLeft:F

.field private lastMaxBar:F

.field private lastRight:F

.field private lastScrollDuration:J

.field private lastStart:F

.field private lastWaveformCounts:Ljava/util/ArrayList;

.field private lastWaveformLoaded:Ljava/util/ArrayList;

.field private final ph:I

.field private final waveformRadii:[F


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->ph:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->waveformRadii:[F

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    return-void
.end method

.method private eqCount(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getCount()I

    move-result v4

    :goto_1
    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method private eqLoadedCounts(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->access$900(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    :goto_1
    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public static getMaxBar(Ljava/util/ArrayList;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getMaxBar()S

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private layout(FFFFFFFFLorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V
    .locals 13

    .line 0
    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p7

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    const v3, 0x405554ca

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p9 .. p9}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getCount()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->ph:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    sub-float/2addr v5, p1

    div-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, -0x1

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->ph:I

    int-to-float v6, v6

    add-float v6, p3, v6

    sub-float/2addr v6, p1

    div-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-gt v5, v4, :cond_5

    int-to-float v6, v5

    mul-float v7, v6, v3

    add-float/2addr v7, p1

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    move-object/from16 v9, p9

    invoke-virtual {v9, v5}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getBar(I)S

    move-result v10

    const/4 v11, 0x0

    cmpg-float v12, p5, v11

    if-gtz v12, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    int-to-float v10, v10

    div-float v10, v10, p5

    mul-float v10, v10, p6

    const v12, 0x3f19999a    # 0.6f

    mul-float v10, v10, v12

    :goto_1
    cmpg-float v12, v6, p8

    if-gez v12, :cond_1

    add-int/lit8 v12, v5, 0x1

    int-to-float v12, v12

    cmpl-float v12, v12, p8

    if-lez v12, :cond_1

    sub-float v6, p8, v6

    mul-float v10, v10, v6

    goto :goto_2

    :cond_1
    cmpl-float v6, v6, p8

    if-lez v6, :cond_2

    const/4 v10, 0x0

    :cond_2
    :goto_2
    cmpg-float v6, v7, p2

    if-ltz v6, :cond_3

    cmpl-float v6, v7, p3

    if-lez v6, :cond_4

    :cond_3
    mul-float v10, v10, v1

    cmpg-float v6, v10, v11

    if-gtz v6, :cond_4

    goto :goto_3

    :cond_4
    const v6, 0x3f28f5c3    # 0.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    invoke-static {v6, v11, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v11, v2, v6

    add-float v12, p6, v6

    div-float/2addr v12, v8

    sub-float v12, v2, v12

    invoke-static {v11, v12, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    const v12, 0x3fd47ae1    # 1.66f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    add-float/2addr v12, v7

    sub-float v6, p6, v6

    div-float/2addr v6, v8

    sub-float v6, v2, v6

    invoke-static {v2, v6, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {v10, v7, v11, v12, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->waveformRadii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v10, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private layout(FFFFFFFLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->rewind()V

    const v5, 0x405554ca

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getCount()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->ph:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    sub-float v7, v7, p1

    div-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->ph:I

    int-to-float v9, v9

    add-float v9, p3, v9

    sub-float v9, v9, p1

    div-float/2addr v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_1
    if-gt v7, v8, :cond_a

    int-to-float v9, v7

    mul-float v10, v9, v5

    add-float v10, p1, v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_6

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v14}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getCount()I

    move-result v14

    if-lt v7, v14, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v14, v7}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getBar(I)S

    move-result v14

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpg-float v15, v9, v15

    if-gez v15, :cond_4

    add-int/lit8 v15, v7, 0x1

    int-to-float v15, v15

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    int-to-float v14, v14

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v15, v9

    mul-float v14, v14, v15

    float-to-int v14, v14

    int-to-short v14, v14

    goto :goto_5

    :cond_4
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v9, v15

    if-lez v15, :cond_5

    const/4 v14, 0x0

    :cond_5
    :goto_5
    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    cmpg-float v12, p5, v9

    if-gtz v12, :cond_7

    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    int-to-float v12, v13

    div-float v12, v12, p5

    mul-float v12, v12, p6

    const v13, 0x3f19999a    # 0.6f

    mul-float v12, v12, v13

    :goto_6
    cmpg-float v13, v10, p2

    if-ltz v13, :cond_8

    cmpl-float v13, v10, p3

    if-lez v13, :cond_9

    :cond_8
    mul-float v12, v12, v1

    cmpg-float v9, v12, v9

    if-gtz v9, :cond_9

    goto :goto_7

    :cond_9
    const v9, 0x3f28f5c3    # 0.66f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    invoke-static {v9, v13, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v13, v2, v9

    add-float v14, p6, v9

    div-float/2addr v14, v11

    sub-float v14, v2, v14

    invoke-static {v13, v14, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v13

    const v14, 0x3fd47ae1    # 1.66f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    add-float/2addr v14, v10

    sub-float v9, p6, v9

    div-float/2addr v9, v11

    sub-float v9, v2, v9

    invoke-static {v2, v9, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-virtual {v12, v10, v13, v14, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->waveformRadii:[F

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v12, v9, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method


# virtual methods
.method public check(FFFFFFFLjava/util/ArrayList;)V
    .locals 13

    .line 0
    move-object v10, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    if-eqz v9, :cond_9

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioHeight:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_1

    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastMaxBar:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v11, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v11

    if-gtz v0, :cond_1

    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioSelected:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v11, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v11

    if-gtz v0, :cond_1

    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastBottom:F

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_1

    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastStart:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_1

    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastLeft:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_1

    iget v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastRight:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_1

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->eqCount(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->eqLoadedCounts(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_4

    iget-object v11, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v12}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getCount()I

    move-result v12

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :goto_3
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-static {v11}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->access$900(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v11

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;

    invoke-virtual {v12}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    :goto_4
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput v1, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastStart:F

    iput v2, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastLeft:F

    iput v3, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastRight:F

    iput v4, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioSelected:F

    iput v5, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastMaxBar:F

    iput v6, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioHeight:F

    iput v7, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastBottom:F

    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->layout(FFFFFFFLjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_8
    return-void

    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    return-void
.end method

.method public check(FFFFJFFFLorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V
    .locals 13

    .line 0
    move-object v10, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p7

    move/from16 v5, p8

    move/from16 v7, p9

    if-nez p10, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    return-void

    :cond_0
    invoke-static/range {p10 .. p10}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->access$900(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-wide v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastScrollDuration:J

    cmp-long v11, v8, p5

    if-nez v11, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioHeight:F

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastMaxBar:F

    sub-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v11, 0x3c23d70a    # 0.01f

    cmpl-float v8, v8, v11

    if-gtz v8, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioSelected:F

    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v12, 0x3dcccccd    # 0.1f

    cmpl-float v8, v8, v12

    if-gtz v8, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastBottom:F

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastStart:F

    sub-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastLeft:F

    sub-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    iget v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastRight:F

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x0

    :goto_1
    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v11

    if-lez v8, :cond_6

    :cond_3
    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformCounts:Ljava/util/ArrayList;

    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :goto_3
    iget-object v8, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastWaveformLoaded:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastStart:F

    iput v2, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastLeft:F

    iput v3, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastRight:F

    iput v4, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioSelected:F

    iput v5, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastMaxBar:F

    iput v6, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastAudioHeight:F

    iput v7, v10, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->lastBottom:F

    invoke-static/range {p10 .. p10}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->access$900(Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    invoke-virtual/range {p10 .. p10}, Lorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;->getLoadedCount()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    move/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/TimelineView$WaveformPath;->layout(FFFFFFFFLorg/telegram/ui/Stories/recorder/TimelineView$AudioWaveformLoader;)V

    :cond_6
    return-void
.end method
