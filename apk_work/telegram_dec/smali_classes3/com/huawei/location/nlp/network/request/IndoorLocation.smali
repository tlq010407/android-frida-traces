.class public Lcom/huawei/location/nlp/network/request/IndoorLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acc:F

.field private buildingId:Ljava/lang/String;

.field private flags:I

.field private floor:I

.field private floorAcc:F

.field private lat:D

.field private lon:D

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcc()F
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->acc:F

    return v0
.end method

.method public getBuildingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->buildingId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->flags:I

    return v0
.end method

.method public getFloor()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->floor:I

    return v0
.end method

.method public getFloorAcc()F
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->floorAcc:F

    return v0
.end method

.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->lon:D

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->time:J

    return-wide v0
.end method

.method public setAcc(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->acc:F

    return-void
.end method

.method public setBuildingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->buildingId:Ljava/lang/String;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->flags:I

    return-void
.end method

.method public setFloor(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->floor:I

    return-void
.end method

.method public setFloorAcc(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->floorAcc:F

    return-void
.end method

.method public setLat(D)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->lat:D

    return-void
.end method

.method public setLon(D)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->lon:D

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndoorLocation{lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", acc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->acc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", buildingId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->buildingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", floor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->floor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", floorAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->floorAcc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/IndoorLocation;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
