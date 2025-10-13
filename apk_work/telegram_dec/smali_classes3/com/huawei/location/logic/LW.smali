.class public Lcom/huawei/location/logic/LW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile FB:Lcom/huawei/location/logic/LW;

.field private static final Vw:[B

.field private static final yn:Z


# instance fields
.field private E5:Lcom/huawei/location/provider/yn;

.field private LW:Lcom/huawei/location/logic/dC;

.field private dC:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isGmsRom()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/location/logic/LW;->yn:Z

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/location/logic/LW;->Vw:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/location/provider/yn;

    invoke-direct {v0}, Lcom/huawei/location/provider/yn;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/logic/LW;->E5:Lcom/huawei/location/provider/yn;

    new-instance v0, Lcom/huawei/location/logic/LW$yn;

    invoke-direct {v0, p0}, Lcom/huawei/location/logic/LW$yn;-><init>(Lcom/huawei/location/logic/LW;)V

    invoke-static {}, Lcom/huawei/location/nlp/api/yn;->yn()Lcom/huawei/location/nlp/api/yn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/location/nlp/api/yn;->yn(Lcom/huawei/hms/location/LocationProviderCallback;)V

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Vw;->yn(Landroid/content/Context;)V

    return-void
.end method

.method private Vw(Lcom/huawei/location/cache/Vw;)V
    .locals 1

    .line 0
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/huawei/location/logic/LW;->yn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/location/logic/LW;->E5:Lcom/huawei/location/provider/yn;

    invoke-virtual {v0, p1}, Lcom/huawei/location/provider/yn;->yn(Lcom/huawei/location/cache/Vw;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/huawei/location/nlp/api/yn;->yn()Lcom/huawei/location/nlp/api/yn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/location/nlp/api/yn;->yn(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;)V

    :goto_0
    return-void
.end method

.method private yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/oc;)Lcom/huawei/location/callback/d2;
    .locals 2

    .line 0
    sget-boolean v0, Lcom/huawei/location/logic/LW;->yn:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/location/callback/Ot;

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/location/callback/Ot;-><init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Lcom/huawei/location/callback/oc;)V

    invoke-direct {p0, p1, v0}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/huawei/location/callback/d2;->Vw(Z)V

    invoke-virtual {p1, v0}, Lcom/huawei/location/cache/Vw;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/huawei/location/cache/yn;->yn(Lcom/huawei/location/cache/Vw;)Z

    iget-object p2, p0, Lcom/huawei/location/logic/LW;->E5:Lcom/huawei/location/provider/yn;

    invoke-virtual {p2, p1}, Lcom/huawei/location/provider/yn;->Vw(Lcom/huawei/location/cache/Vw;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/huawei/location/callback/zp;

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/location/callback/zp;-><init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Lcom/huawei/location/callback/oc;)V

    invoke-direct {p0, p1, v0}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/huawei/location/callback/d2;->Vw(Z)V

    invoke-virtual {p1, v0}, Lcom/huawei/location/cache/Vw;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/huawei/location/cache/yn;->yn(Lcom/huawei/location/cache/Vw;)Z

    invoke-static {}, Lcom/huawei/location/nlp/api/yn;->yn()Lcom/huawei/location/nlp/api/yn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/location/nlp/api/yn;->Vw(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;)V

    :goto_0
    return-object v0
.end method

.method public static yn()Lcom/huawei/location/logic/LW;
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/location/logic/LW;->FB:Lcom/huawei/location/logic/LW;

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/location/logic/LW;->Vw:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/location/logic/LW;->FB:Lcom/huawei/location/logic/LW;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/location/logic/LW;

    invoke-direct {v1}, Lcom/huawei/location/logic/LW;-><init>()V

    sput-object v1, Lcom/huawei/location/logic/LW;->FB:Lcom/huawei/location/logic/LW;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/huawei/location/logic/LW;->FB:Lcom/huawei/location/logic/LW;

    return-object v0
.end method

