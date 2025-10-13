.class final Lcom/huawei/location/crowdsourcing/yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/crowdsourcing/common/yn;


# instance fields
.field private Vw:Ljava/util/List;

.field private yn:J


# direct methods
.method public static synthetic $r8$lambda$xp5VV-f1gPEjwFIoRd5fZBpTlzY(JJLcom/huawei/location/crowdsourcing/common/entity/yn;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/location/crowdsourcing/yn;->yn(JJLcom/huawei/location/crowdsourcing/common/entity/yn;)Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/crowdsourcing/yn;->Vw:Ljava/util/List;

    return-void
.end method

.method private static yn(Ljava/util/List;)V
    .locals 5

    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/location/crowdsourcing/Config;->d2()J

    move-result-wide v2

    new-instance v4, Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/huawei/location/crowdsourcing/yn$$ExternalSyntheticLambda0;-><init>(JJ)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/huawei/location/crowdsourcing/common/util/Vw;->yn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic yn(JJLcom/huawei/location/crowdsourcing/common/entity/yn;)Z
    .locals 2

    .line 0
    invoke-virtual {p4}, Lcom/huawei/location/crowdsourcing/common/entity/yn;->yn()J

    move-result-wide v0

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

    const-string p3, "remove expired(ns). timeDiff:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CellCollector"

    invoke-static {p1, p0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method Vw()Ljava/util/List;
    .locals 10

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/crowdsourcing/Config;->t6()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CellCollector"

    if-nez v1, :cond_0

    const-string v0, "no need get cell"

    :goto_0
    invoke-static {v3, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/huawei/location/crowdsourcing/yn;->yn:J

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/huawei/location/crowdsourcing/Config;->E5()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    const-string v0, "collect interval check failed"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/huawei/location/crowdsourcing/Vw;->Vw()Landroid/content/Context;

    move-result-object v1

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v6}, Lcom/huawei/location/lite/common/util/PermissionUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "check permission failed"

    invoke-static {v3, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/huawei/location/crowdsourcing/Vw;->Vw()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/location/crowdsourcing/common/util/dC;->yn(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/location/crowdsourcing/common/entity/yn;->yn(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/huawei/location/crowdsourcing/yn;->yn(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v0, "no available cell info"

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/huawei/location/crowdsourcing/yn;->Vw:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell list size."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v4, p0, Lcom/huawei/location/crowdsourcing/yn;->yn:J

    invoke-virtual {v0}, Lcom/huawei/location/crowdsourcing/Config;->Vw()V

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/yn;->Vw:Ljava/util/List;

    return-object v0
.end method

.method public yn()V
    .locals 2

    .line 0
    const-string v0, "CellCollector"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
