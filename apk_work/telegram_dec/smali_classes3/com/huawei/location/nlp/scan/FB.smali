.class Lcom/huawei/location/nlp/scan/FB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/huawei/location/nlp/scan/LW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;

    check-cast p2, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getSameCode()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getSameCode()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getFrequency()I

    move-result v0

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getFrequency()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getRssi()I

    move-result p2

    if-le p1, p2, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/huawei/location/nlp/network/request/wifi/WifiInfo;->getTime()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_5

    :goto_0
    const/4 p1, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
