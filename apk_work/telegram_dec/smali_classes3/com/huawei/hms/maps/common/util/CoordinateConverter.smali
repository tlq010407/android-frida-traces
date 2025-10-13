.class public Lcom/huawei/hms/maps/common/util/CoordinateConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(DD)Lcom/huawei/hms/maps/model/LatLng;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/maps/common/util/CoordinateConverter;->e(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/hms/maps/model/LatLng;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/maps/common/util/CoordinateConverter;->b(DD)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    add-double/2addr p1, v1

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    add-double/2addr p3, v1

    new-instance v0, Lcom/huawei/hms/maps/model/LatLng;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private b(DD)[D
    .locals 17

    move-object/from16 v0, p0

    const-wide v1, 0x405a400000000000L    # 105.0

    sub-double v1, p1, v1

    const-wide v3, 0x4041800000000000L    # 35.0

    sub-double v3, p3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/maps/common/util/CoordinateConverter;->c(DD)D

    move-result-wide v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/maps/common/util/CoordinateConverter;->d(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double v7, p3, v3

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide v13, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double v13, v13, v11

    mul-double v13, v13, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double v5, v5, v3

    const-wide v15, 0x415854c140000000L    # 6378245.0

    div-double/2addr v15, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v15, v15, v7

    mul-double v15, v15, v9

    div-double/2addr v5, v15

    mul-double v1, v1, v3

    const-wide v3, 0x41582b102de355c1L    # 6335552.717000426

    mul-double v11, v11, v13

    div-double/2addr v3, v11

    mul-double v3, v3, v9

    div-double/2addr v1, v3

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x1

    aput-wide v1, v3, v4

    return-object v3
.end method

.method private c(DD)D
    .locals 16

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p3, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p1, v6

    mul-double v10, v8, p1

    add-double/2addr v2, v10

    mul-double v8, v8, p3

    add-double/2addr v2, v8

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v6, v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double v6, v6, v10

    mul-double v12, p1, v4

    mul-double v12, v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    add-double/2addr v6, v12

    mul-double v6, v6, v4

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    mul-double v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v10

    div-double v10, p1, v12

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double v10, v10, v14

    add-double/2addr v6, v10

    mul-double v6, v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v6, p1, v6

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x4062c00000000000L    # 150.0

    mul-double v6, v6, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double v10, p1, v10

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v0

    add-double/2addr v6, v8

    mul-double v6, v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    return-wide v2
.end method

.method private d(DD)D
    .locals 16

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p1, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p3, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p3, v8

    mul-double v10, v10, p3

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p1

    mul-double v10, v10, p3

    add-double/2addr v4, v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v8, v8, p1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double v8, v8, v12

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v12

    add-double/2addr v8, v2

    mul-double v8, v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    mul-double v2, p3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v12

    div-double v12, p3, v6

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double v12, v12, v14

    add-double/2addr v8, v12

    mul-double v8, v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    div-double v8, p3, v8

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    mul-double v8, v8, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x4074000000000000L    # 320.0

    mul-double v2, v2, v10

    add-double/2addr v8, v2

    mul-double v8, v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    return-wide v4
.end method

.method private e(DD)Z
    .locals 4

    const-wide v0, 0x4052004189374bc7L    # 72.004

    const/4 v2, 0x1

    cmpg-double v3, p1, v0

    if-ltz v3, :cond_2

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v3, p1, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x3fea89a027525461L    # 0.8293

    cmpg-double v0, p3, p1

    if-ltz v0, :cond_2

    const-wide p1, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v0, p3, p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public convert(Lcom/huawei/hms/maps/model/LatLng;)Lcom/huawei/hms/maps/model/LatLng;
    .locals 4

    .line 0
    if-nez p1, :cond_0

    const-string p1, "CoordinateConverter"

    const-string v0, "LatLng is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-wide v0, p1, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/hms/maps/common/util/CoordinateConverter;->a(DD)Lcom/huawei/hms/maps/model/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public convert([Lcom/huawei/hms/maps/model/LatLng;)[Lcom/huawei/hms/maps/model/LatLng;
    .locals 6

    .line 0
    const/4 v0, 0x0

    const-string v1, "CoordinateConverter"

    if-nez p1, :cond_0

    const-string p1, "LatLng is null."

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    array-length v2, p1

    const/16 v3, 0x200

    if-le v2, v3, :cond_1

    const-string p1, "The points of convert cannot exceed 512 points."

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/huawei/hms/maps/common/util/CoordinateConverter;->a(DD)Lcom/huawei/hms/maps/model/LatLng;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method
