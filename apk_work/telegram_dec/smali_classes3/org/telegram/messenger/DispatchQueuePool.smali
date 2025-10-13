.class public Lorg/telegram/messenger/DispatchQueuePool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final busyQueues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/DispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final busyQueuesMap:Landroid/util/SparseIntArray;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private cleanupScheduled:Z

.field private createdCount:I

.field private guid:I

.field private maxCount:I

.field private final queues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/DispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field private totalTasksCount:I


# direct methods
.method public static synthetic $r8$lambda$1-vdyBqiV7YRg7ZLlylErPOC3Xg(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueuePool;->lambda$execute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AVfcEnKFCVZovzo5zJ_kKQSkRIE(Lorg/telegram/messenger/DispatchQueuePool;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueuePool;->lambda$execute$1(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8S2Y3Ru9Tj0_Kkv1xBglDent7c(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DispatchQueuePool;->lambda$execute$2(Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    new-instance v0, Lorg/telegram/messenger/DispatchQueuePool$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/DispatchQueuePool$1;-><init>(Lorg/telegram/messenger/DispatchQueuePool;)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lorg/telegram/messenger/DispatchQueuePool;->maxCount:I

    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/DispatchQueuePool;->guid:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/DispatchQueuePool;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$110(Lorg/telegram/messenger/DispatchQueuePool;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/DispatchQueuePool;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/DispatchQueuePool;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupScheduled:Z

    return p1
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueuePool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$execute$1(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget p1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$execute$2(Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    new-instance p1, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/DispatchQueuePool;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    iget v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->maxCount:I

    if-lt v0, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DispatchQueue;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DispatchQueuePool"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/telegram/messenger/DispatchQueuePool;->guid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupScheduled:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7530

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupScheduled:Z

    :cond_4
    iget v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    iget-object v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v5, v0, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v5, v0, Lorg/telegram/messenger/DispatchQueue;->index:I

    add-int/2addr v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    if-eq v2, v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_6
    :goto_2
    new-instance v1, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
