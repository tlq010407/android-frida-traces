.class public abstract Lcom/huawei/hmf/tasks/Tasks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static IMPL:Lcom/huawei/hmf/tasks/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hmf/tasks/a/j;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/a/j;-><init>()V

    sput-object v0, Lcom/huawei/hmf/tasks/Tasks;->IMPL:Lcom/huawei/hmf/tasks/a/j;

    return-void
.end method

.method public static await(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;
    .locals 2

    const-string v0, "await must not be called on the UI thread"

    invoke-static {v0}, Lcom/huawei/hmf/tasks/a/j;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hmf/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/huawei/hmf/tasks/a/j;->a(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/huawei/hmf/tasks/a/j$a;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/a/j$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    iget-object v0, v0, Lcom/huawei/hmf/tasks/a/j$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {p0}, Lcom/huawei/hmf/tasks/a/j;->a(Lcom/huawei/hmf/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lcom/huawei/hmf/tasks/Task;
    .locals 2

    sget-object v0, Lcom/huawei/hmf/tasks/Tasks;->IMPL:Lcom/huawei/hmf/tasks/a/j;

    invoke-static {}, Lcom/huawei/hmf/tasks/TaskExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/huawei/hmf/tasks/a/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    return-object p0
.end method
