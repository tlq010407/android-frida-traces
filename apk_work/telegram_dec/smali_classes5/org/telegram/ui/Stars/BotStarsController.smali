.class public Lorg/telegram/ui/Stars/BotStarsController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;,
        Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;,
        Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/ui/Stars/BotStarsController;

.field private static final lockObjects:[Ljava/lang/Object;


# instance fields
.field public adminedBots:Ljava/util/ArrayList;

.field public adminedChannels:Ljava/util/ArrayList;

.field private final botStarsStats:Ljava/util/HashMap;

.field private final connectedBots:Ljava/util/HashMap;

.field public final currentAccount:I

.field private final lastLoadedBotStarsStats:Ljava/util/HashMap;

.field private final lastLoadedTonStats:Ljava/util/HashMap;

.field private loadingAdminedBots:Z

.field private loadingAdminedChannels:Z

.field private final suggestedBots:Ljava/util/HashMap;

.field private final tonStats:Ljava/util/HashMap;

.field private final transactions:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$2F-6I1a3kZP6dTRCIxezZ4FPDsg(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getConnectedBot$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9exmVbB06JmmiEwzJFk32ay8Hd0(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$loadAdminedBots$6(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9kF6wYt_jphyd2fYqpsZARspfxA(Lorg/telegram/ui/Stars/BotStarsController;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getConnectedBot$12(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CpAcXCQoii_sLEjZNOLXsBKBbHE(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$loadAdminedChannels$8(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdHsq8Iu5m9EPD6mu5CD8-juE8o(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getTONRevenueStats$2(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gg8WvY9k550H5gb_b3E0OkMABAE(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$loadAdminedBots$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbPi69-xXbiMIuc4szqdvonZMps(Lorg/telegram/ui/Stars/BotStarsController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getStarsRevenueStats$1(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGEjdIAq99LZVqQzwhcs4xrYkG0(Lorg/telegram/ui/Stars/BotStarsController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getTONRevenueStats$3(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_74SYN3orOOKGV-p21cGi7a1-6Q(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getConnectedBot$11(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nW9lNgRKDhZ7DNz2zftpvABxpRM(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;ILorg/telegram/tgnet/TLObject;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$loadTransactions$4(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;ILorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$q3J6_s2NaHwFlpUTn6KH4g-ph-c(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$loadTransactions$5(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wQbHBLsVnDCORSblXs6cJDL9hJ8(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$getStarsRevenueStats$0(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYbKLxwHOuOEzwU_smPi-zHhfac(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->lambda$loadAdminedChannels$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Stars/BotStarsController;

    sput-object v1, Lorg/telegram/ui/Stars/BotStarsController;->Instance:[Lorg/telegram/ui/Stars/BotStarsController;

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/telegram/ui/Stars/BotStarsController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/telegram/ui/Stars/BotStarsController;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedBotStarsStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->botStarsStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedTonStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->tonStats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->transactions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->connectedBots:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->suggestedBots:Ljava/util/HashMap;

    iput p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stars/BotStarsController;->Instance:[Lorg/telegram/ui/Stars/BotStarsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Stars/BotStarsController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/Stars/BotStarsController;->Instance:[Lorg/telegram/ui/Stars/BotStarsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Stars/BotStarsController;->Instance:[Lorg/telegram/ui/Stars/BotStarsController;

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsController;-><init>(I)V

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

.method private getTransactionsState(J)Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->transactions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->transactions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/Stars/BotStarsController$1;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$getConnectedBot$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    :goto_0
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    cmp-long p1, v2, p3

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_payments$connectedStarRefBots;->connected_bots:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    :goto_1
    invoke-interface {p5, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method private synthetic lambda$getConnectedBot$11(Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda10;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getConnectedBot$12(ILandroid/content/DialogInterface;)V
    .locals 1

    iget p2, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$getStarsRevenueStats$0(Lorg/telegram/tgnet/TLObject;J)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->botStarsStats:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->botStarsStats:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedBotStarsStats:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    invoke-virtual {p1, v0, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getStarsRevenueStats$1(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getTONRevenueStats$2(Lorg/telegram/tgnet/TLObject;J)V
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->tonStats:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->tonStats:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedTonStats:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    invoke-virtual {p1, v0, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getTONRevenueStats$3(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadAdminedBots$6(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedBots:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->loadingAdminedBots:Z

    instance-of v1, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/Vector;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedBots:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedBots:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadAdminedBots$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$8(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedChannels:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->loadingAdminedChannels:Z

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedChannels:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->adminedChannelsLoaded:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadTransactions$4(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;ILorg/telegram/tgnet/TLObject;J)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$100(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, p2

    instance-of v1, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    if-eqz v1, :cond_4

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p1, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactions:[Ljava/util/ArrayList;

    aget-object v1, v1, p2

    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactionsExist:[Z

    iget-object v3, p1, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactions:[Ljava/util/ArrayList;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactionsExist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v1, p2

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$300(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v1

    iget v3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/2addr v3, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    aput-boolean v3, v1, p2

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$200(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$300(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    iget-object p1, p3, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    :goto_3
    aput-object p1, v1, p2

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsTransactionsLoaded:I

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$loadTransactions$5(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda9;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;ILorg/telegram/tgnet/TLObject;J)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public botHasStars(J)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public botHasTON(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gtz p2, :cond_0

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long p2, v1, v3

    if-gtz p2, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->overall_revenue:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public didFullyLoadTransactions(JI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactionsState(J)Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$300(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object p1

    aget-boolean p1, p1, p3

    return p1
.end method

.method public getAdmined()Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedBots()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedChannels()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedBots:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedChannels:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getAdminedChannels()Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/BotStarsController;->loadAdminedChannels()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedChannels:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getAvailableBalance(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->available_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    :goto_0
    return-wide p1
.end method

.method public getBotStarsBalance(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    :goto_0
    return-object p1
.end method

.method public getChannelConnectedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->connectedBots:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->connectedBots:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    iget v3, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-direct {v2, v3, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;-><init>(IJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public getChannelSuggestedBots(J)Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->suggestedBots:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->suggestedBots:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;

    iget v3, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-direct {v2, v3, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$ChannelSuggestedBots;-><init>(IJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public getConnectedBot(Landroid/content/Context;JJLorg/telegram/messenger/Utilities$Callback;)V
    .locals 8

    if-nez p6, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->connectedBots:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->revoked:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;->bot_id:J

    cmp-long v4, v2, p4

    if-nez v4, :cond_1

    iget-object p1, v0, Lorg/telegram/ui/Stars/BotStarsController$ChannelConnectedBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_payments$connectedBotStarRef;

    invoke-interface {p6, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBot;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBot;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBot;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget p2, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_payments$getConnectedStarRefBot;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget p2, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda4;

    move-object v2, p3

    move-object v3, p0

    move-object v4, v0

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/ActionBar/AlertDialog;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    new-instance p2, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/BotStarsController;I)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    return-void
.end method

.method public getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    return-object p1
.end method

.method public getStarsRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedBotStarsStats:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->botStarsStats:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->dark:Z

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/BotStarsController;J)V

    invoke-virtual {v0, p3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return-object v1
.end method

.method public getTONBalance(J)J
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    :goto_1
    return-wide p1
.end method

.method public getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedTonStats:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->tonStats:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->ton:Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p3

    iput-boolean p3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->dark:Z

    iget p3, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueStats;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget p3, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    neg-long v4, p1

    invoke-virtual {p3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p3

    if-eqz p3, :cond_1

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    move v8, p3

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    const v8, 0x7fffffff

    :goto_0
    iget p3, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/BotStarsController;J)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    :cond_2
    return-object v1
.end method

.method public getTransactions(JI)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactionsState(J)Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactions:[Ljava/util/ArrayList;

    aget-object p1, p1, p3

    return-object p1
.end method

.method public hasTransactions(J)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->hasTransactions(JI)Z

    move-result p1

    return p1
.end method

.method public hasTransactions(JI)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactionsState(J)Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactions:[Ljava/util/ArrayList;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public invalidateStarsBalance(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    return-void
.end method

.method public invalidateTransactions(JZ)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactionsState(J)Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$100(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->transactions:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$200(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v4, v3, v2

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$100(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v3

    aput-boolean v1, v3, v2

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$300(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v3

    aput-boolean v1, v3, v2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v2}, Lorg/telegram/ui/Stars/BotStarsController;->loadTransactions(JI)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isStarsBalanceAvailable(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTONBalanceAvailable(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadAdminedBots()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->loadingAdminedBots:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedBots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->loadingAdminedBots:Z

    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$getAdminedBots;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$getAdminedBots;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stars/BotStarsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void
.end method

.method public loadAdminedChannels()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->loadingAdminedChannels:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->adminedChannels:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->loadingAdminedChannels:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/BotStarsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void
.end method

.method public loadTransactions(JI)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/BotStarsController;->getTransactionsState(J)Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$100(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-nez v0, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$300(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$100(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, p3

    new-instance v6, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v0, 0x0

    if-ne p3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->inbound:Z

    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->outbound:Z

    invoke-static {v2}, Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;->access$200(Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, v6, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_getStarsTransactions;->offset:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/BotStarsController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/BotStarsController;Lorg/telegram/ui/Stars/BotStarsController$TransactionsState;IJ)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public onUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    sget-object v0, Lorg/telegram/ui/ChannelMonetizationLayout;->instance:Lorg/telegram/ui/ChannelMonetizationLayout;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->dialogId:J

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    sget-object v0, Lorg/telegram/ui/ChannelMonetizationLayout;->instance:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTonAmount;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->setupBalances(ZLorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;)V

    sget-object p1, Lorg/telegram/ui/ChannelMonetizationLayout;->instance:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelMonetizationLayout;->reloadTransactions()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateStarsRevenueStatus;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    iget p1, p0, Lorg/telegram/ui/Stars/BotStarsController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {p1, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v1, v2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->invalidateTransactions(JZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public preloadStarsStats(J)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedBotStarsStats:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    return-void
.end method

.method public preloadTonStats(J)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stars/BotStarsController;->lastLoadedTonStats:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/BotStarsController;->getTONRevenueStats(JZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    return-void
.end method
