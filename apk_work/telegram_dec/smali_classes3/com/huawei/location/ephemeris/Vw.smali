.class public Lcom/huawei/location/ephemeris/Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private FB:I

.field private LW:J

.field private Vw:I

.field private yn:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/ephemeris/Vw;->yn(J)V

    return-void
.end method

.method private yn(J)V
    .locals 4

    .line 0
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/32 v0, 0x12d53d80

    sub-long/2addr p1, v0

    const/16 v0, 0x12

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/huawei/location/ephemeris/Vw;->LW:J

    const-wide/32 v0, 0x93a80

    rem-long v2, p1, v0

    long-to-int v3, v2

    iput v3, p0, Lcom/huawei/location/ephemeris/Vw;->FB:I

    div-long/2addr p1, v0

    long-to-int p2, p1

    div-int/lit16 p1, p2, 0x400

    iput p1, p0, Lcom/huawei/location/ephemeris/Vw;->yn:I

    rem-int/lit16 p2, p2, 0x400

    iput p2, p0, Lcom/huawei/location/ephemeris/Vw;->Vw:I

    return-void
.end method


# virtual methods
.method public FB()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/ephemeris/Vw;->Vw:I

    return v0
.end method

.method public LW()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/ephemeris/Vw;->yn:I

    return v0
.end method

.method public Vw()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/ephemeris/Vw;->LW:J

    return-wide v0
.end method

.method public dC()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/ephemeris/Vw;->FB:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Lcom/huawei/location/ephemeris/Vw;->yn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/huawei/location/ephemeris/Vw;->Vw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/huawei/location/ephemeris/Vw;->FB:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "weekRound: %d weekNumber = %d weekSecond: %d"

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yn()I
    .locals 2

    .line 0
    iget v0, p0, Lcom/huawei/location/ephemeris/Vw;->FB:I

    const v1, 0x15180

    div-int/2addr v0, v1

    mul-int v0, v0, v1

    return v0
.end method
