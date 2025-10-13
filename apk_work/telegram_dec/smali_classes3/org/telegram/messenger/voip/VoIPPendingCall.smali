.class public final Lorg/telegram/messenger/voip/VoIPPendingCall;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private final activity:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private notificationCenter:Lorg/telegram/messenger/NotificationCenter;

.field private final observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

.field private final releaseRunnable:Ljava/lang/Runnable;

.field private released:Z

.field private final userId:J

.field private final video:Z


# direct methods
.method public static synthetic $r8$lambda$7iC80EyJUGa9yfhAmFawsjOqF_s(Lorg/telegram/messenger/voip/VoIPPendingCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPPendingCall;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$edP4Tyseyyaa_Rhro5S-I9dhuHU(Lorg/telegram/messenger/voip/VoIPPendingCall;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPPendingCall;->lambda$new$0(II[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;JZJLorg/telegram/messenger/AccountInstance;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/voip/VoIPPendingCall$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPPendingCall$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/VoIPPendingCall;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPPendingCall$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPPendingCall$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/voip/VoIPPendingCall;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->releaseRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->activity:Landroid/app/Activity;

    iput-wide p2, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->userId:J

    iput-boolean p4, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->video:Z

    iput-object p7, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPPendingCall;->onConnectionStateUpdated(Z)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isAirplaneMode()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isConnected(Lorg/telegram/messenger/AccountInstance;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$new$0(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPPendingCall;->onConnectionStateUpdated(Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPPendingCall;->onConnectionStateUpdated(Z)Z

    return-void
.end method

.method private onConnectionStateUpdated(Z)Z
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->released:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPPendingCall;->isConnected(Lorg/telegram/messenger/AccountInstance;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPPendingCall;->isAirplaneMode()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v0, 0x1

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v6

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->video:Z

    if-eqz v6, :cond_1

    iget-boolean p1, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPPendingCall;->isAirplaneMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->video:Z

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPPendingCall;->release()V

    return v0

    :cond_4
    return v1
.end method

.method public static startOrSchedule(Landroid/app/Activity;JZLorg/telegram/messenger/AccountInstance;)Lorg/telegram/messenger/voip/VoIPPendingCall;
    .locals 9

    new-instance v8, Lorg/telegram/messenger/voip/VoIPPendingCall;

    const-wide/16 v5, 0x3e8

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPPendingCall;-><init>(Landroid/app/Activity;JZJLorg/telegram/messenger/AccountInstance;)V

    return-object v8
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->released:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->observer:Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->releaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPPendingCall;->released:Z

    :cond_2
    return-void
.end method
