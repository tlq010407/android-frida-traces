.class public Lcom/huawei/location/nlp/network/response/Location;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acc:F

.field private bearing:F

.field private buildingId:Ljava/lang/String;

.field private extraInfo:Ljava/lang/String;

.field private flags:S

.field private floor:I

.field private floorAcc:I

.field private lat:D

.field private lon:D

.field private speed:F

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/response/Location;->acc:F

    return v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/response/Location;->bearing:F

    return v0
.end method

.method public getBuildingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/nlp/network/response/Location;->buildingId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/nlp/network/response/Location;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()S
    .locals 1

    iget-short v0, p0, Lcom/huawei/location/nlp/network/response/Location;->flags:S

    return v0
.end method

.method public getFloor()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/response/Location;->floor:I

    return v0
.end method

.method public getFloorAcc()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/response/Location;->floorAcc:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/response/Location;->lat:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/response/Location;->lon:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/response/Location;->speed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/response/Location;->time:J

    return-wide v0
.end method

.method public setAccuracy(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/response/Location;->acc:F

    return-void
.end method

.method public setBearing(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/response/Location;->bearing:F

    return-void
.end method

.method public setBuildingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/nlp/network/response/Location;->buildingId:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/nlp/network/response/Location;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lcom/huawei/location/nlp/network/response/Location;->flags:S

    return-void
.end method

.method public setFloor(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/response/Location;->floor:I

    return-void
.end method

.method public setFloorAcc(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/response/Location;->floorAcc:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/response/Location;->lat:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/response/Location;->lon:D

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/response/Location;->speed:F

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/response/Location;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location{lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/response/Location;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/response/Location;->lon:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", acc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/response/Location;->acc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/response/Location;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/response/Location;->bearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/huawei/location/nlp/network/response/Location;->flags:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/response/Location;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buildingId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/nlp/network/response/Location;->buildingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", floor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/location/nlp/network/response/Location;->floor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", floorAcc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/location/nlp/network/response/Location;->floorAcc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extraInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/location/nlp/network/response/Location;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
