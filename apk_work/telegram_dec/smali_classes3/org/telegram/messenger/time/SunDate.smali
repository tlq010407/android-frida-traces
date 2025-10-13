.class public Lorg/telegram/messenger/time/SunDate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEGRAD:D = 0.017453292519943295

.field private static final INV360:D = 0.002777777777777778

.field private static final RADEG:D = 57.29577951308232


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GMST0(D)D
    .locals 2

    const-wide v0, 0x3fef8a6c50c753f8L    # 0.985647352

    mul-double p0, p0, v0

    const-wide v0, 0x408997e631f8a090L    # 818.9874

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/telegram/messenger/time/SunDate;->revolution(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static acosd(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static atan2d(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static calculateSunriseSunset(DD)[I
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    new-array v10, v1, [D

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-wide v5, p2

    move-wide v7, p0

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/time/SunDate;->sunRiseSetForYear(IIIDD[D)I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x3c

    const/4 p1, 0x0

    aget-wide p1, v10, p1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    add-int/2addr p1, p0

    aget-wide p2, v10, v11

    mul-double p2, p2, v0

    double-to-int p2, p2

    add-int/2addr p2, p0

    const/16 p0, 0x5a0

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x5a0

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    add-int/lit16 p1, p1, -0x5a0

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    if-le p2, p0, :cond_3

    :goto_1
    add-int/lit16 p2, p2, 0x5a0

    :cond_3
    filled-new-array {p1, p2}, [I

    move-result-object p0

    return-object p0
.end method

.method private static cosd(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static days_since_2000_Jan_0(III)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x16f

    mul-long v0, v0, v2

    add-int/lit8 v2, p1, 0x9

    div-int/lit8 v2, v2, 0xc

    add-int/2addr p0, v2

    mul-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x4

    int-to-long v2, p0

    sub-long/2addr v0, v2

    mul-int/lit16 p1, p1, 0x113

    div-int/lit8 p1, p1, 0x9

    int-to-long p0, p1

    add-long/2addr v0, p0

    int-to-long p0, p2

    add-long/2addr v0, p0

    const-wide/32 p0, 0xb25a2

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private static rev180(D)D
    .locals 4

    const-wide v0, 0x3f66c16c16c16c17L    # 0.002777777777777778

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static revolution(D)D
    .locals 4

    const-wide v0, 0x3f66c16c16c16c17L    # 0.002777777777777778

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static sind(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static sunRiseSetForYear(IIIDD[D)I
    .locals 11

    const-wide v7, -0x401d555555555555L    # -0.5833333333333334

    const/4 v9, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/time/SunDate;->sunRiseSetHelperForYear(IIIDDDI[D)I

    move-result v0

    return v0
.end method

.method private static sunRiseSetHelperForYear(IIIDDDI[D)I
    .locals 17

    const/4 v0, 0x1

    new-array v1, v0, [D

    new-array v2, v0, [D

    new-array v3, v0, [D

    invoke-static/range {p0 .. p2}, Lorg/telegram/messenger/time/SunDate;->days_since_2000_Jan_0(III)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double v6, p3, v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/telegram/messenger/time/SunDate;->GMST0(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    add-double v6, v6, p3

    invoke-static {v6, v7}, Lorg/telegram/messenger/time/SunDate;->revolution(D)D

    move-result-wide v6

    invoke-static {v4, v5, v1, v2, v3}, Lorg/telegram/messenger/time/SunDate;->sun_RA_decAtDay(D[D[D[D)V

    const/4 v4, 0x0

    aget-wide v8, v1, v4

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/time/SunDate;->rev180(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    div-double/2addr v5, v7

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    sub-double v5, v9, v5

    aget-wide v11, v3, v4

    const-wide v13, 0x3fd10ff972474539L    # 0.2666

    div-double/2addr v13, v11

    if-eqz p9, :cond_0

    sub-double v11, p7, v13

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p7

    :goto_0
    invoke-static {v11, v12}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide v11

    invoke-static/range {p5 .. p6}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide v13

    aget-wide v15, v2, v4

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    sub-double/2addr v11, v13

    invoke-static/range {p5 .. p6}, Lorg/telegram/messenger/time/SunDate;->cosd(D)D

    move-result-wide v13

    aget-wide v1, v2, v4

    invoke-static {v1, v2}, Lorg/telegram/messenger/time/SunDate;->cosd(D)D

    move-result-wide v1

    mul-double v13, v13, v1

    div-double/2addr v11, v13

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v11, v1

    if-ltz v3, :cond_1

    const/4 v1, -0x1

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpg-double v3, v11, v1

    if-gtz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v11, v12}, Lorg/telegram/messenger/time/SunDate;->acosd(D)D

    move-result-wide v1

    div-double v9, v1, v7

    const/4 v1, 0x0

    :goto_1
    sub-double v2, v5, v9

    aput-wide v2, p10, v4

    add-double/2addr v5, v9

    aput-wide v5, p10, v0

    return v1
.end method

.method private static sun_RA_decAtDay(D[D[D[D)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [D

    invoke-static {p0, p1, v0, p4}, Lorg/telegram/messenger/time/SunDate;->sunposAtDay(D[D[D)V

    const/4 v1, 0x0

    aget-wide v2, p4, v1

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/time/SunDate;->cosd(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    aget-wide v4, p4, v1

    aget-wide v6, v0, v1

    invoke-static {v6, v7}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    const-wide v6, 0x3e97e92ff8cedadaL    # 3.563E-7

    mul-double p0, p0, v6

    const-wide v6, 0x40377075f6fd21ffL    # 23.4393

    sub-double/2addr v6, p0

    invoke-static {v6, v7}, Lorg/telegram/messenger/time/SunDate;->cosd(D)D

    move-result-wide p0

    mul-double p0, p0, v4

    invoke-static {v6, v7}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {p0, p1, v2, v3}, Lorg/telegram/messenger/time/SunDate;->atan2d(DD)D

    move-result-wide v6

    aput-wide v6, p2, v1

    mul-double v2, v2, v2

    mul-double p0, p0, p0

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Lorg/telegram/messenger/time/SunDate;->atan2d(DD)D

    move-result-wide p0

    aput-wide p0, p3, v1

    return-void
.end method

.method private static sunposAtDay(D[D[D)V
    .locals 10

    const-wide v0, 0x3fef8a098da5f901L    # 0.9856002585

    mul-double v0, v0, p0

    const-wide v2, 0x407640c083126e98L    # 356.047

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/SunDate;->revolution(D)D

    move-result-wide v0

    const-wide v2, 0x3f08b0c856bdc946L    # 4.70935E-5

    mul-double v2, v2, p0

    const-wide v4, 0x4071af0be0ded289L    # 282.9404

    add-double/2addr v2, v4

    const-wide v4, 0x3e13c626caf35bd9L    # 1.151E-9

    mul-double p0, p0, v4

    const-wide v4, 0x3f911c2a02320968L    # 0.016709

    sub-double/2addr v4, p0

    const-wide p0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v4

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide v6

    mul-double p0, p0, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/SunDate;->cosd(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    mul-double p0, p0, v6

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/telegram/messenger/time/SunDate;->cosd(D)D

    move-result-wide v0

    sub-double/2addr v0, v4

    mul-double v4, v4, v4

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Lorg/telegram/messenger/time/SunDate;->sind(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    mul-double p0, v0, v0

    mul-double v6, v4, v4

    add-double/2addr p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const/4 v6, 0x0

    aput-wide p0, p3, v6

    invoke-static {v4, v5, v0, v1}, Lorg/telegram/messenger/time/SunDate;->atan2d(DD)D

    move-result-wide p0

    add-double/2addr p0, v2

    aput-wide p0, p2, v6

    const-wide v0, 0x4076800000000000L    # 360.0

    cmpl-double p3, p0, v0

    if-ltz p3, :cond_0

    sub-double/2addr p0, v0

    aput-wide p0, p2, v6

    :cond_0
    return-void
.end method

.method private static tand(D)D
    .locals 2

    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    return-wide p0
.end method
