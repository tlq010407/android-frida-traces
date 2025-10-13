.class public Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static volatile callbackList:Ljava/util/List;

.field private static currentReportLatencyNs:J


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private screenOffHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->callbackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isScreenOn()Z
    .locals 2

    const-string v0, "ScreenStatusBroadcastReceiver"

    const-string v1, "isScreenOn"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onScreenOff()V
    .locals 5

    const-wide v0, 0x2e90edd000L

    invoke-direct {p0, v0, v1}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->setCurrentReportLatencyNs(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenOff,report latency is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->currentReportLatencyNs:J

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenStatusBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->callbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exec callback onScreenOff exception"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private onScreenOn()V
    .locals 5

    const-wide v0, 0x12a05f200L

    invoke-direct {p0, v0, v1}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->setCurrentReportLatencyNs(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenOn,report latency is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->currentReportLatencyNs:J

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenStatusBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->callbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "exec callback onScreenOn exception"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private postDelayMsg()V
    .locals 5

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->handlerThread:Landroid/os/HandlerThread;

    const/16 v1, 0x3ed

    const-string v2, "ScreenStatusBroadcastReceiver"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "screen off remove Messages"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "postDelayMsg new handlerThread"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "Location_Lite_Broadcast"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver$1;

    iget-object v3, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver$1;-><init>(Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    :goto_1
    iget-object v0, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEmptyMessageDelayed 5 seconds for screenOff. the result is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setCurrentReportLatencyNs(J)V
    .locals 0

    sput-wide p1, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->currentReportLatencyNs:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance p1, Lcom/huawei/secure/android/common/intent/SafeIntent;

    invoke-direct {p1, p2}, Lcom/huawei/secure/android/common/intent/SafeIntent;-><init>(Landroid/content/Intent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/secure/android/common/intent/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenStatusBroadcastReceiver"

    invoke-static {v0, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/secure/android/common/intent/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->onScreenOff()V

    invoke-direct {p0}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->postDelayMsg()V

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/secure/android/common/intent/SafeIntent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->onScreenOn()V

    iget-object p1, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 p2, 0x3ed

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "screen on remove Messages"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->screenOffHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
