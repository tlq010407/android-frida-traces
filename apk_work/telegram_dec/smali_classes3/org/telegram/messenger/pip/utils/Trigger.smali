.class public Lorg/telegram/messenger/pip/utils/Trigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/pip/utils/Trigger$Callback;
    }
.end annotation


# instance fields
.field private final action:Lorg/telegram/messenger/pip/utils/Trigger$Callback;

.field private final handler:Landroid/os/Handler;

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field private final triggered:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$upuZt-s2l4k6g0te48gG687wSSQ(Lorg/telegram/messenger/pip/utils/Trigger;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/utils/Trigger;->lambda$run$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wb6urHkQ6RJrakQiFLm9bhLhPPg(Lorg/telegram/messenger/pip/utils/Trigger;Lorg/telegram/messenger/pip/utils/Trigger$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/utils/Trigger;->lambda$new$0(Lorg/telegram/messenger/pip/utils/Trigger$Callback;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/telegram/messenger/pip/utils/Trigger;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/telegram/messenger/pip/utils/Trigger;->action:Lorg/telegram/messenger/pip/utils/Trigger$Callback;

    new-instance v0, Lorg/telegram/messenger/pip/utils/Trigger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/pip/utils/Trigger$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/pip/utils/Trigger;Lorg/telegram/messenger/pip/utils/Trigger$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_0

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/pip/utils/Trigger$Callback;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Lorg/telegram/messenger/pip/utils/Trigger$Callback;->run(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->action:Lorg/telegram/messenger/pip/utils/Trigger$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/pip/utils/Trigger$Callback;->run(Z)V

    return-void
.end method

.method public static run(Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)Lorg/telegram/messenger/pip/utils/Trigger;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/messenger/pip/utils/Trigger;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/pip/utils/Trigger;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/pip/utils/Trigger$Callback;J)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/pip/utils/Trigger;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/pip/utils/Trigger;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->action:Lorg/telegram/messenger/pip/utils/Trigger$Callback;

    invoke-interface {v0, v2}, Lorg/telegram/messenger/pip/utils/Trigger$Callback;->run(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/utils/Trigger;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/pip/utils/Trigger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/pip/utils/Trigger$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/pip/utils/Trigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
