.class public Lorg/telegram/messenger/voip/VoIPPreNotificationService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;
    }
.end annotation


# static fields
.field public static currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

.field public static pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

.field public static pendingVoIP:Landroid/content/Intent;

.field private static ringtonePlayer:Landroid/media/MediaPlayer;

.field private static final sync:Ljava/lang/Object;

.field private static vibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$-xd9f9h0l8PWlBVsXRSKf-IBo_k(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->lambda$decline$4(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8xuOUE_SZMGh3Mddxb6Oo8iQDH4(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->lambda$startRinging$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FKGlbdAziKn85Rug4hrUyX7sDaA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->lambda$acknowledge$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDZeK9o170qagGUvU23zy7BTSdM(Landroid/content/Intent;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Landroid/content/Context;IJZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->lambda$show$1(Landroid/content/Intent;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Landroid/content/Context;IJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nK1-Z-LTIlrG_zCIeNBBwOPP7xo(Landroid/content/Context;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->lambda$acknowledge$3(Landroid/content/Context;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acknowledge(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$PhoneCall;Ljava/lang/Runnable;)V
    .locals 4

    instance-of v0, p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Call "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " was discarded before the voip pre notification started, stopping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_0
    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    sget-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;->destroy()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2724

    invoke-static {v0}, Lorg/telegram/messenger/XiaomiUtilities;->isCustomPermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_3

    const-string p0, "MIUI: no permission to show when locked but the screen is locked. \u00af\\_(\u30c4)_/\u00af"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3
    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    sget-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;->destroy()V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$receivedCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$receivedCall;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    iget-wide v2, p2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p3}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 p0, 0x2

    invoke-virtual {p1, v0, p2, p0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static answer(Landroid/content/Context;)V
    .locals 4

    const-string v0, "VoIPPreNotification.answer()"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    if-nez v0, :cond_0

    const-string p0, "VoIPPreNotification.answer(): pending intent is not found"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v3, "account"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    const-string v3, "openFragment"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.CAMERA"

    invoke-static {v0}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_3

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/huawei/location/EnableGroundTaskCall$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    :goto_1
    invoke-static {p0, v2}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V

    return-void

    :cond_4
    :goto_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    const-string v0, "Error starting permission activity"

    invoke-static {v0, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static decline(Landroid/content/Context;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoIPPreNotification.decline("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    if-eqz v0, :cond_4

    sget-object v2, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$discardCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$discardCall;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    sget-object v3, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->duration:I

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->connection_id:J

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    :goto_0
    iput-object p1, v1, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discardCall "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v4, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p1, v1, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    invoke-static {p0, v2}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V

    return-void

    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): pending intent or call is not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static dismiss(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "VoIPPreNotification.dismiss()"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    sput-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;->destroy()V

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    if-nez p1, :cond_1

    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iput-boolean p0, v0, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getState()Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    return-object v0
.end method

.method public static isVideo()Z
    .locals 3

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static synthetic lambda$acknowledge$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(VoIPPreNotification) receivedCall response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error on receivedCall: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    sput-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    sget-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;->destroy()V

    :cond_2
    const/4 p0, 0x0

    invoke-static {p2, p0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static synthetic lambda$acknowledge$3(Landroid/content/Context;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3, p0, p1}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$decline$4(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(VoIPPreNotification) error on phone.discardCall: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_1
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(VoIPPreNotification) phone.discardCall "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$show$1(Landroid/content/Intent;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Landroid/content/Context;IJZ)V
    .locals 7

    sput-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    sput-object p1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    const-string p0, "notification"

    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    move-object v0, p2

    move v1, p3

    move-wide v2, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->makeNotification(Landroid/content/Context;IJJZ)Landroid/app/Notification;

    move-result-object p1

    const/16 p6, 0xcb

    invoke-virtual {p0, p6, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p2, p3, p4, p5}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->startRinging(Landroid/content/Context;IJ)V

    return-void
.end method

.method private static synthetic lambda$startRinging$0(Landroid/media/MediaPlayer;)V
    .locals 0

    :try_start_0
    sget-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static makeNotification(Landroid/content/Context;IJJZ)Landroid/app/Notification;
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-ge v0, v4, :cond_0

    return-object v5

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    const-class v7, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "voip"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p6, :cond_1

    sget v9, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    goto :goto_0

    :cond_1
    sget v9, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    :goto_0
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v9, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v9, 0x0

    const/high16 v10, 0x12000000

    invoke-static {v1, v9, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v12, "calls_notification_channel"

    invoke-interface {v0, v12, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "incoming_calls2"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "incoming_calls3"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "incoming_calls4"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v14

    const/4 v10, 0x4

    if-eqz v14, :cond_7

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/NotificationChannel;)I

    move-result v9

    if-lt v9, v10, :cond_5

    invoke-static {v14}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/NotificationChannel;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v9, :cond_6

    const-string v9, "User messed up the notification channel; deleting it and creating a proper one"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    const/4 v0, 0x1

    :goto_2
    const/4 v9, 0x2

    if-eqz v0, :cond_8

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline15;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v12, Landroid/app/NotificationChannel;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v16, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSetting:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v14, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    :try_start_0
    invoke-static {v12, v5, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v0

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSettingDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v12, v9}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    invoke-static {v12, v9}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    const/4 v9, 0x1

    invoke-static {v12, v9}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    :try_start_1
    invoke-static {v6, v12}, Lcom/google/android/gms/cast/framework/media/internal/zzo$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v5

    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/huawei/hms/push/o$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".DECLINE_CALL"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "call_id"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget v9, Lorg/telegram/messenger/R$string;->VoipDeclineCall:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    const/16 v13, 0x18

    if-lt v10, v13, :cond_9

    if-ge v10, v12, :cond_9

    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const v15, -0xbbcca

    invoke-direct {v9, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    const/4 v12, 0x0

    invoke-virtual {v14, v9, v12, v15, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    const/high16 v9, 0x12000000

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    :goto_6
    invoke-static {v1, v12, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".ANSWER_CALL"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v9, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget v2, Lorg/telegram/messenger/R$string;->VoipAnswerCall:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-lt v10, v13, :cond_a

    const/16 v3, 0x1f

    if-ge v10, v3, :cond_a

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xff5600

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "voip_answer"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x12000000

    invoke-static {v1, v9, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/16 v3, 0x15

    if-lt v10, v3, :cond_b

    const v3, -0xd35a20

    invoke-static {v11, v3}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    new-array v3, v9, [J

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    const-string v3, "call"

    invoke-static {v11, v3}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/high16 v3, 0x2000000

    invoke-static {v1, v9, v8, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v11, v3, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    if-eqz v4, :cond_b

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_b
    new-instance v3, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".HIDE_CALL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v6, 0xa000000

    const/4 v7, 0x0

    invoke-static {v5, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move/from16 v3, p1

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v3, "___"

    :cond_c
    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    invoke-static {v4, v3}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Person$Builder;Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/Person$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/Person$Builder;)Landroid/app/Person;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline7;->m(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static open(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v3, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v4, "account"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    const-string v3, "openFragment"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    const-string v3, "accept"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/huawei/location/EnableGroundTaskCall$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    invoke-static {p0, v1}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V

    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static show(Landroid/content/Context;Landroid/content/Intent;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V
    .locals 10

    const-string v0, "VoIPPreNotification.show()"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iget-wide v3, p2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-static {p0, v0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V

    sput-object p1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingVoIP:Landroid/content/Intent;

    sput-object p2, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->pendingCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iget-boolean v9, p2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    new-instance v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    invoke-direct {v1, v0, v7, v8, p2}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;-><init>(IJLorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V

    sput-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->currentState:Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move v6, v0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Landroid/content/Context;IJZ)V

    invoke-static {p0, v0, p2, v1}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->acknowledge(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$PhoneCall;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->dismiss(Landroid/content/Context;Z)V

    const-string p0, "VoIPPreNotification.show(): call or intent is null"

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static startRinging(Landroid/content/Context;IJ)V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v3, :cond_e

    sget-object v3, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    sget-object v3, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->sync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v7, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_2

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_2
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v7, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    new-instance v8, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lorg/telegram/messenger/voip/VoIPPreNotificationService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget-object v7, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    if-eqz v6, :cond_3

    sget-object v6, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    :cond_3
    sget-object v6, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ringtone_path_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_6

    :cond_4
    const-string v7, "CallsRingtonePath"

    :goto_2
    invoke-interface {p1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    :goto_3
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    goto :goto_4

    :cond_5
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start ringtone with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    sget-object v8, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v7, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_2
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    sget-object v7, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V

    sput-object v6, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    :cond_7
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calls_vibrate_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_8
    const-string p2, "vibrate_calls"

    :goto_8
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, v1, :cond_9

    if-eq p1, p2, :cond_9

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    if-eq p3, v5, :cond_a

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    if-eq p3, v1, :cond_a

    :cond_9
    if-ne p1, p2, :cond_d

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    if-ne p2, v5, :cond_d

    :cond_a
    const-string p2, "vibrator"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    sput-object p0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->vibrator:Landroid/os/Vibrator;

    if-ne p1, v5, :cond_b

    const-wide/16 p1, 0x15e

    goto :goto_9

    :cond_b
    if-ne p1, v0, :cond_c

    const-wide/16 p1, 0x578

    goto :goto_9

    :cond_c
    const-wide/16 p1, 0x2bc

    :goto_9
    new-array p3, v0, [J

    const-wide/16 v6, 0x0

    aput-wide v6, p3, v4

    aput-wide p1, p3, v5

    const-wide/16 p1, 0x1f4

    aput-wide p1, p3, v1

    invoke-virtual {p0, p3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_d
    monitor-exit v3

    goto :goto_b

    :goto_a
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_e
    :goto_b
    return-void
.end method

.method public static stopRinging()V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    sput-object v2, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->ringtonePlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    sput-object v2, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->vibrator:Landroid/os/Vibrator;

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
