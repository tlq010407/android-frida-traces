.class public Lcom/huawei/location/vdr/data/LW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/vdr/listener/yn;


# instance fields
.field private E5:Landroid/location/Location;

.field private final FB:Lcom/huawei/location/vdr/data/Vw;

.field private LW:Lcom/huawei/location/vdr/listener/Vw;

.field private final Vw:Lcom/huawei/location/vdr/data/yn;

.field d2:[Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;

.field private dC:Landroid/os/Handler;

.field private yn:J

.field zp:J


# direct methods
.method public static synthetic $r8$lambda$_YNC80WFPa_XkFbhUGbXaXTPjAU(Lcom/huawei/location/vdr/data/LW;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/location/vdr/data/LW;->yn(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/location/vdr/data/LW;->yn:J

    new-instance v0, Lcom/huawei/location/vdr/data/yn;

    invoke-direct {v0}, Lcom/huawei/location/vdr/data/yn;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/vdr/data/LW;->Vw:Lcom/huawei/location/vdr/data/yn;

    invoke-virtual {v0, p0}, Lcom/huawei/location/vdr/data/yn;->yn(Lcom/huawei/location/vdr/listener/yn;)V

    invoke-virtual {v0}, Lcom/huawei/location/vdr/data/yn;->yn()V

    new-instance v0, Lcom/huawei/location/vdr/data/Vw;

    invoke-direct {v0}, Lcom/huawei/location/vdr/data/Vw;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/vdr/data/LW;->FB:Lcom/huawei/location/vdr/data/Vw;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LOC-VDR-DATA"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/huawei/location/vdr/data/LW$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/huawei/location/vdr/data/LW$$ExternalSyntheticLambda0;-><init>(Lcom/huawei/location/vdr/data/LW;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized yn([Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;J)V
    .locals 5

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "VdrDataManager"

    const-string p2, "handler is null,can not handler data"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xa

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x514

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->FB:Lcom/huawei/location/vdr/data/Vw;

    iget-wide v2, p0, Lcom/huawei/location/vdr/data/LW;->yn:J

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/huawei/location/vdr/data/Vw;->yn(JJ)Lcom/huawei/riemann/gnsslocation/core/bean/sensor/MotionSensors;

    move-result-object v0

    iput-wide p2, p0, Lcom/huawei/location/vdr/data/LW;->yn:J

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/huawei/location/vdr/data/LW;->LW:Lcom/huawei/location/vdr/listener/Vw;

    if-eqz p2, :cond_2

    new-instance p3, Lcom/huawei/location/vdr/data/FB;

    iget-object v2, p0, Lcom/huawei/location/vdr/data/LW;->E5:Landroid/location/Location;

    invoke-direct {p3, p1, v0, v2}, Lcom/huawei/location/vdr/data/FB;-><init>([Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;Lcom/huawei/riemann/gnsslocation/core/bean/sensor/MotionSensors;Landroid/location/Location;)V

    invoke-interface {p2, p3}, Lcom/huawei/location/vdr/listener/Vw;->onVdrDataReceived(Lcom/huawei/location/vdr/data/FB;)V

    iput-object v1, p0, Lcom/huawei/location/vdr/data/LW;->E5:Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private synthetic yn(Landroid/os/Message;)Z
    .locals 2

    .line 0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/vdr/data/LW;->d2:[Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;

    iget-wide v0, p0, Lcom/huawei/location/vdr/data/LW;->zp:J

    invoke-direct {p0, p1, v0, v1}, Lcom/huawei/location/vdr/data/LW;->yn([Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/huawei/location/vdr/data/LW;->yn([Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;J)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized Vw()V
    .locals 2

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->Vw:Lcom/huawei/location/vdr/data/yn;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/huawei/location/vdr/data/LW;->FB:Lcom/huawei/location/vdr/data/Vw;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/location/vdr/data/yn;->Vw()V

    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->FB:Lcom/huawei/location/vdr/data/Vw;

    invoke-virtual {v0}, Lcom/huawei/location/vdr/data/Vw;->Vw()V

    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v1, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    const-string v0, "VdrDataManager"

    const-string v1, "stop vdr data"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "VdrDataManager"

    const-string v1, "init fail, try to call start method"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public Vw([Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;J)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->E5:Landroid/location/Location;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/huawei/location/vdr/data/LW;->d2:[Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;

    iput-wide p2, p0, Lcom/huawei/location/vdr/data/LW;->zp:J

    iget-object p1, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x28

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/location/vdr/data/LW;->yn([Lcom/huawei/riemann/gnsslocation/core/bean/obs/GnssRawObservation;J)V

    :goto_0
    return-void
.end method

.method public yn()Landroid/location/Location;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/vdr/data/LW;->E5:Landroid/location/Location;

    return-object v0
.end method

.method public yn(Landroid/location/Location;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/vdr/data/LW;->E5:Landroid/location/Location;

    return-void
.end method

.method public declared-synchronized yn(Lcom/huawei/location/vdr/listener/Vw;)V
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/huawei/location/vdr/data/LW;->LW:Lcom/huawei/location/vdr/listener/Vw;

    iget-object p1, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/huawei/location/vdr/data/LW;->dC:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
