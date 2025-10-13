.class public Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;
.super Ljava/util/Random;
.source "SourceFile"


# instance fields
.field private s0:J

.field private s1:J


# direct methods
.method public constructor <init>(J)V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-static {p1, p2}, Lcom/carrotsearch/randomizedtesting/MurmurHash3;->hash(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s0:J

    invoke-static {p1, p2}, Lcom/carrotsearch/randomizedtesting/MurmurHash3;->hash(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s1:J

    iget-wide v2, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s0:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0xdeadbeefL

    invoke-static {p1, p2}, Lcom/carrotsearch/randomizedtesting/MurmurHash3;->hash(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s0:J

    invoke-static {p1, p2}, Lcom/carrotsearch/randomizedtesting/MurmurHash3;->hash(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s1:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->nextLong()J

    move-result-wide v0

    long-to-int v1, v0

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v1, p1

    return p1
.end method

.method public nextBoolean()Z
    .locals 5

    invoke-virtual {p0}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->nextInt()I

    move-result v2

    int-to-long v2, v2

    sub-int v4, v0, v1

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    long-to-int v7, v2

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    ushr-long/2addr v2, v5

    move v1, v4

    move v4, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    invoke-virtual {p0}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    invoke-virtual {p0}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->nextInt()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float v0, v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 2

    invoke-super {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->nextLong()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public nextInt(I)I
    .locals 0

    .line 0
    invoke-super {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 8

    iget-wide v0, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s0:J

    iget-wide v2, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s1:J

    add-long v4, v0, v2

    xor-long/2addr v2, v0

    const/16 v6, 0x37

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    xor-long/2addr v0, v2

    const/16 v6, 0xe

    shl-long v6, v2, v6

    xor-long/2addr v0, v6

    iput-wide v0, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s0:J

    const/16 v0, 0x24

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s1:J

    return-wide v4
.end method

.method public setSeed(J)V
    .locals 3

    iget-wide p1, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s0:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;->s1:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No seed set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
