.class public abstract Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private gnssReceiver:Landroid/content/BroadcastReceiver;

.field private isFirstReceive:Z

.field private networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private networkReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AvailabilityObserver"

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->isFirstReceive:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$1;

    invoke-direct {v2, p0}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$1;-><init>(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;)V

    iput-object v2, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->gnssReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->gnssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "register gnss receiver "

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->isFirstReceive:Z

    return p0
.end method

.method static synthetic access$002(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->isFirstReceive:Z

    return p1
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvailabilityObserver"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract notifyListeners()V
.end method

.method public registerNetworkObserve()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network observe cnt incrementAndGet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvailabilityObserver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;

    invoke-direct {v2, p0}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver$2;-><init>(Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;)V

    iput-object v2, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "register network receiver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterAllObserve()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "AvailabilityObserver"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister network receiver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->gnssReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->gnssReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "unregister gnss receiver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unRegisterNetworkObserve()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network observe cnt decrementAndGet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvailabilityObserver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->isFirstReceive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/GnssAndNetReceiver;->networkCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "unregister network receiver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
