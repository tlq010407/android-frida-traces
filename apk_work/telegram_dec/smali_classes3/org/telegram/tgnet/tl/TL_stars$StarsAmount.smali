.class public abstract Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public amount:J

.field public nanos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 1

    const v0, -0x44494b5d

    if-eq p1, v0, :cond_1

    const v0, 0x74aee3e0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in StarsAmount"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_4
    return-object v0
.end method

.method public static ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsAmount;-><init>()V

    iput-wide p0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    return-object v0
.end method


# virtual methods
.method public equals(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-wide v3, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public negative()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-gez v0, :cond_1

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public positive()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toDouble()D
    .locals 6

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    long-to-double v0, v0

    iget v2, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->nanos:I

    int-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    return-wide v0
.end method
