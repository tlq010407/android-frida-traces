.class public Lorg/telegram/ui/Business/QuickRepliesController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

.field private static final lockObjects:[Ljava/lang/Object;


# instance fields
.field public final currentAccount:I

.field private filtered:Ljava/util/ArrayList;

.field private loaded:Z

.field private loading:Z

.field public final localReplies:Ljava/util/ArrayList;

.field public final replies:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$-K-q8nq3Vp-EWls78V1sxVPWbvE(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$19(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40FL_IXBhv8O8O2DN5fOq6nBT2I(Lorg/telegram/ui/Business/QuickRepliesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$checkLocalMessages$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$4V4SUz9nYOMpbWKX3ae3MkDK6DY(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$deleteReplies$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Wd33Tegy9qEuSqp9fpbb9qK-hw(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$updateTopMessage$16(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$9h61rOSAZI7qOu0JEv4mN2VI3Z8(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$26(Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AR4UodbEIfNfKeUoECl8nXZTcSI(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$addReply$5(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ILQrzhhdWfCrhUjf-GpkA2w_elc(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$17(Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IlYkbDO4pT633PiIRVfxrzhaKzI(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$reorder$7(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pv4a96-66f-tJ0dFLNQSasnLpFU(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$1(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RydZKfuF2MZQ3yyLCHPNfKOIt0M()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$deleteReplies$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$SeFBaSSvuRxXGI3BgqiugRrI1p8(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$deleteReplies$14(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_OlYxETwM7-qrdh1453x2HTldZg(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$21(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUmE9avGvu6QwUBr9QN-U6mMImg(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$22(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeGYKWH1LXZ31D_ScI7cVyeoX0s()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$reorder$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$bH-K3ut4ePBfrswrOWBKAHIirt4(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$20(Lorg/telegram/messenger/MessagesStorage;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dfgudiwMI8b-gwgHvigQI9tvP6Q(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$24(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gdWm2uvGWRPQiJMJMCq82vf33AI(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$25(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4nMbWzEG8-UBpj48HX1ltTxx8k(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$saveToCache$4(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l7Kf5haYHXF_hpa14iutBrNzAYg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$reorder$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lStxP-ezov7qA-8UtZqS20VKqBE(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qA43qxg1v_0agBpu_X6Rc2GLRYA(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4DGL6UHQlB_EZF3eQYxaGx-Mg8(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$27(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ucPmdMgjqqVoIV1IvM55o1JbT5k(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$updateTopMessage$15(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ugaoItLWMDdsXKrv5WvsGkGSdyQ(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xuFCljZk_8wOxQ_aw2gk7B67vjE(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$18(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z94vlEvUKe90dH8KC7co8cg7_OA()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$renameReply$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$zKsHgny0_FQW9t7B5Ze74pfO3FU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$renameReply$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/ui/Business/QuickRepliesController;

    sput-object v1, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/telegram/ui/Business/QuickRepliesController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/telegram/ui/Business/QuickRepliesController;->lockObjects:[Ljava/lang/Object;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    return-void
.end method

.method private addReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private ensureLoaded(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loaded:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->load(ZLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;
    .locals 3

    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/QuickRepliesController;-><init>(I)V

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

.method public static isSpecial(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "hello"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "away"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$addReply$5(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "REPLACE INTO business_replies VALUES(?, ?, ?, ?);"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-object p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    iget p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    const/4 p1, 0x4

    invoke-virtual {v0, p1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method private synthetic lambda$checkLocalMessages$23()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$deleteReplies$12()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$deleteReplies$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda26;

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$deleteReplies$14(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "DELETE FROM quick_replies_messages WHERE topic_id IN (%s)"

    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$load$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->load(Z)V

    :goto_0
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "SELECT topic_id, name, order_value, count FROM business_replies ORDER BY order_value ASC"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v10, :cond_0

    new-instance v10, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    invoke-virtual {v9, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {v9, v2}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v10, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    invoke-virtual {v9, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v9

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v6, v9

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    const-string v6, "SELECT data, send_state, mid, date, topic_id, ttl FROM quick_replies_messages WHERE topic_id = ? ORDER BY mid ASC"

    iget v11, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v1

    invoke-virtual {v8, v6, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v9, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    invoke-static {v6, v11, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v11

    invoke-virtual {v9, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-wide/from16 v1, p2

    invoke-virtual {v11, v6, v1, v2}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v12

    iput v12, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v16, 0x40000000    # 2.0f

    or-int v6, v6, v16

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    const/4 v6, 0x5

    invoke-virtual {v9, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/4 v6, 0x0

    invoke-static {v11, v10, v13, v6}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v12, v7, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v6, v12, v11, v2, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v6, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget v1, v11, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    iget-object v1, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget v11, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {v1, v6, v11}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const/4 v1, 0x1

    add-int/2addr v14, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ","

    invoke-static {v1, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v10, v3}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    :goto_3
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_5

    move-object v9, v6

    :cond_4
    :goto_4
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda14;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->users:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->quick_replies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->quick_replies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    new-instance v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    iput v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    iput v4, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v10, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    if-ne v9, v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_2
    if-eqz v8, :cond_2

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v9, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v7, v9, v8, v2, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    iget-object v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    invoke-virtual {v7, v8, v5}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v0

    goto :goto_3

    :cond_4
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickRepliesNotModified;

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    if-eqz v3, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loaded:Z

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$17(Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_1

    new-instance v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    iput v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v8, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v7, v8, v1, v6, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    if-eqz v2, :cond_0

    iput-object v2, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    :cond_0
    iget-object v6, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v2, v3}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iget-object v6, v0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateOrder()V

    invoke-direct {v0, v4}, Lorg/telegram/ui/Business/QuickRepliesController;->addReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    goto :goto_0

    :cond_1
    iget v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v7, v8, :cond_2

    iput v8, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v8, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v7, v8, v1, v6, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget v4, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    iget v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    add-int/2addr v7, v5

    iput v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget v4, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget v2, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getAutodownloadMask()I

    move-result v13

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    int-to-long v2, v2

    const/4 v12, 0x0

    const/4 v14, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide v15, v2

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    iget v2, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v6, v7, v1, v5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    :cond_4
    return-void
.end method

.method private synthetic lambda$processUpdate$18(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 8

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;->quick_replies:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v5, v5, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_2
    if-nez v4, :cond_2

    new-instance v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    :cond_2
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iput v2, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    iget-object v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    if-eq v5, v3, :cond_3

    iput-object v6, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$19(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;->quick_reply:Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    iget-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    if-eq v1, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateTopMessage(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateOrder()V

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$processUpdate$20(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM business_replies WHERE topic_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM quick_replies_messages WHERE topic_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$processUpdate$21(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;->shortcut_id:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    iget p1, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processUpdate$22(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;->shortcut_id:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getTopMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateTopMessage(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$renameReply$10()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$renameReply$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda18;

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$reorder$7(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    iget p1, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private static synthetic lambda$reorder$8()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$reorder$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda21;

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveToCache$4(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "DELETE FROM business_replies"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v1, "REPLACE INTO business_replies VALUES(?, ?, ?, ?)"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    iget v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v1, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    return-void

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_2
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private synthetic lambda$sendQuickReplyTo$24(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Message;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->id:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p1, p4, :cond_1

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->random_id:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on getQuickReplyMessages when trying to send quick reply"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$sendQuickReplyTo$25(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendQuickReplyTo$26(Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getMessagesCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->id:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->random_id:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;-><init>()V

    iget p2, p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;->shortcut_id:I

    iget p2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_2
    return-void
.end method

.method private synthetic lambda$sendQuickReplyTo$27(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "SELECT id FROM quick_replies_messages WHERE topic_id = ?"

    iget v4, p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {p1, v3, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_1
    new-instance p1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0, v1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_2
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private synthetic lambda$updateTopMessage$15(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iput-object p4, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_0

    iget-object p1, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget p2, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateTopMessage$16(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V
    .locals 14

    move-object v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "SELECT data, send_state, mid, date, topic_id, ttl FROM quick_replies_messages WHERE topic_id = ? ORDER BY mid ASC"

    move-object/from16 v12, p2

    iget v8, v12, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v8, v9, v1

    invoke-virtual {v6, v7, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v8

    invoke-static {v7, v8, v1}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v8

    invoke-virtual {v6, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-wide/from16 v9, p3

    invoke-virtual {v8, v7, v9, v10}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v7, v9

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    invoke-static {v8, v4, v5, v3}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v3, Lorg/telegram/messenger/MessageObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, p0

    :try_start_2
    iget v9, v7, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v3, v9, v8, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    :goto_0
    move-object v13, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_1
    move-object v3, v6

    goto :goto_6

    :catch_0
    move-exception v0

    :goto_2
    move-object v3, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, p0

    goto :goto_2

    :cond_0
    move-object v7, p0

    goto :goto_0

    :goto_3
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-static {v1, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v11}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v4, v10}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda17;

    move-object v8, v0

    move-object v9, p0

    move-object/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, p0

    :goto_4
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    :goto_5
    return-void

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_4
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method private load(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->load(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private load(ZLjava/lang/Runnable;)V
    .locals 8

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loaded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance v6, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    iget v6, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    iget-object v6, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    if-nez v6, :cond_2

    move-wide v6, v0

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, p2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)J

    move-result-wide v6

    :goto_1
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    iget-object v6, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_3

    move-wide v6, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    iget-object v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_4

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    int-to-long v6, v3

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v3

    :goto_3
    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    goto :goto_4

    :cond_4
    invoke-static {v4, v5, v0, v1}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v3

    goto :goto_3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget p2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_6
    :goto_5
    return-void
.end method

.method private saveToCache()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateOrder()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iput v0, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTopMessage(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda11;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public canAddNew()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_5

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v2, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const-string v4, "hello"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const-string v4, "away"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    xor-int/2addr v2, v5

    add-int/2addr v1, v2

    xor-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->quickRepliesLimit:I

    if-ge v1, v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public checkLocalMessages(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findLocalReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->local:Z

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput-object v0, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public deleteLocalMessage(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v3, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getMessagesCount()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public deleteLocalMessages(Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalMessage(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteLocalReply(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->findLocalReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public deleteReplies(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyShortcut;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyShortcut;-><init>()V

    iget v5, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyShortcut;->shortcut_id:I

    iget v5, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda22;

    invoke-direct {v6}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget-object v4, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const-string v5, "hello"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessGreetingMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessGreetingMessage;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    :goto_2
    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const-string v4, "away"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessAwayMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessAwayMessage;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda23;

    invoke-direct {v3, v1, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public findLocalReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilteredReplies()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v1}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->isSpecial()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasReplies()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNameBusy(Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->load(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;I)Z
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;

    if-eqz p2, :cond_1

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;

    if-eqz p2, :cond_2

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;

    if-eqz p2, :cond_3

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    :cond_3
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;

    if-eqz p2, :cond_4

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public renameReply(ILjava/lang/String;)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;->shortcut_id:I

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;->shortcut:Ljava/lang/String;

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public reorder()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderQuickReplies;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderQuickReplies;-><init>()V

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderQuickReplies;->order:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public sendQuickReplyTo(JLorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->shortcut_id:I

    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1, p3, v0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
