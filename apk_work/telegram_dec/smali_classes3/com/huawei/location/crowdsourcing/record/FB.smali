.class Lcom/huawei/location/crowdsourcing/record/FB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private E5:I

.field private FB:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RSSI"
    .end annotation
.end field

.field private LW:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Frequency"
    .end annotation
.end field

.field private Vw:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SSID"
    .end annotation
.end field

.field private d2:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SCANTIME"
    .end annotation
.end field

.field private dC:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsConnect"
    .end annotation
.end field

.field private yn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BSSID"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocWifiInfo{ssid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->Vw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->FB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->LW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->dC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->E5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->d2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yn()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/huawei/location/crowdsourcing/record/FB;->d2:J

    return-wide v0
.end method

.method yn(Landroid/net/wifi/ScanResult;Ljava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/location/crowdsourcing/record/FB;->yn:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->Vw:Ljava/lang/String;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->FB:I

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->LW:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    iput p2, p0, Lcom/huawei/location/crowdsourcing/record/FB;->dC:I

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    invoke-static {p1}, Lcom/huawei/location/crowdsourcing/record/FB$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/wifi/ScanResult;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    iget-object p2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "PSK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WEP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_1
    iput v2, p0, Lcom/huawei/location/crowdsourcing/record/FB;->E5:I

    iget-wide p1, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/huawei/location/crowdsourcing/record/FB;->d2:J

    return-void
.end method
