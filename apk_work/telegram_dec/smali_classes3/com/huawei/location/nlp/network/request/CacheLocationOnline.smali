.class public Lcom/huawei/location/nlp/network/request/CacheLocationOnline;
.super Lcom/huawei/location/nlp/network/response/Location;
.source "SourceFile"


# instance fields
.field private accFilter:F

.field private flagsFilter:S

.field private latFilter:D

.field private lonFilter:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/location/nlp/network/response/Location;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccFilter()F
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->accFilter:F

    return v0
.end method

.method public getFlagsFilter()S
    .locals 1

    iget-short v0, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->flagsFilter:S

    return v0
.end method

.method public getLatFilter()D
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->latFilter:D

    return-wide v0
.end method

.method public getLonFilter()D
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->lonFilter:D

    return-wide v0
.end method

.method public setAccFilter(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->accFilter:F

    return-void
.end method

.method public setFlagsFilter(S)V
    .locals 0

    iput-short p1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->flagsFilter:S

    return-void
.end method

.method public setLatFilter(D)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->latFilter:D

    return-void
.end method

.method public setLonFilter(D)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->lonFilter:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheLocationOnline{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/huawei/location/nlp/network/response/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "latFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->latFilter:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lonFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->lonFilter:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", accFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->accFilter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", flagsFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/huawei/location/nlp/network/request/CacheLocationOnline;->flagsFilter:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
