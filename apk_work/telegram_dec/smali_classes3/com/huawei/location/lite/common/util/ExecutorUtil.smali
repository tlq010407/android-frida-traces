.class public Lcom/huawei/location/lite/common/util/ExecutorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/util/ExecutorUtil$NamedThreadFactory;,
        Lcom/huawei/location/lite/common/util/ExecutorUtil$ExecutorsHolder;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/huawei/location/lite/common/util/ExecutorUtil$NamedThreadFactory;

    const-string v0, "Location-Task"

    invoke-direct {v7, v0}, Lcom/huawei/location/lite/common/util/ExecutorUtil$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    const-wide/16 v3, 0x3c

    const/4 v1, 0x5

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/huawei/location/lite/common/util/ExecutorUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/huawei/location/lite/common/util/ExecutorUtil$NamedThreadFactory;

    const-string v2, "Loc-Task-Delay"

    invoke-direct {v1, v2}, Lcom/huawei/location/lite/common/util/ExecutorUtil$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/util/ExecutorUtil;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/lite/common/util/ExecutorUtil$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/lite/common/util/ExecutorUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/location/lite/common/util/ExecutorUtil;
    .locals 1

    invoke-static {}, Lcom/huawei/location/lite/common/util/ExecutorUtil$ExecutorsHolder;->access$000()Lcom/huawei/location/lite/common/util/ExecutorUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "ExecutorUtil fatal error"

    const/4 v0, 0x1

    const-string v1, "ExecutorUtil"

    invoke-static {v1, p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/util/ExecutorUtil;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
