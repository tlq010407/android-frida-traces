.class public Lorg/telegram/DispatchQueuePriority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/DispatchQueuePriority$PriorityRunnable;
    }
.end annotation


# instance fields
.field private volatile pauseLatch:Ljava/util/concurrent/CountDownLatch;

.field threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/telegram/DispatchQueuePriority$1;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Lorg/telegram/DispatchQueuePriority$2;

    invoke-direct {v0, p0}, Lorg/telegram/DispatchQueuePriority$2;-><init>(Lorg/telegram/DispatchQueuePriority;)V

    const/16 v1, 0xa

    invoke-direct {v7, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    const/4 v2, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/DispatchQueuePriority$1;-><init>(Lorg/telegram/DispatchQueuePriority;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/DispatchQueuePriority;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lorg/telegram/DispatchQueuePriority;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/DispatchQueuePriority;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    new-instance v0, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;-><init>(ILjava/lang/Runnable;Lorg/telegram/DispatchQueuePriority$1;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/DispatchQueuePriority;->pauseLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method
