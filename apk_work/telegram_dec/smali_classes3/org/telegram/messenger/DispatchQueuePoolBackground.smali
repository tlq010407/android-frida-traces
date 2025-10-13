.class public Lorg/telegram/messenger/DispatchQueuePoolBackground;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final THREAD_PREFIX:Ljava/lang/String; = "DispatchQueuePoolThreadSafety_"

.field private static backgroundQueue:Lorg/telegram/messenger/DispatchQueuePoolBackground;

.field private static final finishCollectUpdateRunnable:Ljava/lang/Runnable;

.field private static final freeCollections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field static updateTaskCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private busyQueues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/DispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field private busyQueuesMap:Landroid/util/SparseIntArray;

.field private cleanupRunnable:Ljava/lang/Runnable;

.field private cleanupScheduled:Z

.field private createdCount:I

.field private guid:I

.field private maxCount:I

.field private queues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/DispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field private totalTasksCount:I


# direct methods
.method public static synthetic $r8$lambda$NgWWbhAd8Pbq6aNX4bpN7zTzzGs(Lorg/telegram/messenger/DispatchQueuePoolBackground;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->lambda$execute$1(Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PzeFzOlDbRlWJN_Hd37KhUYeDk8(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->lambda$finishCollectUpdateRunnables$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdj_O_LqsCSAkhlAhxny-At8aQU(Lorg/telegram/messenger/DispatchQueuePoolBackground;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->lambda$execute$0(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-lCmqjv06XbZi7A_RYb7NkHJQA(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->lambda$finishCollectUpdateRunnables$3(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->freeCollections:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/DispatchQueuePoolBackground$2;

    invoke-direct {v0}, Lorg/telegram/messenger/DispatchQueuePoolBackground$2;-><init>()V

    sput-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->finishCollectUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->queues:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueuesMap:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/DispatchQueuePoolBackground$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/DispatchQueuePoolBackground$1;-><init>(Lorg/telegram/messenger/DispatchQueuePoolBackground;)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->cleanupRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->maxCount:I

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->guid:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/DispatchQueuePoolBackground;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->queues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$110(Lorg/telegram/messenger/DispatchQueuePoolBackground;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->createdCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->createdCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/DispatchQueuePoolBackground;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/DispatchQueuePoolBackground;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->cleanupScheduled:Z

    return p1
.end method

.method static synthetic access$400()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->finishCollectUpdateRunnables()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "wrong thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->freeCollections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    sput-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :goto_1
    if-nez p1, :cond_3

    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->finishCollectUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    sget-object p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->finishCollectUpdateRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private execute(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->totalTasksCount:I

    div-int/lit8 v3, v3, 0x2

    iget-object v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v3, v6, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->queues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->createdCount:I

    iget v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->maxCount:I

    if-lt v3, v6, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DispatchQueue;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->queues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DispatchQueuePoolThreadSafety_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->guid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    iget v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->createdCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->createdCount:I

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->queues:Ljava/util/ArrayList;

    goto :goto_1

    :goto_2
    iget-boolean v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->cleanupScheduled:Z

    if-nez v6, :cond_4

    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v7, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->cleanupRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    iput-boolean v5, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->cleanupScheduled:Z

    :cond_4
    iget v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->totalTasksCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->totalTasksCount:I

    iget-object v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v7, v3, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v8, v3, Lorg/telegram/messenger/DispatchQueue;->index:I

    add-int/2addr v6, v5

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Thread;->getPriority()I

    move-result v5

    if-eq v5, v4, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    :cond_6
    :goto_3
    new-instance v4, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/DispatchQueuePoolBackground;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static finishCollectUpdateRunnables()V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    sput-object v1, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/DispatchQueuePoolBackground;->backgroundQueue:Lorg/telegram/messenger/DispatchQueuePoolBackground;

    if-nez v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/DispatchQueuePoolBackground;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueuePoolBackground;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/DispatchQueuePoolBackground;->backgroundQueue:Lorg/telegram/messenger/DispatchQueuePoolBackground;

    :cond_1
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    sput-object v1, Lorg/telegram/messenger/DispatchQueuePoolBackground;->updateTaskCollection:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic lambda$execute$0(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->totalTasksCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->totalTasksCount:I

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->queues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget p1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$execute$1(Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/DispatchQueuePoolBackground;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$finishCollectUpdateRunnables$2(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->freeCollections:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$finishCollectUpdateRunnables$3(Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/DispatchQueuePoolBackground;->backgroundQueue:Lorg/telegram/messenger/DispatchQueuePoolBackground;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/DispatchQueuePoolBackground$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
