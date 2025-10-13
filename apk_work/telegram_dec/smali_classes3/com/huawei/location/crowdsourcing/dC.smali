.class final Lcom/huawei/location/crowdsourcing/dC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/crowdsourcing/common/yn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/crowdsourcing/dC$LW;,
        Lcom/huawei/location/crowdsourcing/dC$FB;,
        Lcom/huawei/location/crowdsourcing/dC$Vw;
    }
.end annotation


# instance fields
.field private FB:Ljava/util/List;

.field private LW:Lcom/huawei/location/crowdsourcing/dC$LW;

.field private final Vw:Lcom/huawei/location/crowdsourcing/dC$Vw;

.field private yn:J


# direct methods
.method public static synthetic $r8$lambda$qnQAP8t4P60qUq8sDSvtxcLVpB8(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/huawei/location/crowdsourcing/dC;->yn(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rjaQXdsuy34nFQa76b8FkQaLUFE(JJLandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/location/crowdsourcing/dC;->yn(JJLandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/crowdsourcing/dC;->FB:Ljava/util/List;

    new-instance v0, Lcom/huawei/location/crowdsourcing/dC$Vw;

    invoke-direct {v0, p0, p1}, Lcom/huawei/location/crowdsourcing/dC$Vw;-><init>(Lcom/huawei/location/crowdsourcing/dC;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/location/crowdsourcing/dC;->Vw:Lcom/huawei/location/crowdsourcing/dC$Vw;

    return-void
.end method

.method private Vw(Ljava/util/List;)Z
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/dC;->FB:Ljava/util/List;

    new-instance v1, Lcom/huawei/location/crowdsourcing/dC$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/huawei/location/crowdsourcing/dC$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/huawei/location/crowdsourcing/common/util/yn;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    iput-object p1, p0, Lcom/huawei/location/crowdsourcing/dC;->FB:Ljava/util/List;

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic yn(Lcom/huawei/location/crowdsourcing/dC;)Lcom/huawei/location/crowdsourcing/dC$Vw;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/huawei/location/crowdsourcing/dC;->Vw:Lcom/huawei/location/crowdsourcing/dC$Vw;

    return-object p0
.end method

.method static yn(Lcom/huawei/location/crowdsourcing/dC;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/huawei/location/crowdsourcing/dC;->yn:J

    return-void
.end method

.method private yn(Ljava/util/List;)V
    .locals 5

    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/location/crowdsourcing/Config;->OB()J

    move-result-wide v2

    new-instance v4, Lcom/huawei/location/crowdsourcing/dC$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/huawei/location/crowdsourcing/dC$$ExternalSyntheticLambda0;-><init>(JJ)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/huawei/location/crowdsourcing/common/util/Vw;->yn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic yn(JJLandroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 0
    iget-wide v0, p4, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p4, p0, p2

    if-gtz p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remove expired(\u03bcs). timeDiff:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiCollector"

    invoke-static {p1, p0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic yn(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    iget-wide p0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method FB()Z
    .locals 4

    new-instance v0, Lcom/huawei/location/crowdsourcing/dC$LW;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/location/crowdsourcing/dC$LW;-><init>(Lcom/huawei/location/crowdsourcing/dC;Lcom/huawei/location/crowdsourcing/dC$yn;)V

    iput-object v0, p0, Lcom/huawei/location/crowdsourcing/dC;->LW:Lcom/huawei/location/crowdsourcing/dC$LW;

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Vw;->Vw()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "WifiCollector"

    const-string v1, "wifi scan finish register success"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method Vw()Ljava/util/List;
    .locals 8

    .line 0
    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/crowdsourcing/Config;->a6()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "WifiCollector"

    if-nez v1, :cond_0

    const-string v0, "no need get wifi"

    :goto_0
    invoke-static {v3, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/huawei/location/crowdsourcing/dC;->yn:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/location/crowdsourcing/Config;->EF()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Vw;->Vw()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_1

    const-string v1, "no wifi service"

    invoke-static {v3, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/huawei/location/crowdsourcing/dC;->yn(Ljava/util/List;)V

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/location/crowdsourcing/Config;->Wf()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "limit ap num from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/huawei/location/crowdsourcing/dC$FB;

    invoke-direct {v6, v2}, Lcom/huawei/location/crowdsourcing/dC$FB;-><init>(Lcom/huawei/location/crowdsourcing/dC$yn;)V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "no available ap info"

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/huawei/location/crowdsourcing/dC;->Vw(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "no update"

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ap list size."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/location/crowdsourcing/Config;->FB()V

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/dC;->FB:Ljava/util/List;

    return-object v0

    :cond_5
    const-string v0, "not fresh"

    goto/16 :goto_0
.end method

.method public yn()V
    .locals 2

    .line 0
    const-string v0, "WifiCollector"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/dC;->LW:Lcom/huawei/location/crowdsourcing/dC$LW;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Vw;->Vw()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
