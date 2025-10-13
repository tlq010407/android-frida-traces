.class public Lorg/telegram/messenger/KeepAliveJob;
.super Lorg/telegram/messenger/support/JobIntentService;
.source "SourceFile"


# static fields
.field private static volatile countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static finishJobByTimeoutRunnable:Ljava/lang/Runnable;

.field private static volatile startingJob:Z

.field private static final sync:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$KunmSAUOG7za9CVFvrm3r_2vjUE()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->lambda$startJob$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$R3Qm7rjCixvSkJ9CuBP_gyavRqA()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->finishJobInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/KeepAliveJob;->sync:Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/KeepAliveJob$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/KeepAliveJob$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/telegram/messenger/KeepAliveJob;->finishJobByTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/support/JobIntentService;-><init>()V

    return-void
.end method

.method public static finishJob()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/KeepAliveJob$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/messenger/KeepAliveJob$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static finishJobInternal()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/KeepAliveJob;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/KeepAliveJob;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "finish keep-alive job"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/telegram/messenger/KeepAliveJob;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/KeepAliveJob;->startingJob:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    const-string v1, "finish queued keep-alive job"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lorg/telegram/messenger/KeepAliveJob;->startingJob:Z

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$startJob$0()V
    .locals 4

    sget-boolean v0, Lorg/telegram/messenger/KeepAliveJob;->startingJob:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/KeepAliveJob;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "starting keep-alive job"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lorg/telegram/messenger/KeepAliveJob;->sync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lorg/telegram/messenger/KeepAliveJob;->startingJob:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v1, Lorg/telegram/messenger/KeepAliveJob;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/messenger/support/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static startJob()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/KeepAliveJob$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/messenger/KeepAliveJob$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 3

    sget-object p1, Lorg/telegram/messenger/KeepAliveJob;->sync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/KeepAliveJob;->startingJob:Z

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/KeepAliveJob;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    const-string p1, "started keep-alive job"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v0, Lorg/telegram/messenger/KeepAliveJob;->finishJobByTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :try_start_1
    sget-object p1, Lorg/telegram/messenger/KeepAliveJob;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v0, Lorg/telegram/messenger/KeepAliveJob;->finishJobByTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lorg/telegram/messenger/KeepAliveJob;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 p1, 0x0

    :try_start_2
    sput-object p1, Lorg/telegram/messenger/KeepAliveJob;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "ended keep-alive job"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :goto_0
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
