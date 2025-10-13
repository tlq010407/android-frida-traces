.class public abstract Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x21

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$2;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {p1, v1, v0, v2}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    :catch_0
    return-object p1
.end method

.method public warmup(J)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
