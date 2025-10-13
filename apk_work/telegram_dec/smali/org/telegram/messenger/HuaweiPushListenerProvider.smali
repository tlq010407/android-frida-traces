.class public Lorg/telegram/messenger/HuaweiPushListenerProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;


# static fields
.field public static final INSTANCE:Lorg/telegram/messenger/HuaweiPushListenerProvider;


# instance fields
.field private hasServices:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$nFbmZXA64eo7JUPjn5z65Hd71_Q(Lorg/telegram/messenger/HuaweiPushListenerProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/HuaweiPushListenerProvider;->lambda$onRequestPushToken$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/HuaweiPushListenerProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/HuaweiPushListenerProvider;-><init>()V

    sput-object v0, Lorg/telegram/messenger/HuaweiPushListenerProvider;->INSTANCE:Lorg/telegram/messenger/HuaweiPushListenerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRequestPushToken$0()V
    .locals 3

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/BuildVars;->HUAWEI_APP_ID:Ljava/lang/String;

    const-string v2, "HCM"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/HuaweiPushListenerProvider;->getPushType()I

    move-result v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "Failed to get regid"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const-string v0, "__HUAWEI_FAILED__"

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/messenger/HuaweiPushListenerProvider;->getPushType()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getLogTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "HMS Core"

    return-object v0
.end method

.method public getPushType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public hasServices()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiPushListenerProvider;->hasServices:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.huawei.hwid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiPushListenerProvider;->hasServices:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiPushListenerProvider;->hasServices:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiPushListenerProvider;->hasServices:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onRequestPushToken()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/HuaweiPushListenerProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/HuaweiPushListenerProvider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/HuaweiPushListenerProvider;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
