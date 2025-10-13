.class public Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurvesValue"
.end annotation


# instance fields
.field public blacksLevel:F

.field public cachedDataPoints:[F

.field public highlightsLevel:F

.field public midtonesLevel:F

.field public previousBlacksLevel:F

.field public previousHighlightsLevel:F

.field public previousMidtonesLevel:F

.field public previousShadowsLevel:F

.field public previousWhitesLevel:F

.field public shadowsLevel:F

.field public whitesLevel:F


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/high16 v1, 0x41c80000    # 25.0f

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    const/high16 v2, 0x42480000    # 50.0f

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    const/high16 v3, 0x42960000    # 75.0f

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    const/high16 v4, 0x42c80000    # 100.0f

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    return-void
.end method


# virtual methods
.method public getDataPoints()[F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    return-object v0
.end method

.method public interpolateCurve()[F
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    div-float/2addr v3, v2

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    div-float/2addr v4, v2

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    div-float/2addr v5, v2

    iget v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    div-float/2addr v6, v2

    const/16 v2, 0xe

    new-array v2, v2, [F

    const v7, -0x457ced91    # -0.001f

    const/4 v8, 0x0

    aput v7, v2, v8

    const/4 v7, 0x1

    aput v1, v2, v7

    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v9, v2, v10

    const/4 v11, 0x3

    aput v1, v2, v11

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v11, 0x4

    aput v1, v2, v11

    const/4 v1, 0x5

    aput v3, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v11, 0x6

    aput v3, v2, v11

    const/4 v11, 0x7

    aput v4, v2, v11

    const/high16 v4, 0x3f400000    # 0.75f

    const/16 v11, 0x8

    aput v4, v2, v11

    const/16 v4, 0x9

    aput v5, v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xa

    aput v4, v2, v5

    const/16 v5, 0xb

    aput v6, v2, v5

    const v5, 0x3f8020c5    # 1.001f

    const/16 v11, 0xc

    aput v5, v2, v11

    const/16 v5, 0xd

    aput v6, v2, v5

    new-instance v6, Ljava/util/ArrayList;

    const/16 v12, 0x64

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    aget v14, v2, v8

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v14, v2, v7

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    :goto_0
    if-ge v14, v1, :cond_3

    add-int/lit8 v15, v14, -0x1

    mul-int/lit8 v15, v15, 0x2

    aget v16, v2, v15

    add-int/2addr v15, v7

    aget v15, v2, v15

    mul-int/lit8 v17, v14, 0x2

    aget v18, v2, v17

    add-int/lit8 v17, v17, 0x1

    aget v17, v2, v17

    add-int/lit8 v19, v14, 0x1

    mul-int/lit8 v20, v19, 0x2

    aget v21, v2, v20

    add-int/lit8 v20, v20, 0x1

    aget v20, v2, v20

    add-int/2addr v14, v10

    mul-int/lit8 v14, v14, 0x2

    aget v22, v2, v14

    add-int/2addr v14, v7

    aget v14, v2, v14

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v12, :cond_2

    int-to-float v8, v1

    const v23, 0x3c23d70a    # 0.01f

    mul-float v8, v8, v23

    mul-float v23, v8, v8

    mul-float v24, v23, v8

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v26, v18, v25

    sub-float v27, v21, v16

    mul-float v27, v27, v8

    add-float v26, v26, v27

    mul-float v27, v16, v25

    const/high16 v28, 0x40a00000    # 5.0f

    mul-float v29, v18, v28

    sub-float v27, v27, v29

    const/high16 v29, 0x40800000    # 4.0f

    mul-float v30, v21, v29

    add-float v27, v27, v30

    sub-float v27, v27, v22

    mul-float v27, v27, v23

    add-float v26, v26, v27

    const/high16 v27, 0x40400000    # 3.0f

    mul-float v30, v18, v27

    sub-float v30, v30, v16

    mul-float v31, v21, v27

    sub-float v30, v30, v31

    add-float v30, v30, v22

    mul-float v30, v30, v24

    add-float v26, v26, v30

    mul-float v26, v26, v3

    mul-float v30, v17, v25

    sub-float v31, v20, v15

    mul-float v31, v31, v8

    add-float v30, v30, v31

    mul-float v25, v25, v15

    mul-float v28, v28, v17

    sub-float v25, v25, v28

    mul-float v29, v29, v20

    add-float v25, v25, v29

    sub-float v25, v25, v14

    mul-float v25, v25, v23

    add-float v30, v30, v25

    mul-float v8, v17, v27

    sub-float/2addr v8, v15

    mul-float v27, v27, v20

    sub-float v8, v8, v27

    add-float/2addr v8, v14

    mul-float v8, v8, v24

    add-float v30, v30, v8

    mul-float v8, v30, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v23, v26, v16

    if-lez v23, :cond_0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v1, -0x1

    rem-int/2addr v3, v10

    if-nez v3, :cond_1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v1, v7

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v19

    const/4 v1, 0x5

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    aget v1, v2, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v1, v2, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->cachedDataPoints:[F

    array-length v3, v2

    if-ge v1, v3, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/2addr v1, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [F

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_5

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v8

    add-int/2addr v8, v7

    goto :goto_3

    :cond_5
    return-object v2
.end method

.method public isDefault()Z
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    const/high16 v1, 0x41c80000    # 25.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    const/high16 v1, 0x42960000    # 75.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousBlacksLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousShadowsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousMidtonesLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousHighlightsLevel:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->previousWhitesLevel:F

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    return-void
.end method
