.class public Lorg/telegram/messenger/audioinfo/util/RangeInputStream;
.super Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
.source "SourceFile"


# instance fields
.field private final endPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;J)V

    add-long/2addr p2, p4

    iput-wide p2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    return-void
.end method


# virtual methods
.method public getRemainingLength()J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 5

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    sub-long/2addr v2, v0

    long-to-int p3, v2

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->endPosition:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide p1

    sub-long/2addr v2, p1

    long-to-int p1, v2

    int-to-long p1, p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
