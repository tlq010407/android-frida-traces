.class public final Lorg/telegram/messenger/ContactsLoadingObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ContactsLoadingObserver$Callback;
    }
.end annotation


# instance fields
.field private final callback:Lorg/telegram/messenger/ContactsLoadingObserver$Callback;

.field private final contactsController:Lorg/telegram/messenger/ContactsController;

.field private final currentAccount:I

.field private final handler:Landroid/os/Handler;

.field private final notificationCenter:Lorg/telegram/messenger/NotificationCenter;

.field private final observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

.field private final releaseRunnable:Ljava/lang/Runnable;

.field private released:Z


# direct methods
.method public static synthetic $r8$lambda$U2XpPtohMROBuh2rWH3LHh87PCE(Lorg/telegram/messenger/ContactsLoadingObserver;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsLoadingObserver;->lambda$new$0(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dvi09qzLNkNhKkRm3_cwAFC28ck(Lorg/telegram/messenger/ContactsLoadingObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsLoadingObserver;->lambda$new$1()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/ContactsLoadingObserver$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/ContactsLoadingObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsLoadingObserver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ContactsLoadingObserver;)V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->callback:Lorg/telegram/messenger/ContactsLoadingObserver$Callback;

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->currentAccount:I

    new-instance v0, Lorg/telegram/messenger/ContactsLoadingObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsLoadingObserver$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ContactsLoadingObserver;)V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->releaseRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->contactsController:Lorg/telegram/messenger/ContactsController;

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->handler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0(II[Ljava/lang/Object;)V
    .locals 0

    sget p3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/ContactsLoadingObserver;->onContactsLoadingStateUpdated(IZ)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->currentAccount:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ContactsLoadingObserver;->onContactsLoadingStateUpdated(IZ)Z

    return-void
.end method

.method public static observe(Lorg/telegram/messenger/ContactsLoadingObserver$Callback;J)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/ContactsLoadingObserver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsLoadingObserver;-><init>(Lorg/telegram/messenger/ContactsLoadingObserver$Callback;)V

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ContactsLoadingObserver;->start(J)V

    return-void
.end method

.method private onContactsLoadingStateUpdated(IZ)Z
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->released:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->contactsController:Lorg/telegram/messenger/ContactsController;

    iget-boolean p1, p1, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsLoadingObserver;->release()V

    iget-object p2, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->callback:Lorg/telegram/messenger/ContactsLoadingObserver$Callback;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/ContactsLoadingObserver$Callback;->onResult(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->released:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->releaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->released:Z

    :cond_2
    return-void
.end method

.method public start(J)V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->currentAccount:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ContactsLoadingObserver;->onContactsLoadingStateUpdated(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsLoadingObserver;->releaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
