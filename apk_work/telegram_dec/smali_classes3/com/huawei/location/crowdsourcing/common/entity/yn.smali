.class public Lcom/huawei/location/crowdsourcing/common/entity/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static yn:Z


# instance fields
.field private final FB:Landroid/telephony/CellInfo;

.field private final Vw:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nano time delay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellWrapper"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->yn:Z

    return-void
.end method

.method constructor <init>(Landroid/telephony/CellInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->FB:Landroid/telephony/CellInfo;

    iput-wide p2, p0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->Vw:J

    return-void
.end method

.method public static yn(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 0
    sget-boolean v0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->yn:Z

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide v4, 0x174876e800L

    const-string v6, "CellWrapper"

    cmp-long v7, v0, v4

    if-lez v7, :cond_2

    const-string v4, "detect nano"

    invoke-static {v6, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v7

    cmp-long v5, v7, v2

    if-lez v5, :cond_0

    const-string v2, "close nano detect"

    invoke-static {v6, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/huawei/location/crowdsourcing/common/entity/yn;->yn:Z

    :cond_1
    sget-boolean v2, Lcom/huawei/location/crowdsourcing/common/entity/yn;->yn:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use nano. diff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not detect nano. diff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    new-instance v4, Lcom/huawei/location/crowdsourcing/common/entity/yn;

    invoke-direct {v4, v3, v0, v1}, Lcom/huawei/location/crowdsourcing/common/entity/yn;-><init>(Landroid/telephony/CellInfo;J)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v2
.end method


# virtual methods
.method public Vw()Landroid/telephony/CellInfo;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->FB:Landroid/telephony/CellInfo;

    return-object v0
.end method

.method public yn()J
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->FB:Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/location/crowdsourcing/common/entity/yn;->Vw:J

    add-long/2addr v0, v2

    return-wide v0
.end method
