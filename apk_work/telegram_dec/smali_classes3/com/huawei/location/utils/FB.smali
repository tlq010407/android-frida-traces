.class public Lcom/huawei/location/utils/FB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FB(Lorg/json/JSONArray;)[Lcom/huawei/riemann/location/bean/eph/GlonassNav;
    .locals 17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->aGlonassNav()Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "deltaTaun"

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withDeltaTau(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withEn(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "gamma"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x4270000000000000L    # 1.099511627776E12

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withGamma(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "health"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withHealth(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "iod"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withIod(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "m"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withM(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "p1"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withP1(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "p2"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withP2(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "svid"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withSvid(I)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string v6, "taun"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withTaun(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x40a0000000000000L    # 2048.0

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withX(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "xDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x4130000000000000L    # 1048576.0

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withXDot(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "xDotDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withXDotDot(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withY(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "yDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withYDot(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "yDotDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withYDotDot(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "z"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withZ(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "zDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withZDot(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v5

    const-string/jumbo v6, "zDotDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    div-double/2addr v6, v11

    invoke-virtual {v5, v6, v7}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->withZDotDot(D)Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/riemann/location/bean/eph/GlonassNav$Builder;->build()Lcom/huawei/riemann/location/bean/eph/GlonassNav;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/riemann/location/bean/eph/GlonassNav;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public LW(Lorg/json/JSONArray;)[Lcom/huawei/riemann/location/bean/eph/GpsNav;
    .locals 19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->aGpsNav()Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "acc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withAcc(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "af0"

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x41e0000000000000L    # 2.147483648E9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withAf0(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "af1"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x42a0000000000000L    # 8.796093022208E12

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withAf1(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "af2"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x4360000000000000L    # 3.6028797018963968E16

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withAf2(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "aodo"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withAodo(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "cic"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x41c0000000000000L    # 5.36870912E8

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withCic(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "cis"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withCis(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "crs"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v17, 0x4040000000000000L    # 32.0

    div-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withCrs(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "crc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withCrc(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "cuc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withCuc(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "cus"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withCus(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "deltaN"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withDeltaN(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "ecc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v17, 0x4200000000000000L    # 8.589934592E9

    div-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withEcc(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "gpsTow23b"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    mul-double v9, v9, v17

    const-wide/high16 v17, 0x4049000000000000L    # 50.0

    div-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withGpsTow23b(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "groupDelay"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withGroupDelay(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "health"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withHealth(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "i0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withI0(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "idot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withIdot(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "iodc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withIodc(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "iode"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withIode(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "m0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withM0(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "omega"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withOmega(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "omega0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withOmega0(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "omegaDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    mul-double v9, v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withOmegaDot(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "sqrtA"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4120000000000000L    # 524288.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withSqrtA(D)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "svid"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withSvid(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "toc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withToc(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "toe"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withToe(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v5

    const-string v6, "weekNumber"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->withWeekNumber(I)Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/riemann/location/bean/eph/GpsNav$Builder;->build()Lcom/huawei/riemann/location/bean/eph/GpsNav;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/riemann/location/bean/eph/GpsNav;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public Vw(Lorg/json/JSONArray;)[Lcom/huawei/riemann/location/bean/eph/GalileoNav;
    .locals 17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->aGalileoNav()Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "af0"

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4210000000000000L    # 1.7179869184E10

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withAf0(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "af1"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x42d0000000000000L    # 7.0368744177664E13

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withAf1(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "af2"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x43a0000000000000L    # 5.7646075230342349E17

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withAf2(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "cic"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x41c0000000000000L    # 5.36870912E8

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withCic(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "cis"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withCis(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "crc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x4040000000000000L    # 32.0

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withCrc(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "crs"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withCrs(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "cuc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withCuc(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "cus"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withCus(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "deltaN"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x42a0000000000000L    # 8.796093022208E12

    div-double/2addr v9, v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withDeltaN(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "ecc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x4200000000000000L    # 8.589934592E9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withEcc(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "groupDelay"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withGroupDelay(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "health"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withHealth(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "i0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x41e0000000000000L    # 2.147483648E9

    div-double/2addr v9, v15

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withI0(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "inclinationDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withIDot(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "iodc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withIodc(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "iode"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withIode(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "m0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withM0(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "omega"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withOmega(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "omega0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withOmega0(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "omegaDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    mul-double v9, v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withOmegaDot(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "sqrtA"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4120000000000000L    # 524288.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withSqrtA(D)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "svid"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withSvid(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "toc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withToc(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "toe"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withToe(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "numClockModel"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withNumClockModel(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v5

    const-string v6, "clockModelID"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->withClockModelId(I)Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/riemann/location/bean/eph/GalileoNav$Builder;->build()Lcom/huawei/riemann/location/bean/eph/GalileoNav;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/riemann/location/bean/eph/GalileoNav;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public yn(Lorg/json/JSONArray;)[Lcom/huawei/riemann/location/bean/eph/BdsNav;
    .locals 19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->aBdsNav()Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "acc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withAcc(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "af0"

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4200000000000000L    # 8.589934592E9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withAf0(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "af1"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x4310000000000000L    # 1.125899906842624E15

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withAf1(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "af2"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x43b0000000000000L    # 1.15292150460684698E18

    div-double/2addr v9, v13

    const-wide/high16 v13, 0x4050000000000000L    # 64.0

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withAf2(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "aodc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withAodc(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "aode"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withAode(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "cic"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v15, 0x41e0000000000000L    # 2.147483648E9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withCic(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "cis"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withCis(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "crs"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withCrs(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "crc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withCrc(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "cuc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withCuc(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "cus"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withCus(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "deltaN"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-wide/high16 v13, 0x42a0000000000000L    # 8.796093022208E12

    div-double/2addr v9, v13

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withDeltaN(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "ecc"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withEcc(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "groupDelay"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    int-to-double v9, v6

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withGroupDelay(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "health"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withHealth(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "i0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withI0(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "inclinationDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withIDot(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "m0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withM0(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "omega"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withOmega(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "omega0"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v15

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withOmega0(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "omegaDot"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    div-double/2addr v9, v13

    mul-double v9, v9, v17

    invoke-virtual {v5, v9, v10}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withOmegaDot(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "sqrtA"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4120000000000000L    # 524288.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withSqrtA(D)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "svid"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withSvid(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "toc"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withToc(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v5

    const-string v6, "toe"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v5, v4}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->withToe(I)Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/riemann/location/bean/eph/BdsNav$Builder;->build()Lcom/huawei/riemann/location/bean/eph/BdsNav;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/riemann/location/bean/eph/BdsNav;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method
