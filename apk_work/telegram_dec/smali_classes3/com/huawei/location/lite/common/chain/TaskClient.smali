.class public Lcom/huawei/location/lite/common/chain/TaskClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/lite/common/chain/TaskClient$Builder;
    }
.end annotation


# instance fields
.field private taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

.field private tasks:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/huawei/location/lite/common/chain/TaskClient$Builder;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/huawei/location/lite/common/chain/TaskClient$Builder;->access$000(Lcom/huawei/location/lite/common/chain/TaskClient$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->tasks:Ljava/util/List;

    invoke-static {p1}, Lcom/huawei/location/lite/common/chain/TaskClient$Builder;->access$100(Lcom/huawei/location/lite/common/chain/TaskClient$Builder;)Lcom/huawei/location/lite/common/chain/TaskRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/lite/common/chain/TaskClient$Builder;Lcom/huawei/location/lite/common/chain/TaskClient$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/location/lite/common/chain/TaskClient;-><init>(Lcom/huawei/location/lite/common/chain/TaskClient$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/location/lite/common/chain/TaskClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->tasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/location/lite/common/chain/TaskClient;)Lcom/huawei/location/lite/common/chain/TaskRequest;
    .locals 0

    iget-object p0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    return-object p0
.end method

.method private enqueue()V
    .locals 5

    const-string v0, "TaskChain"

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/huawei/location/lite/common/chain/TaskClient$2;

    invoke-direct {v2, p0}, Lcom/huawei/location/lite/common/chain/TaskClient$2;-><init>(Lcom/huawei/location/lite/common/chain/TaskClient;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->getInstance()Lcom/huawei/location/lite/common/util/ExecutorUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v2, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getMaxTimeOut()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task TimeoutException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/location/lite/common/chain/TaskRequest;->setIsTimeOut(Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    new-instance v0, Lcom/huawei/location/lite/common/chain/TaskTimeOutException;

    const-string v1, "task timeout"

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/chain/TaskTimeOutException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task InterruptedException"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task ExecutionException"

    goto :goto_3

    :goto_5
    return-void
.end method

.method private execute()V
    .locals 5

    const-string v0, "TaskChain"

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/huawei/location/lite/common/chain/TaskClient$1;

    invoke-direct {v2, p0}, Lcom/huawei/location/lite/common/chain/TaskClient$1;-><init>(Lcom/huawei/location/lite/common/chain/TaskClient;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->getInstance()Lcom/huawei/location/lite/common/util/ExecutorUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/location/lite/common/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v2, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getMaxTimeOut()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/lite/common/chain/Result;

    instance-of v3, v2, Lcom/huawei/location/lite/common/chain/Result$Failure;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getTaskFinishCallBack()Lcom/huawei/location/lite/common/chain/TaskFinishCallBack;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/huawei/location/lite/common/chain/Result$Failure;

    iget-object v3, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getTaskFinishCallBack()Lcom/huawei/location/lite/common/chain/TaskFinishCallBack;

    move-result-object v3

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/chain/Result$Failure;->getOutputData()Lcom/huawei/location/lite/common/chain/Data;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/huawei/location/lite/common/chain/TaskFinishCallBack;->onFail(Lcom/huawei/location/lite/common/chain/Data;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_0
    instance-of v3, v2, Lcom/huawei/location/lite/common/chain/Result$Success;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getTaskFinishCallBack()Lcom/huawei/location/lite/common/chain/TaskFinishCallBack;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v2, Lcom/huawei/location/lite/common/chain/Result$Success;

    iget-object v3, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v3}, Lcom/huawei/location/lite/common/chain/TaskRequest;->getTaskFinishCallBack()Lcom/huawei/location/lite/common/chain/TaskFinishCallBack;

    move-result-object v3

    invoke-virtual {v2}, Lcom/huawei/location/lite/common/chain/Result$Success;->getOutputData()Lcom/huawei/location/lite/common/chain/Data;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/huawei/location/lite/common/chain/TaskFinishCallBack;->onSuccess(Lcom/huawei/location/lite/common/chain/Data;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task TimeoutException"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/location/lite/common/chain/TaskRequest;->setIsTimeOut(Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    new-instance v0, Lcom/huawei/location/lite/common/chain/TaskTimeOutException;

    const-string v1, "task timeout"

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/chain/TaskTimeOutException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task InterruptedException"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task ExecutionException"

    goto :goto_3

    :cond_2
    :goto_5
    return-void
.end method


# virtual methods
.method public runTasks()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/chain/TaskClient;->taskRequest:Lcom/huawei/location/lite/common/chain/TaskRequest;

    invoke-virtual {v0}, Lcom/huawei/location/lite/common/chain/TaskRequest;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/chain/TaskClient;->enqueue()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/huawei/location/lite/common/chain/TaskClient;->execute()V

    :goto_0
    return-void
.end method
