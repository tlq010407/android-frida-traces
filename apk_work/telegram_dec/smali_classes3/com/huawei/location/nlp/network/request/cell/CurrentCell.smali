.class public Lcom/huawei/location/nlp/network/request/cell/CurrentCell;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boottime:J

.field private cellId:J

.field private lac:I

.field private mcc:I

.field private mnc:I

.field private rat:I

.field private rssi:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JIIIJIS)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->boottime:J

    iput p3, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mcc:I

    iput p4, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mnc:I

    iput p5, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->lac:I

    iput-wide p6, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->cellId:J

    iput p8, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rat:I

    iput-short p9, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rssi:S

    return-void
.end method


# virtual methods
.method public getBoottime()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->boottime:J

    return-wide v0
.end method

.method public getCellId()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->cellId:J

    return-wide v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->lac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mnc:I

    return v0
.end method

.method public getRat()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rat:I

    return v0
.end method

.method public getRssi()S
    .locals 1

    iget-short v0, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rssi:S

    return v0
.end method

.method public setBoottime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->boottime:J

    return-void
.end method

.method public setCellId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->cellId:J

    return-void
.end method

.method public setLac(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->lac:I

    return-void
.end method

.method public setMcc(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mcc:I

    return-void
.end method

.method public setMnc(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mnc:I

    return-void
.end method

.method public setRat(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rat:I

    return-void
.end method

.method public setRssi(S)V
    .locals 0

    iput-short p1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rssi:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentCell{boottime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->boottime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->cellId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/huawei/location/nlp/network/request/cell/CurrentCell;->rssi:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
