.class public Lorg/telegram/messenger/ContactsSyncAdapterService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;
    }
.end annotation


# static fields
.field private static sSyncAdapter:Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/ContactsSyncAdapterService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    return-void
.end method

.method private getSyncAdapter()Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/ContactsSyncAdapterService;->sSyncAdapter:Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/messenger/ContactsSyncAdapterService;->sSyncAdapter:Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ContactsSyncAdapterService;->sSyncAdapter:Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;

    return-object v0
.end method

.method private static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "performSync: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsSyncAdapterService;->getSyncAdapter()Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
