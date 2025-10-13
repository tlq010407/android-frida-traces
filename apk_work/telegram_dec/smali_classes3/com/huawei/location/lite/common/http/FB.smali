.class public Lcom/huawei/location/lite/common/http/FB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/http/FB$LW;,
        Lcom/huawei/location/lite/common/http/FB$FB;,
        Lcom/huawei/location/lite/common/http/FB$Vw;
    }
.end annotation


# static fields
.field private static final yn:[B


# instance fields
.field private FB:Lcom/huawei/location/lite/common/http/FB$LW;

.field private LW:Lcom/huawei/location/lite/common/http/FB$FB;

.field private Vw:Lcom/huawei/location/lite/common/http/LW;

.field private dC:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$FyIZKisH4lOyGfwwop5cV3-3MN0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/http/FB;->yn(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/huawei/location/lite/common/http/FB;->yn:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/location/lite/common/http/FB$yn;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/http/FB$yn;-><init>(Lcom/huawei/location/lite/common/http/FB;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->dC:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/huawei/location/lite/common/http/FB$FB;

    invoke-direct {v0, p0}, Lcom/huawei/location/lite/common/http/FB$FB;-><init>(Lcom/huawei/location/lite/common/http/FB;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->LW:Lcom/huawei/location/lite/common/http/FB$FB;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/lite/common/http/FB$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;-><init>()V

    return-void
.end method

.method private FB()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Http_Handler_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/lite/common/http/FB$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/huawei/location/lite/common/http/FB$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/huawei/location/lite/common/http/FB$LW;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/huawei/location/lite/common/http/FB$LW;-><init>(Lcom/huawei/location/lite/common/http/FB;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    :cond_0
    return-void
.end method

.method static FB(Lcom/huawei/location/lite/common/http/FB;)V
    .locals 3

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/huawei/location/lite/common/http/HttpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/huawei/location/lite/common/http/FB;->dC:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindHttpService is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpServiceManager"

    invoke-static {v0, p0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static LW(Lcom/huawei/location/lite/common/http/FB;)V
    .locals 2

    .line 0
    monitor-enter p0

    const-string v0, "HttpServiceManager"

    const-string v1, "unbindService()"

    :try_start_0
    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/FB;->dC:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/http/FB;->yn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Vw()Landroid/os/Handler;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;->FB()V

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    return-object v0
.end method

.method static synthetic Vw(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/FB$FB;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/huawei/location/lite/common/http/FB;->LW:Lcom/huawei/location/lite/common/http/FB$FB;

    return-object p0
.end method

.method static dC(Lcom/huawei/location/lite/common/http/FB;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/FB;->LW:Lcom/huawei/location/lite/common/http/FB$FB;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    iget-object v1, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    :cond_1
    return-void
.end method

.method static synthetic yn(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/LW;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    return-object p0
.end method

.method static synthetic yn(Lcom/huawei/location/lite/common/http/FB;Lcom/huawei/location/lite/common/http/LW;)Lcom/huawei/location/lite/common/http/LW;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    return-object p1
.end method

.method static synthetic yn(Lcom/huawei/location/lite/common/http/FB;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/http/FB;->yn(Z)V

    return-void
.end method

.method private static synthetic yn(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    const-string p0, "HttpServiceManager"

    const-string p1, "uncaughtException."

    invoke-static {p0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private yn(Z)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->LW:Lcom/huawei/location/lite/common/http/FB$FB;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "HttpServiceManager"

    const-string v0, "notifyServiceDied IBinder register linkToDeath function fail."

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB;->FB:Lcom/huawei/location/lite/common/http/FB$LW;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;->Vw()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;->Vw()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized LW()Z
    .locals 6

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;->Vw()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :try_start_2
    sget-object v3, Lcom/huawei/location/lite/common/http/FB;->yn:[B

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v4, 0x12c

    :try_start_3
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_5
    const-string v3, "HttpServiceManager"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpService sleep, count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpServiceManager"

    invoke-static {v4, v3}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "HttpServiceManager"

    const-string v2, "httpService wait connect times over max times : 10"

    invoke-static {v1, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x0

    :goto_2
    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public Vw(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 1

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/huawei/location/lite/common/http/LW;->yn(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/http/FB;->yn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "HttpServiceManager"

    const-string p2, "executeOriginal RemoteException"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    invoke-direct {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;-><init>()V

    return-object p1
.end method

.method public yn(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;
    .locals 1

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB;->Vw:Lcom/huawei/location/lite/common/http/LW;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/huawei/location/lite/common/http/LW;->Vw(Lcom/huawei/location/lite/common/http/HttpConfigInfo;Lcom/huawei/location/lite/common/http/request/BaseRequest;)Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/huawei/location/lite/common/http/FB;->yn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "HttpServiceManager"

    const-string p2, "execute RemoteException"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/huawei/location/lite/common/http/response/ResponseInfo;

    invoke-direct {p1}, Lcom/huawei/location/lite/common/http/response/ResponseInfo;-><init>()V

    return-object p1
.end method

.method yn()V
    .locals 4

    .line 0
    const-string v0, "HttpServiceManager"

    const-string v1, "delayDisconnect()"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;->Vw()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/huawei/location/lite/common/http/FB;->Vw()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