.method private yn(Lcom/huawei/location/cache/Vw;)V
    .locals 4

    .line 0
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v0

    invoke-static {}, Lcom/huawei/location/logic/d2$Vw;->yn()Lcom/huawei/location/logic/d2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/huawei/location/logic/d2;->yn(Lcom/huawei/location/cache/Vw;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->LW()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerRemoveRequest, uuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", provider is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HwLocationManager"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/location/logic/LW;->Vw(Lcom/huawei/location/cache/Vw;)V

    goto :goto_2

    :cond_0
    const-string v0, "fused"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->yn()Lcom/huawei/location/callback/d2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/gnss/api/yn;->yn(Landroid/location/LocationListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "passive"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "gps"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "handlerRemoveRequest fail"

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->yn()Lcom/huawei/location/callback/d2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/gnss/api/yn;->yn(Landroid/location/LocationListener;)V

    :goto_2
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->FB()I

    move-result p1

    iget-object v0, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/huawei/location/logic/LW;->yn(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->unRegisterNetworkObserve()V

    :cond_4
    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/location/cache/yn;->yn()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->unRegisterAllObserve()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    :cond_5
    return-void
.end method

.method private yn(Lcom/huawei/location/callback/d2;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/huawei/location/logic/LW;->dC:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FullSDK-hwLocationManager-HwLocationManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/location/logic/LW;->dC:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/logic/LW;->dC:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/location/logic/LW$Vw;

    invoke-direct {v1, p0, p1}, Lcom/huawei/location/logic/LW$Vw;-><init>(Lcom/huawei/location/logic/LW;Lcom/huawei/location/callback/d2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static yn(Lcom/huawei/location/logic/LW;Lcom/huawei/hms/location/HwLocationResult;)V
    .locals 4

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/location/cache/yn;->yn()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/location/cache/Vw;

    const-string v2, "HwLocationManager"

    if-nez v1, :cond_1

    const-string v1, "dispatchCallback fail, wrapLocationRequest is null"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/huawei/location/cache/Vw;->yn()Lcom/huawei/location/callback/d2;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/huawei/location/cache/Vw;->d2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/location/FB;->yn(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/huawei/location/cache/Vw;->FB()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_3

    const/16 v3, 0x68

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_3

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    :cond_3
    invoke-virtual {v1}, Lcom/huawei/location/cache/Vw;->yn()Lcom/huawei/location/callback/d2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/location/callback/d2;->LW(Lcom/huawei/hms/location/HwLocationResult;)V

    goto :goto_0

    :cond_4
    :goto_1
    const-string v3, "dispatchCallback fail, request is invalid"

    invoke-static {v2, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v1}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private yn(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x12c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x68

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z
    .locals 11

    .line 0
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->Vw()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return v0

    :cond_0
    invoke-virtual {v6}, Lcom/huawei/hms/location/LocationRequest;->getMaxWaitTime()J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v3, v1, v7

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lcom/huawei/hms/location/LocationRequest;->getInterval()J

    move-result-wide v3

    const-wide/16 v9, 0x2

    mul-long v3, v3, v9

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-string v0, "HwLocationManager"

    const-string v1, "maxWaitTime is enable , add to MaxWaitTimeQueue"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/logic/d2$Vw;->yn()Lcom/huawei/location/logic/d2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->E5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/huawei/hms/location/LocationRequest;->getMaxWaitTime()J

    move-result-wide v3

    move-object v1, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/location/logic/d2;->yn(Lcom/huawei/location/callback/d2;Ljava/lang/String;JLcom/huawei/hms/location/LocationRequest;)V

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v6, v7, v8}, Lcom/huawei/hms/location/LocationRequest;->setMaxWaitTime(J)Lcom/huawei/hms/location/LocationRequest;

    :cond_2
    return v0
.end method


# virtual methods
.method public declared-synchronized FB(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/oc;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->d2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/cache/yn;->yn(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->d2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/logic/LW;->yn(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/huawei/location/lite/common/exception/LocationServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    :try_start_2
    const-string v0, "HwLocationManager"

    const-string v1, "requestLocationUpdatesEx throw locationServiceException"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->FB()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLocationUpdatesEx priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HwLocationManager"

    invoke-static {v3, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12c

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/oc;)Lcom/huawei/location/callback/d2;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/huawei/location/callback/E5;

    invoke-direct {v0, v1, p2}, Lcom/huawei/location/callback/E5;-><init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Lcom/huawei/location/callback/oc;)V

    invoke-direct {p0, p1, v0}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/huawei/location/callback/d2;->Vw(Z)V

    invoke-virtual {p1, v0}, Lcom/huawei/location/cache/Vw;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/huawei/location/cache/yn;->yn(Lcom/huawei/location/cache/Vw;)Z

    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lcom/huawei/location/gnss/api/yn;->yn(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Landroid/location/LocationListener;)V

    move-object p2, v0

    :goto_1
    iget-object v0, p2, Lcom/huawei/location/callback/d2;->yn:Lcom/huawei/location/callback/oc;

    invoke-interface {v0}, Lcom/huawei/location/callback/oc;->yn()V

    invoke-direct {p0, p2}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->FB()I

    move-result p1

    iget-object p2, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    if-nez p2, :cond_2

    new-instance p2, Lcom/huawei/location/logic/dC;

    invoke-direct {p2}, Lcom/huawei/location/logic/dC;-><init>()V

    iput-object p2, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/location/logic/LW;->yn(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->registerNetworkObserve()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/huawei/location/logic/LW;->Vw(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/oc;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public Vw()Landroid/location/Location;
    .locals 14

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/lite/common/util/LocationUtil;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HwLocationManager"

    if-nez v0, :cond_0

    const-string v0, "location unable"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Lcom/huawei/location/gnss/api/yn;->yn(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v2, v3}, Lcom/huawei/location/gnss/api/yn;->yn(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/location/cache/yn;->FB()Landroid/location/Location;

    move-result-object v3

    if-nez v2, :cond_1

    const-string v2, "native network is null,use cache network"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const-string v3, "cacheLocation loacation is null,use native network"

    invoke-static {v1, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nativeLocTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ",cacheLocTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v4, v6

    const-wide v6, 0xdf8475800L

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v2, v3

    :goto_1
    const-string v3, "return netBestLoc"

    if-nez v0, :cond_4

    invoke-static {v1, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string v4, "return nativeGPSLoc"

    if-nez v2, :cond_5

    invoke-static {v1, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    sub-long v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide v11, 0x28fa6ae00L

    cmp-long v13, v9, v11

    if-gez v13, :cond_7

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    invoke-static {v1, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    invoke-static {v1, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7
    cmp-long v9, v5, v7

    if-lez v9, :cond_8

    invoke-static {v1, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    invoke-static {v1, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public declared-synchronized Vw(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/oc;)V
    .locals 3

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->d2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/cache/yn;->yn(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->d2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/location/logic/LW;->yn(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/huawei/location/lite/common/exception/LocationServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    :try_start_2
    const-string v0, "HwLocationManager"

    const-string v1, "requestLocationUpdates throw locationServiceException"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->LW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/oc;)Lcom/huawei/location/callback/d2;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->LW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fused"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v0, Lcom/huawei/location/logic/LW;->yn:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/huawei/location/callback/dC;

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/location/callback/dC;-><init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Lcom/huawei/location/callback/oc;)V

    invoke-direct {p0, p1, v0}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/callback/d2;->Vw(Z)V

    invoke-virtual {p1, v0}, Lcom/huawei/location/cache/Vw;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/location/cache/yn;->yn(Lcom/huawei/location/cache/Vw;)Z

    iget-object v1, p0, Lcom/huawei/location/logic/LW;->E5:Lcom/huawei/location/provider/yn;

    invoke-virtual {v1, p1}, Lcom/huawei/location/provider/yn;->Vw(Lcom/huawei/location/cache/Vw;)V

    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/huawei/location/gnss/api/yn;->yn(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Landroid/location/LocationListener;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/huawei/location/callback/ut;

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/huawei/location/callback/ut;-><init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Lcom/huawei/location/callback/oc;)V

    invoke-direct {p0, p1, v0}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/callback/d2;->Vw(Z)V

    invoke-virtual {p1, v0}, Lcom/huawei/location/cache/Vw;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/location/cache/yn;->yn(Lcom/huawei/location/cache/Vw;)Z

    invoke-static {}, Lcom/huawei/location/nlp/api/yn;->yn()Lcom/huawei/location/nlp/api/yn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/location/nlp/api/yn;->Vw(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;)V

    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->LW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "passive"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/huawei/location/callback/zp;

    invoke-direct {v1, v0, p2}, Lcom/huawei/location/callback/zp;-><init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Lcom/huawei/location/callback/oc;)V

    invoke-direct {p0, p1, v1}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;Lcom/huawei/location/callback/d2;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/location/callback/d2;->Vw(Z)V

    invoke-virtual {p1, v1}, Lcom/huawei/location/cache/Vw;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/huawei/location/cache/yn;->yn(Lcom/huawei/location/cache/Vw;)Z

    invoke-static {}, Lcom/huawei/location/gnss/api/yn;->yn()Lcom/huawei/location/gnss/api/yn;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/huawei/location/gnss/api/yn;->yn(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;Landroid/location/LocationListener;)V

    move-object v0, v1

    :goto_2
    invoke-interface {p2}, Lcom/huawei/location/callback/oc;->yn()V

    invoke-direct {p0, v0}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/callback/d2;)V

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->FB()I

    move-result p1

    iget-object p2, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    if-nez p2, :cond_4

    new-instance p2, Lcom/huawei/location/logic/dC;

    invoke-direct {p2}, Lcom/huawei/location/logic/dC;-><init>()V

    iput-object p2, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    :cond_4
    invoke-direct {p0, p1}, Lcom/huawei/location/logic/LW;->yn(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/huawei/location/logic/LW;->LW:Lcom/huawei/location/logic/dC;

    invoke-virtual {p1}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->registerNetworkObserve()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    const-string p1, "HwLocationManager"

    const-string p2, "end"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public yn(Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/huawei/location/cache/yn;->Vw()Lcom/huawei/location/cache/yn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/location/cache/yn;->Vw(Ljava/lang/String;)Lcom/huawei/location/cache/Vw;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/location/cache/Vw;->LW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/huawei/location/logic/LW;->yn(Lcom/huawei/location/cache/Vw;)V

    return-void

    :cond_0
    new-instance p1, Lcom/huawei/location/lite/common/exception/LocationServiceException;

    const/16 v0, 0x2a34

    invoke-static {v0}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/huawei/location/lite/common/exception/LocationServiceException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
