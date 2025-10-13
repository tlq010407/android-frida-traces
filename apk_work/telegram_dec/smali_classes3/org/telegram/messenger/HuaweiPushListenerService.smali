.class public Lorg/telegram/messenger/HuaweiPushListenerService;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$TgQ1w8Iit_lZw8ofj0l9fWot-AM(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/HuaweiPushListenerService;->lambda$onMessageReceived$0(Lcom/huawei/hms/push/RemoteMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lD8STA5yMoRqreMBh7-RmGS0rT4(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/HuaweiPushListenerService;->lambda$onNewToken$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onMessageReceived$0(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 5

    invoke-virtual {p0}, Lcom/huawei/hms/push/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/hms/push/RemoteMessage;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/hms/push/RemoteMessage;->getSentTime()J

    move-result-wide v2

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HCM received data: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/16 p0, 0xd

    invoke-static {p0, v1, v2, v3}, Lorg/telegram/messenger/PushListenerController;->processRemoteMessage(ILjava/lang/String;J)V

    return-void
.end method

.method private static synthetic lambda$onNewToken$1(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed HCM token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    const/16 v0, 0xd

    invoke-static {v0, p0}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda1;-><init>(Lcom/huawei/hms/push/RemoteMessage;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/HuaweiPushListenerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
