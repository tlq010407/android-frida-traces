.class public Lorg/telegram/messenger/AppStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$7gvKcWEaIWxxezhCcVhOtGEPMng()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/AppStartReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReceive$0()V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/messenger/AppStartReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/messenger/AppStartReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
