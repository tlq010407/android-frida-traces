.class public Lorg/telegram/messenger/AccountInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/AccountInstance;


# instance fields
.field private currentAccount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/messenger/AccountInstance;

    sput-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/messenger/AccountInstance;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/AccountInstance;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AccountInstance;->Instance:[Lorg/telegram/messenger/AccountInstance;

    new-instance v2, Lorg/telegram/messenger/AccountInstance;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/AccountInstance;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getColorPalette()Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method public getContactsController()Lorg/telegram/messenger/ContactsController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    return v0
.end method

.method public getDownloadController()Lorg/telegram/messenger/DownloadController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method public getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFileRefController()Lorg/telegram/messenger/FileRefController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileRefController;->getInstance(I)Lorg/telegram/messenger/FileRefController;

    move-result-object v0

    return-object v0
.end method

.method public getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    return-object v0
.end method

.method public getMemberRequestsController()Lorg/telegram/messenger/MemberRequestsController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MemberRequestsController;->getInstance(I)Lorg/telegram/messenger/MemberRequestsController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsSettings()Landroid/content/SharedPreferences;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    return-object v0
.end method

.method public getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method public getStatsController()Lorg/telegram/messenger/StatsController;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/AccountInstance;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method
