.class public Lcom/huawei/location/tiles/utils/zp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vw:Ljava/lang/Long;

.field private yn:Lcom/huawei/location/tiles/utils/d2;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/huawei/location/tiles/utils/d2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/tiles/utils/zp;->Vw:Ljava/lang/Long;

    iput-object p2, p0, Lcom/huawei/location/tiles/utils/zp;->yn:Lcom/huawei/location/tiles/utils/d2;

    return-void
.end method


# virtual methods
.method public yn()[Ljava/lang/Long;
    .locals 59

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/location/tiles/utils/zp;->Vw:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/huawei/location/tiles/utils/E5;->yn(J)Lcom/huawei/location/tiles/utils/d2;

    move-result-object v1

    iget-object v2, v0, Lcom/huawei/location/tiles/utils/zp;->yn:Lcom/huawei/location/tiles/utils/d2;

    iget-wide v3, v1, Lcom/huawei/location/tiles/utils/d2;->Vw:D

    iget-wide v5, v2, Lcom/huawei/location/tiles/utils/d2;->Vw:D

    iget-wide v7, v1, Lcom/huawei/location/tiles/utils/d2;->yn:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget-wide v9, v2, Lcom/huawei/location/tiles/utils/d2;->yn:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v4, v4, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    sub-double/2addr v11, v6

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v4

    rem-double/2addr v2, v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmpg-double v9, v2, v7

    if-ltz v9, :cond_4

    cmpl-double v9, v2, v4

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    const/4 v10, 0x3

    const-wide v11, 0x4056800000000000L    # 90.0

    const/4 v13, 0x1

    cmpg-double v14, v7, v2

    if-gtz v14, :cond_1

    cmpg-double v14, v2, v11

    if-gez v14, :cond_1

    new-array v2, v10, [D

    aput-wide v7, v2, v6

    const-wide v3, 0x4046800000000000L    # 45.0

    aput-wide v3, v2, v13

    aput-wide v11, v2, v9

    goto :goto_1

    :cond_1
    const-wide v14, 0x4066800000000000L    # 180.0

    cmpg-double v16, v11, v2

    if-gtz v16, :cond_2

    cmpg-double v16, v2, v14

    if-gez v16, :cond_2

    new-array v2, v10, [D

    aput-wide v11, v2, v6

    const-wide v3, 0x4060e00000000000L    # 135.0

    aput-wide v3, v2, v13

    aput-wide v14, v2, v9

    goto :goto_1

    :cond_2
    const-wide v11, 0x4070e00000000000L    # 270.0

    cmpg-double v16, v14, v2

    if-gtz v16, :cond_3

    cmpg-double v16, v2, v11

    if-gez v16, :cond_3

    new-array v2, v10, [D

    aput-wide v14, v2, v6

    const-wide v3, 0x406c200000000000L    # 225.0

    aput-wide v3, v2, v13

    aput-wide v11, v2, v9

    goto :goto_1

    :cond_3
    new-array v2, v10, [D

    aput-wide v11, v2, v6

    const-wide v10, 0x4073b00000000000L    # 315.0

    aput-wide v10, v2, v13

    aput-wide v4, v2, v9

    goto :goto_1

    :cond_4
    :goto_0
    const-string v2, "TileIdPrediction"

    const-string v3, "illegal degree, return null"

    invoke-static {v2, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v6, [D

    :goto_1
    array-length v3, v2

    new-array v4, v3, [Lcom/huawei/location/tiles/utils/d2;

    const/4 v5, 0x0

    :goto_2
    array-length v9, v2

    if-ge v5, v9, :cond_6

    iget-wide v9, v1, Lcom/huawei/location/tiles/utils/d2;->Vw:D

    iget-wide v11, v1, Lcom/huawei/location/tiles/utils/d2;->yn:D

    aget-wide v13, v2, v5

    const/16 v15, 0x1f4

    int-to-double v6, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    const-wide v19, 0x3fefe488a57b266cL    # 0.996647189336

    mul-double v11, v11, v19

    mul-double v21, v11, v11

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    div-double v21, v23, v21

    mul-double v25, v11, v21

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    mul-double v27, v21, v17

    mul-double v29, v27, v27

    sub-double v31, v23, v29

    const-wide v33, 0x424fb41d454cf900L    # 2.723316066819453E11

    mul-double v33, v33, v31

    const-wide v35, 0x42c260252eea6b87L    # 4.0408299984087055E13

    div-double v33, v33, v35

    const-wide/high16 v35, 0x40d0000000000000L    # 16384.0

    div-double v35, v33, v35

    const-wide v37, 0x4065e00000000000L    # 175.0

    mul-double v37, v37, v33

    const-wide/high16 v39, 0x4074000000000000L    # 320.0

    sub-double v39, v39, v37

    mul-double v39, v39, v33

    const-wide/high16 v37, -0x3f78000000000000L    # -768.0

    add-double v39, v39, v37

    mul-double v39, v39, v33

    const-wide/high16 v37, 0x40b0000000000000L    # 4096.0

    add-double v39, v39, v37

    mul-double v35, v35, v39

    add-double v35, v35, v23

    const-wide/high16 v37, 0x4090000000000000L    # 1024.0

    div-double v37, v33, v37

    const-wide v39, 0x4047800000000000L    # 47.0

    mul-double v39, v39, v33

    const-wide v41, 0x4052800000000000L    # 74.0

    sub-double v41, v41, v39

    mul-double v41, v41, v33

    const-wide/high16 v39, -0x3fa0000000000000L    # -128.0

    add-double v41, v41, v39

    mul-double v33, v33, v41

    const-wide/high16 v39, 0x4070000000000000L    # 256.0

    add-double v33, v33, v39

    mul-double v37, v37, v33

    const-wide v33, 0x41583fc4141bda51L    # 6356752.3142

    mul-double v35, v35, v33

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v6, v35

    const-wide v33, 0x401921fb54442d18L    # 6.283185307179586

    move-wide/from16 v35, v33

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    move-wide/from16 v33, v6

    :goto_3
    sub-double v35, v33, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->abs(D)D

    move-result-wide v35

    const-wide v45, 0x3d719799812dea11L    # 1.0E-12

    const-wide/high16 v47, -0x4010000000000000L    # -1.0

    const-wide/high16 v49, 0x4000000000000000L    # 2.0

    const-wide/high16 v51, 0x4010000000000000L    # 4.0

    cmpl-double v8, v35, v45

    if-lez v8, :cond_5

    mul-double v35, v11, v49

    add-double v35, v35, v33

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v43

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v41

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v39

    mul-double v35, v37, v41

    div-double v45, v37, v51

    mul-double v49, v49, v43

    mul-double v49, v49, v43

    add-double v49, v49, v47

    mul-double v49, v49, v39

    const-wide/high16 v47, 0x4018000000000000L    # 6.0

    div-double v47, v37, v47

    mul-double v47, v47, v43

    mul-double v53, v41, v51

    mul-double v53, v53, v41

    const-wide/high16 v55, -0x3ff8000000000000L    # -3.0

    add-double v53, v53, v55

    mul-double v47, v47, v53

    mul-double v51, v51, v43

    mul-double v51, v51, v43

    add-double v51, v51, v55

    mul-double v47, v47, v51

    sub-double v49, v49, v47

    mul-double v45, v45, v49

    add-double v45, v43, v45

    mul-double v35, v35, v45

    add-double v35, v6, v35

    move-wide/from16 v57, v33

    move-wide/from16 v33, v35

    move-wide/from16 v35, v57

    goto :goto_3

    :cond_5
    mul-double v6, v25, v41

    mul-double v11, v21, v39

    mul-double v35, v11, v13

    sub-double v35, v6, v35

    mul-double v25, v25, v39

    mul-double v21, v21, v41

    mul-double v21, v21, v13

    move-object v8, v1

    add-double v0, v25, v21

    mul-double v35, v35, v35

    add-double v29, v29, v35

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-object v15, v2

    move/from16 v25, v3

    mul-double v2, v21, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v2, v41, v17

    mul-double v6, v6, v13

    sub-double/2addr v11, v6

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v6, 0x3f2b775a84d99473L    # 2.095506665E-4

    mul-double v6, v6, v31

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double v31, v31, v11

    sub-double v11, v51, v31

    const-wide v13, 0x3f6b775a84d99473L    # 0.003352810664

    mul-double v11, v11, v13

    add-double v11, v11, v51

    mul-double v6, v6, v11

    sub-double v23, v23, v6

    mul-double v23, v23, v13

    mul-double v23, v23, v27

    mul-double v41, v41, v6

    mul-double v6, v6, v39

    mul-double v49, v49, v43

    mul-double v49, v49, v43

    add-double v49, v49, v47

    mul-double v6, v6, v49

    add-double v43, v43, v6

    mul-double v41, v41, v43

    add-double v33, v33, v41

    mul-double v23, v23, v33

    sub-double v2, v2, v23

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    add-double/2addr v9, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    new-instance v2, Lcom/huawei/location/tiles/utils/d2;

    invoke-direct {v2, v0, v1, v9, v10}, Lcom/huawei/location/tiles/utils/d2;-><init>(DD)V

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, v25

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_2

    :cond_6
    move v0, v3

    new-array v1, v0, [Ljava/lang/Long;

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v0, :cond_7

    aget-object v2, v4, v6

    iget-wide v7, v2, Lcom/huawei/location/tiles/utils/d2;->Vw:D

    iget-wide v2, v2, Lcom/huawei/location/tiles/utils/d2;->yn:D

    const/16 v5, 0xf

    invoke-static {v7, v8, v2, v3, v5}, Lcom/huawei/location/FB;->yn(DDI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    return-object v1
.end method
