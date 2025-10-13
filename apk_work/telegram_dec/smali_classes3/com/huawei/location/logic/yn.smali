.class public Lcom/huawei/location/logic/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile Vw:Lcom/huawei/location/logic/yn;

.field private static final yn:[B


# instance fields
.field private E5:Ljava/util/Map;

.field private FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

.field private LW:Landroid/os/Handler;

.field private d2:Lcom/huawei/location/lite/common/android/receiver/PackageOperateCallback;

.field private dC:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/location/logic/yn;->yn:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/logic/yn;->E5:Ljava/util/Map;

    new-instance v0, Lcom/huawei/location/logic/yn$yn;

    invoke-direct {v0, p0}, Lcom/huawei/location/logic/yn$yn;-><init>(Lcom/huawei/location/logic/yn;)V

    iput-object v0, p0, Lcom/huawei/location/logic/yn;->d2:Lcom/huawei/location/lite/common/android/receiver/PackageOperateCallback;

    invoke-static {}, Lcom/huawei/location/activity/RiemannSoftArService;->getInstance()Lcom/huawei/location/activity/RiemannSoftArService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/logic/yn;->FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

    invoke-static {}, Lcom/huawei/location/lite/common/android/receiver/PackageReceiver;->getInstance()Lcom/huawei/location/lite/common/android/receiver/PackageReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/location/logic/yn;->d2:Lcom/huawei/location/lite/common/android/receiver/PackageOperateCallback;

    invoke-virtual {v0, v1}, Lcom/huawei/location/lite/common/android/receiver/PackageReceiver;->registerCallback(Lcom/huawei/location/lite/common/android/receiver/PackageOperateCallback;)V

    return-void
.end method

.method static synthetic FB(Lcom/huawei/location/logic/yn;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/logic/yn;->LW:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic LW(Lcom/huawei/location/logic/yn;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/logic/yn;->dC:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic Vw(Lcom/huawei/location/logic/yn;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/logic/yn;->E5:Ljava/util/Map;

    return-object p0
.end method

.method static dC(Lcom/huawei/location/logic/yn;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Location-ARCImp"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/location/logic/yn;->dC:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/location/logic/yn;->dC:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/location/logic/yn;->LW:Landroid/os/Handler;

    return-void
.end method

.method static synthetic yn(Lcom/huawei/location/logic/yn;)Lcom/huawei/location/base/activity/AbstractARServiceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/huawei/location/logic/yn;->FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

    return-object p0
.end method

.method public static yn()Lcom/huawei/location/logic/yn;
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/location/logic/yn;->Vw:Lcom/huawei/location/logic/yn;

    if-nez v0, :cond_1

    sget-object v0, Lcom/huawei/location/logic/yn;->yn:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/location/logic/yn;->Vw:Lcom/huawei/location/logic/yn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/location/logic/yn;

    invoke-direct {v1}, Lcom/huawei/location/logic/yn;-><init>()V

    sput-object v1, Lcom/huawei/location/logic/yn;->Vw:Lcom/huawei/location/logic/yn;

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
    sget-object v0, Lcom/huawei/location/logic/yn;->Vw:Lcom/huawei/location/logic/yn;

    return-object v0
.end method

.method private yn(Lcom/huawei/location/base/activity/entity/ClientInfo;)Ljava/util/List;
    .locals 2

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/location/base/activity/entity/ClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/huawei/location/base/activity/entity/ClientInfo;->getTransactionID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ARService is not support"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public yn(JLcom/huawei/location/base/activity/callback/ARCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isHuaweiPlatformDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->getEmuiVersionCode()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lcom/huawei/location/logic/yn;->yn(Lcom/huawei/location/base/activity/entity/ClientInfo;)Ljava/util/List;

    move-result-object p1

    const-string p2, "ActivityRecognitionClientImpl"

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p1, Lcom/huawei/location/lite/common/exception/LocationServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x283d

    invoke-static {p3}, Lcom/huawei/location/base/activity/constant/ActivityErrorCode;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":end request."

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/huawei/location/lite/common/exception/LocationServiceException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/location/logic/yn;->FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/location/base/activity/AbstractARServiceManager;->requestActivityUpdates(JLcom/huawei/location/base/activity/callback/ARCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V

    return-void
.end method

.method public yn(Lcom/huawei/hms/location/entity/activity/ActivityTransitionRequest;Lcom/huawei/location/base/activity/callback/ATCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isHuaweiPlatformDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->getEmuiVersionCode()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/huawei/location/logic/yn;->yn(Lcom/huawei/location/base/activity/entity/ClientInfo;)Ljava/util/List;

    move-result-object p1

    const-string p2, "ActivityRecognitionClientImpl"

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p1, Lcom/huawei/location/lite/common/exception/LocationServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x283d

    invoke-static {p3}, Lcom/huawei/location/base/activity/constant/ActivityErrorCode;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":end request."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/huawei/location/lite/common/exception/LocationServiceException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/location/logic/yn;->FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/location/base/activity/AbstractARServiceManager;->requestActivityTransitionUpdates(Lcom/huawei/hms/location/entity/activity/ActivityTransitionRequest;Lcom/huawei/location/base/activity/callback/ATCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V

    return-void
.end method

.method public yn(Lcom/huawei/location/base/activity/callback/ARCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isHuaweiPlatformDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->getEmuiVersionCode()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/location/logic/yn;->yn(Lcom/huawei/location/base/activity/entity/ClientInfo;)Ljava/util/List;

    move-result-object p1

    const-string p2, "ActivityRecognitionClientImpl"

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p1, Lcom/huawei/location/lite/common/exception/LocationServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x283d

    invoke-static {v0}, Lcom/huawei/location/base/activity/constant/ActivityErrorCode;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":end request."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/huawei/location/lite/common/exception/LocationServiceException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/location/logic/yn;->FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/location/base/activity/AbstractARServiceManager;->removeActivityUpdates(Lcom/huawei/location/base/activity/callback/ARCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V

    return-void
.end method

.method public yn(Lcom/huawei/location/base/activity/callback/ATCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->isHuaweiPlatformDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/huawei/location/lite/common/util/ROMUtil;->getEmuiVersionCode()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/huawei/location/logic/yn;->yn(Lcom/huawei/location/base/activity/entity/ClientInfo;)Ljava/util/List;

    move-result-object p1

    const-string p2, "ActivityRecognitionClientImpl"

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p1, Lcom/huawei/location/lite/common/exception/LocationServiceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x283d

    invoke-static {v0}, Lcom/huawei/location/base/activity/constant/ActivityErrorCode;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":end request."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/huawei/location/lite/common/exception/LocationServiceException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/location/logic/yn;->FB:Lcom/huawei/location/base/activity/AbstractARServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/location/base/activity/AbstractARServiceManager;->removeActivityTransitionUpdates(Lcom/huawei/location/base/activity/callback/ATCallback;Lcom/huawei/location/base/activity/entity/ClientInfo;)V

    return-void
.end method
