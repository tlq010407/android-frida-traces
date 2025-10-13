.class public Lorg/telegram/messenger/voip/VoIPGroupNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPGroupNotification$State;
    }
.end annotation


# static fields
.field public static currentCallId:J

.field public static currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

.field private static ignoreCalls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static missRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$6xjOsDUB65Zk6_tWg6lepZcnZis(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->lambda$decline$3(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GeUrYuer4Jev4M0zkXmaQaIUu6M(Lorg/telegram/tgnet/TLObject;IJJIZLandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->lambda$request$0(Lorg/telegram/tgnet/TLObject;IJJIZLandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l9oGtBJzWocEzM9fCtddt9UoyiE(IJJIZLandroid/content/Context;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->lambda$request$1(IJJIZLandroid/content/Context;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tW7okBD1WxZ70P4qwGA8VQbrC6M(Landroid/content/Context;II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->lambda$showNotification$2(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answer(Landroid/content/Context;II)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_2

    iget v1, v0, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->msg_id:I

    if-eq v1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->access$000(Lorg/telegram/messenger/voip/VoIPGroupNotification$State;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->isCallingVideo()Z

    move-result v1

    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentCallId:J

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;-><init>()V

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->msg_id:I

    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2, p1, p0, v1, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static decline(Landroid/content/Context;II)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentCallId:J

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    new-instance p0, Lorg/telegram/tgnet/tl/TL_phone$declineConferenceCallInvite;

    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_phone$declineConferenceCallInvite;-><init>()V

    iput p2, p0, Lorg/telegram/tgnet/tl/TL_phone$declineConferenceCallInvite;->msg_id:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p2, p0, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->finish()V

    :cond_1
    return-void
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->access$100(Lorg/telegram/messenger/voip/VoIPGroupNotification$State;)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    iget v1, v1, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->msg_id:I

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hide(Landroid/content/Context;II)V

    return-void
.end method

.method public static hide(Landroid/content/Context;II)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->access$100(Lorg/telegram/messenger/voip/VoIPGroupNotification$State;)I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    iget p1, p1, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->msg_id:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    sput-object p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    const-wide/16 p1, 0x0

    sput-wide p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentCallId:J

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0xcb

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static hideByCallId(Landroid/content/Context;IJ)V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->access$100(Lorg/telegram/messenger/voip/VoIPGroupNotification$State;)I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    iget-wide v0, p1, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->call_id:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    sput-object p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    const-wide/16 p1, 0x0

    sput-wide p1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentCallId:J

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0xcb

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$decline$3(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$request$0(Lorg/telegram/tgnet/TLObject;IJJIZLandroid/content/Context;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    new-instance v1, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    iget-object v12, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v13, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    move-object v4, v1

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v13}, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;-><init>(IJJIZLorg/telegram/tgnet/TLRPC$GroupCall;Ljava/util/ArrayList;)V

    sput-object v1, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    move-object/from16 v0, p8

    move v1, p1

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move-wide/from16 v5, p2

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->showNotification(Landroid/content/Context;IJIJLjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->ignoreCalls:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->ignoreCalls:Ljava/util/HashSet;

    :cond_1
    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->ignoreCalls:Ljava/util/HashSet;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$request$1(IJJIZLandroid/content/Context;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    new-instance v11, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda8;

    move-object v0, v11

    move-object/from16 v1, p9

    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/tgnet/TLObject;IJJIZLandroid/content/Context;Ljava/lang/String;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showNotification$2(Landroid/content/Context;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->decline(Landroid/content/Context;II)V

    return-void
.end method

.method public static open(Landroid/content/Context;II)V
    .locals 1

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->msg_id:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "notification"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p2, 0xcb

    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->stopRinging()V

    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0, p1}, Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static request(Landroid/content/Context;IJLjava/lang/String;JIZ)V
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    sget-wide v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentCallId:J

    cmp-long v2, v0, p5

    if-eqz v2, :cond_5

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/messenger/voip/VoIPGroupNotification$State;->call_id:J

    cmp-long v2, v0, p5

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hide(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->callRequestsDisabled:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->ignoreCalls:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    sput-wide p5, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentCallId:J

    new-instance v10, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {v10}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;-><init>()V

    iput-object v0, v10, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move/from16 v6, p7

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->msg_id:I

    const/4 v0, 0x3

    iput v0, v10, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda10;

    move-object v0, v12

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p5

    move/from16 v7, p8

    move-object v8, p0

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda10;-><init>(IJJIZLandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v10, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private static showNotification(Landroid/content/Context;IJIJLjava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-ge v0, v8, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/Intent;

    const-class v9, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "voip"

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v10, "group_call_invite_msg_id"

    invoke-virtual {v0, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v11, "currentAccount"

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v13, Lorg/telegram/messenger/R$string;->VoipGroupInCallBranding:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v13, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v13, 0x0

    const/high16 v14, 0x12000000

    invoke-static {v1, v13, v12, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v14, "calls_notification_channel"

    invoke-interface {v0, v14, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "incoming_calls2"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "incoming_calls3"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline14;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "incoming_calls4"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    move-object/from16 v16, v12

    if-eqz v7, :cond_6

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/NotificationChannel;)I

    move-result v12

    move-object/from16 v17, v9

    const/4 v9, 0x4

    if-lt v12, v9, :cond_4

    invoke-static {v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/NotificationChannel;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_0
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_5

    const-string v7, "User messed up the notification channel; deleting it and creating a proper one"

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v17, v9

    goto :goto_1

    :goto_2
    const/4 v7, 0x2

    if-eqz v0, :cond_7

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v9, 0x4

    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/audio/AudioAttributes$AudioAttributesV21$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$$ExternalSyntheticApiModelOutline15;->m(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v9, Landroid/app/NotificationChannel;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v14, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSetting:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v7, 0x4

    invoke-direct {v9, v12, v14, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v9, v7, v0}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSettingDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v9, v7}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    invoke-static {v9, v7}, Lcom/google/android/search/verification/client/SearchActionVerificationClientService$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    const/4 v7, 0x1

    invoke-static {v9, v7}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationChannel;Z)V

    :try_start_1
    invoke-static {v8, v9}, Lcom/google/android/gms/cast/framework/media/internal/zzo$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v7, v0

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/huawei/hms/push/o$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".DECLINE_CALL"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "call_id"

    invoke-virtual {v0, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v9, Lorg/telegram/messenger/R$string;->VoipDeclineCall:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    const/16 v14, 0x1f

    if-lt v12, v13, :cond_8

    if-ge v12, v14, :cond_8

    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const v13, -0xbbcca

    invoke-direct {v9, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-virtual {v14, v9, v8, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    const/high16 v9, 0x12000000

    goto :goto_6

    :cond_8
    move-object/from16 v18, v8

    const/4 v8, 0x0

    goto :goto_5

    :goto_6
    invoke-static {v1, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".ANSWER_CALL"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v3, Lorg/telegram/messenger/R$string;->VoipAnswerCall:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x18

    if-lt v12, v4, :cond_9

    const/16 v4, 0x1f

    if-ge v12, v4, :cond_9

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v7, -0xff5600

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v4, v17

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "voip_answer"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x12000000

    invoke-static {v1, v8, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v15, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/16 v4, 0x15

    if-lt v12, v4, :cond_a

    const v4, -0xd35a20

    invoke-static {v15, v4}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    new-array v4, v8, [J

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    const-string v4, "call"

    invoke-static {v15, v4}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/high16 v4, 0x2000000

    move-object/from16 v7, v16

    invoke-static {v1, v8, v7, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v15, v4, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    :cond_a
    new-instance v4, Landroid/content/Intent;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v4, v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".HIDE_CALL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v4, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v7, 0xa000000

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v6, p5

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    move-object/from16 v4, p7

    goto :goto_8

    :cond_b
    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v4, "___"

    :cond_c
    const/16 v9, 0x1f

    if-lt v12, v9, :cond_d

    new-instance v9, Landroid/app/Person$Builder;

    invoke-direct {v9}, Landroid/app/Person$Builder;-><init>()V

    invoke-static {v9, v4}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Person$Builder;Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-static {v8}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/Person$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/Person$Builder;)Landroid/app/Person;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline7;->m(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_d
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v3, 0xcb

    move-object/from16 v4, v18

    invoke-virtual {v4, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {v1, v2, v6, v7}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->startRinging(Landroid/content/Context;IJ)V

    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    new-instance v0, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda11;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->missRunnable:Ljava/lang/Runnable;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
