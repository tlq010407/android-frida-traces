.class public Lorg/telegram/messenger/SavedMessagesController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    }
.end annotation


# instance fields
.field public allDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final checkMessagesCallbacks:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field private final currentAccount:I

.field private dialogsCount:I

.field private dialogsCountHidden:I

.field public dialogsEndReached:Z

.field private dialogsLoaded:Z

.field private dialogsLoading:Z

.field private final forumDialogId:J

.field private loadedCache:Z

.field private loadedDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private loadingCache:Z

.field private loadingCacheOnly:Z

.field private final saveCacheRunnable:Ljava/lang/Runnable;

.field private saving:Z

.field public unsupported:Z


# direct methods
.method public static synthetic $r8$lambda$2DjbJS83c7-KS3VLUtCax7fnWQA(Lorg/telegram/messenger/SavedMessagesController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$hasSavedMessages$15(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4VYB4MQdF0wzTb-uaeyX-2QcdgQ(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$8G4CMo3lPE1pETe6-PKqNuGB5sU(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->lambda$saveCache$11(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOP7eZbhMaS-JoZ4pXTpzdBub8w(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$hasSavedMessages$14(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$C24hkUgL8utSAIPA7OdkFdO463I(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadCache$7(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F0JPOIBfqL5Z4A6KWJAY1lyk_CE(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsLastMessage$8(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSvuyxOt3q15EK34jiI6-LY10MA(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updatePinnedOrder$4(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$M1ldrxaVdzD35ibjVTmtssafXqE(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$deleteCache$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$YZIZqVEg44XaOKA019s7bX15Wf8(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateDialogsLastMessage$9(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3NmJGTKrKuwE4gtkmryLum9DS8(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->lambda$saveCache$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$gwraNuZOnjWcYpRozJawvpo3HRI(Lorg/telegram/messenger/SavedMessagesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$mlsKB21tK1WClx_bTOJ4ZDE4v2U(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updatePinnedOrder$5(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$neXlGe9KNfdEtejREXK1XCeTFK0(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$3(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCv-9VrIpj2veb4AdyFaP_zjiCk(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$deleteCache$13(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vdoCIMrXzhYrvdhTGevYxRGaX2Q(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadDialogs$2(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xwd-CB6KxU3Pc46Gnb89goEExbg(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->lambda$updateAllDialogs$0(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z4okta9EcAlPSlshH9IPLsAlIW0(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SavedMessagesController;->lambda$loadCache$6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/SavedMessagesController;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    iput p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "savedMessagesUnsupported"

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    return-void
.end method

.method private deleteCache()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v3, :cond_0

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private invalidate()V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v7, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topics_end_reached_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    return-void
.end method

.method private synthetic lambda$deleteCache$12()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    return-void
.end method

.method private synthetic lambda$deleteCache$13(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    :try_start_0
    const-string v0, "DELETE FROM saved_dialogs WHERE forumChatId = ?"

    invoke-virtual {p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-wide v0, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$hasSavedMessages$14(Lorg/telegram/tgnet/TLObject;J)V
    .locals 10

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v1, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :cond_1
    :goto_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v6, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    if-lez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-lez v0, :cond_5

    invoke-virtual {p0, p2, p3, v0, v7}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JIZ)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v6, v8, v2

    if-nez v6, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v4, p1, v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    iput v0, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput-boolean v7, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v5, p2, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private synthetic lambda$hasSavedMessages$15(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadCache$6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCacheOnly:Z

    if-nez p1, :cond_0

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCache$7(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :try_start_0
    const-string v15, "SELECT did, date, last_mid, pinned, flags, folder_id, last_mid_group, count, unread_count, max_read_id, read_outbox FROM saved_dialogs WHERE forumChatId = ? ORDER BY pinned ASC, date DESC"

    iget-wide v1, v8, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v5, v15, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-direct {v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;-><init>()V

    move-object/from16 v16, v5

    invoke-virtual {v1, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$102(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$002(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    invoke-static {v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result v4

    const/16 v5, 0x3e7

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    iput v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->unreadCount:J

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readInboxMaxId:J

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readOutboxMaxId:J

    iget-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/16 v17, 0x0

    cmp-long v19, v4, v17

    if-gez v19, :cond_2

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v9

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v36, v14

    move-object v14, v1

    move-object/from16 v1, v36

    goto/16 :goto_a

    :catch_0
    move-exception v0

    :goto_3
    move-object/from16 v36, v14

    move-object v14, v1

    move-object/from16 v1, v36

    goto/16 :goto_8

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v7

    :goto_4
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SELECT data FROM messages_topics WHERE uid = ? AND mid = ? AND topic_id = ?"

    move-object/from16 v19, v4

    iget-wide v3, v8, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v20, v3, v17

    if-eqz v20, :cond_3

    goto :goto_5

    :cond_3
    move-wide/from16 v3, p2

    :goto_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, v6

    :try_start_2
    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v15, v6

    const/4 v3, 0x1

    aput-object v4, v15, v3

    const/4 v4, 0x2

    aput-object v5, v15, v4

    move-object/from16 v5, v16

    move-object/from16 v4, v19

    invoke-virtual {v5, v4, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v14, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v15

    invoke-static {v4, v15, v3}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v4

    invoke-static {v4, v7, v9, v10}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance v15, Lorg/telegram/messenger/MessageObject;

    iget v3, v8, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    move-object/from16 v16, v7

    iget-wide v6, v8, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v19, v6, v17

    if-nez v19, :cond_4

    const/16 v35, 0x1

    goto :goto_6

    :cond_4
    const/16 v35, 0x0

    :goto_6
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v21, v15

    move/from16 v22, v3

    move-object/from16 v23, v4

    invoke-direct/range {v21 .. v35}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    iput-object v15, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v6, v20

    goto/16 :goto_3

    :cond_5
    move-object/from16 v16, v7

    :goto_7
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v6, v20

    :try_start_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v16

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v11}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, ","

    if-nez v2, :cond_8

    :try_start_4
    invoke-static {v3, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v3, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lorg/telegram/messenger/MessagesStorage;->getAnimatedEmoji(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v14, :cond_b

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v14

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v14

    :goto_8
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_a
    if-eqz v1, :cond_b

    move-object v14, v1

    :goto_9
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_b
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_d
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method private synthetic lambda$loadDialogs$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    return-void
.end method

.method private synthetic lambda$loadDialogs$2(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_7

    iput-boolean v9, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->messages:Ljava/util/ArrayList;

    const/16 v17, 0x3

    const-wide/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v19}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$savedDialog;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->messages:Ljava/util/ArrayList;

    iget-wide v11, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v13, v11, v6

    if-nez v13, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    invoke-static {v3, v5, v10, v11}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromTL(ILorg/telegram/tgnet/TLRPC$savedDialog;Ljava/util/ArrayList;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v12, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_1

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iput-boolean v10, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v5, 0x0

    :goto_4
    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v12, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v9

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iput-boolean v9, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    :goto_6
    invoke-direct {v0, v9}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    iput-boolean v8, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    goto/16 :goto_11

    :cond_7
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;

    if-eqz v5, :cond_11

    iput-boolean v9, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v5, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->messages:Ljava/util/ArrayList;

    const/16 v17, 0x3

    const-wide/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v19}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    const/4 v2, 0x0

    :goto_7
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$savedDialog;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->messages:Ljava/util/ArrayList;

    iget-wide v11, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v13, v11, v6

    if-nez v13, :cond_8

    const/4 v11, 0x1

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    invoke-static {v3, v5, v10, v11}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromTL(ILorg/telegram/tgnet/TLRPC$savedDialog;Ljava/util/ArrayList;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v3

    const/4 v5, 0x0

    :goto_9
    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v12, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iput v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v10, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    iput-boolean v10, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    goto :goto_a

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    const/4 v5, 0x0

    :goto_b
    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_c

    iget-object v10, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-wide v12, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_b

    goto :goto_c

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_c
    iget-object v5, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v9

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_d
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_e
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->count:I

    iput v2, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->getPinnedCount()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    if-ge v2, v3, :cond_10

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsSlice;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_d

    :cond_f
    const/4 v1, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v1, 0x1

    :goto_e
    iput-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    goto/16 :goto_6

    :cond_11
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;

    if-eqz v5, :cond_15

    iput-boolean v9, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    iget-object v3, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedDialogsNotModified;->count:I

    iput v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iput v8, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    const/4 v1, 0x0

    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-virtual {v3}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    add-int/2addr v3, v9

    iput v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_13
    iget-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    iget-object v2, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    if-lt v2, v3, :cond_14

    const/4 v2, 0x1

    goto :goto_10

    :cond_14
    const/4 v2, 0x0

    :goto_10
    iput-boolean v2, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    iput-boolean v8, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-eqz v2, :cond_16

    if-nez v1, :cond_16

    invoke-direct {v0, v9}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    goto :goto_11

    :cond_15
    if-eqz v3, :cond_16

    iput-boolean v9, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "SAVED_DIALOGS_UNSUPPORTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iput-boolean v9, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    :cond_16
    :goto_11
    iget-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-eq v1, v4, :cond_17

    iget v1, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    const-string v3, "savedMessagesUnsupported"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_17
    iget-wide v1, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_18

    iget-boolean v1, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-eqz v1, :cond_18

    iget v1, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topics_end_reached_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_18
    iput-boolean v8, v0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    return-void
.end method

.method private synthetic lambda$loadDialogs$3(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveCache$10()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    return-void
.end method

.method private synthetic lambda$saveCache$11(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 7

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM saved_dialogs WHERE forumChatId = ?"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-wide v2, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v1, "REPLACE INTO saved_dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/16 v3, 0x3e7

    :goto_1
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x7

    invoke-virtual {v0, v3, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget-wide v5, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->unreadCount:J

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget-wide v5, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readInboxMaxId:J

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->readOutboxMaxId:J

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_4
    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_3
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private static synthetic lambda$updateAllDialogs$0(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$updateDialogsLastMessage$8(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget v2, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->processDocuments(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    move-object/from16 v5, p4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v1, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v1, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v9, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-wide v11, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-nez v8, :cond_1

    const/16 v22, 0x1

    goto :goto_2

    :cond_1
    const/16 v22, 0x0

    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v22}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZ)V

    const/4 v8, 0x0

    :goto_3
    iget-object v9, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    iget-object v9, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v12, v10, v5

    if-nez v12, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iput v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iput-object v7, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_4
    iget-object v9, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v9, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v12, v10, v5

    if-nez v12, :cond_4

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iput v10, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iput-object v7, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method private synthetic lambda$updateDialogsLastMessage$9(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v13, v14, :cond_2

    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    const-string v1, "SELECT mid, data FROM messages_topics WHERE uid = ? AND topic_id = ? ORDER BY mid DESC LIMIT 1"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v12, p0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    :try_start_2
    iget-wide v10, v12, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v18, 0x0

    cmp-long v20, v10, v18

    if-eqz v20, :cond_0

    goto :goto_1

    :cond_0
    move-wide/from16 v10, p3

    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v12, v14

    const/4 v10, 0x1

    aput-object v11, v12, v10

    invoke-virtual {v2, v1, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    invoke-virtual {v11, v10}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    invoke-static {v1, v12, v10}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v1

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-wide v14, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v9, v14, v15, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :goto_2
    move-object/from16 v2, v16

    goto/16 :goto_6

    :cond_1
    iget-wide v14, v15, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    add-int/2addr v13, v1

    move-object/from16 v10, v16

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, v17

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    :goto_4
    move-object/from16 v11, v17

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    goto :goto_2

    :cond_2
    move-object/from16 v16, v10

    move-object/from16 v17, v11

    :try_start_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v2, ","

    if-nez v1, :cond_4

    :try_start_5
    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v2, v16

    :try_start_6
    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getAnimatedEmoji(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_5
    move-object/from16 v2, v16

    :goto_5
    if-eqz v17, :cond_6

    move-object/from16 v11, v17

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v2, v10

    move-object/from16 v17, v11

    :goto_6
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v11, :cond_6

    :goto_7
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    new-instance v0, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda3;

    move-object v3, v0

    move-object/from16 v4, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_8
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_7
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private static synthetic lambda$updatePinnedOrder$4(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$updatePinnedOrder$5(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p0

    invoke-static {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$000(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private loadCache(Ljava/lang/Runnable;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static openSavedMessages()V
    .locals 5

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private processUpdateInternal(Lorg/telegram/tgnet/TLRPC$Update;)Z
    .locals 5

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;->peer:Lorg/telegram/tgnet/TLRPC$DialogPeer;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    if-nez v2, :cond_0

    return v1

    :cond_0
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateSavedDialogPinned;->pinned:Z

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinned(Ljava/util/ArrayList;ZZ)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DialogPeer;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private removeDialog(J)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v4, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-wide v0, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_6

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    invoke-virtual {v0, v4, v5, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->removeTopic(JJ)V

    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private saveCache()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saving:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveCacheSchedule()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->saveCacheRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1c2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateAllDialogs(Z)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v5, :cond_2

    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v4, v0

    goto :goto_2

    :cond_5
    iget-boolean v4, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v6, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->isHidden()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v5, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/2addr v4, v0

    goto :goto_3

    :cond_7
    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_8

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    iget-wide v3, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->hasDialogs()Z

    move-result p1

    if-nez p1, :cond_8

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->savedViewAsChats:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->setSavedViewAs(Z)V

    :cond_8
    return-void
.end method

.method private updateDialogsLastMessage(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda16;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/SavedMessagesController;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v5, :cond_1

    iput-boolean v1, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/2addr v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_3

    invoke-static {v3, v5}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->access$002(Lorg/telegram/messenger/SavedMessagesController$SavedDialog;I)I

    iput-boolean v4, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v4

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda14;

    invoke-direct {p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return v4
.end method

.method private updatePinnedOrderToServer(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;->force:Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;-><init>()V

    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputDialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderPinnedSavedDialogs;->order:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_3
    return-void
.end method


# virtual methods
.method public checkSavedDialogCount(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/SavedMessagesController;->hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->deleteCache()V

    iput-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "savedMessagesUnsupported"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public containsDialog(J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public deleteAllDialogs()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public deleteDialog(J)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public deleteDialogs(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    return-void
.end method

.method public findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(Ljava/util/ArrayList;J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object p1

    return-object p1
.end method

.method public findSavedDialog(Ljava/util/ArrayList;J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;J)",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v2, v1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v4, v2, p2

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllCount()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCount:I

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsCountHidden:I

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLoadedCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesCount(J)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    iget p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getPinnedCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasDialogs()Z
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->getAllCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v5, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v4
.end method

.method public hasSavedMessages(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController;->findSavedDialog(J)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-lez v1, :cond_1

    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p3, p0, Lorg/telegram/messenger/SavedMessagesController;->checkMessagesCallbacks:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;-><init>()V

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v0, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_5
    const/4 v0, 0x1

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->limit:I

    iput-wide v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->hash:J

    const v0, 0x7fffffff

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->offset_id:I

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->offset_date:I

    const/4 v0, -0x1

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedHistory;->add_offset:I

    iget v0, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/SavedMessagesController;J)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    return v0
.end method

.method public loadDialogs(Z)V
    .locals 10

    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCacheOnly:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsEndReached:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadingCache:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedCache:Z

    if-nez v0, :cond_1

    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->loadCache(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoading:Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget v2, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    :goto_1
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    :cond_4
    const p1, 0x7fffffff

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->offset_date:I

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_1

    :goto_2
    const/16 p1, 0x14

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    iget-wide v2, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->flags:I

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v6, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->limit:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    iget-boolean v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v3, :cond_6

    const-wide/16 v8, 0x1

    goto :goto_4

    :cond_6
    move-wide v8, v4

    :goto_4
    invoke-static {v6, v7, v8, v9}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    iget-wide v8, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    iget v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    int-to-long v8, v3

    invoke-static {v6, v7, v8, v9}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    invoke-virtual {v2}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedDialogs;->hash:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/SavedMessagesController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    :goto_5
    return-void
.end method

.method public preloadDialogs(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/SavedMessagesController;->dialogsLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs(Z)V

    :cond_0
    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->processUpdateInternal(Lorg/telegram/tgnet/TLRPC$Update;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/32 v5, 0x28ae10

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget v5, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v8, v3, v5

    if-nez v8, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->MyNotes:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    iget v3, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    if-ltz v8, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public update()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateAllDialogs(Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/SavedMessagesController;->saveCacheSchedule()V

    return-void
.end method

.method public update(JLorg/telegram/tgnet/TLRPC$messages_Messages;)V
    .locals 2

    .line 0
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateSavedDialogs(Ljava/util/ArrayList;)Z

    move-result v0

    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v1, :cond_0

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v1, :cond_1

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v1, :cond_4

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JI)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    new-instance p1, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/SavedMessagesController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/SavedMessagesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public updateDeleted(Landroidx/collection/LongSparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_2
    iget-object v9, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    iget-object v9, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v9, v9, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v11, v9, v4

    if-nez v11, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    iget-boolean v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-eq v5, v9, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v9, v3

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/4 v3, 0x1

    :cond_3
    iget-boolean v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-eqz v5, :cond_4

    iget v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-gtz v5, :cond_4

    iget-wide v3, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/messenger/SavedMessagesController;->removeDialog(J)I

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    iget v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-gt v5, v8, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->updateDialogsLastMessage(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/SavedMessagesController;->update()V

    :cond_8
    :goto_6
    return-void
.end method

.method public updatePinned(Ljava/util/ArrayList;ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;ZZ)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    if-eqz p2, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz p3, :cond_5

    invoke-direct {p0, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrderToServer(Ljava/util/ArrayList;)V

    return v3

    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    iget-object p2, p0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p2

    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_3
    return v3

    :cond_8
    return v4
.end method

.method public updatePinnedOrder(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/SavedMessagesController;->getCurrentPinnedOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitPremium:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->savedDialogsPinnedLimitDefault:I

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SavedMessagesController;->sameOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrderToServer(Ljava/util/ArrayList;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public updateSavedDialog(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v5, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v7, v5, v1

    if-nez v7, :cond_1

    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v1, v2, p1, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v1, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v4, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public updateSavedDialogs(Ljava/util/ArrayList;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget v5, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId(JLorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v10

    cmp-long v12, v10, v5

    if-eqz v12, :cond_1

    iget v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ltz v12, :cond_5

    iget v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v12, :cond_1

    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v12, :cond_2

    iget v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v12, v13, :cond_3

    :cond_2
    invoke-virtual {v3, v10, v11, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    invoke-virtual {v4, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1
    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v10, v11, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_1e

    invoke-virtual {v3, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    invoke-virtual {v3, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    iget-wide v12, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_7

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getMonoForumTopicId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v12

    cmp-long v16, v12, v14

    if-nez v16, :cond_7

    goto/16 :goto_e

    :cond_7
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    iget-object v13, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v14, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v17, v14, v7

    if-nez v17, :cond_e

    iget v12, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v12, v14, :cond_8

    if-gez v14, :cond_c

    iget v12, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v13}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v14

    if-le v12, v14, :cond_c

    :cond_8
    iget v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v12, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v6, v12, :cond_b

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v15, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-le v14, v15, :cond_9

    add-int/lit8 v12, v12, 0x1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iget v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    add-int/2addr v6, v12

    iput v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    :cond_b
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v12, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v6, v12, v10, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iput v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v6, 0x1

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    :cond_d
    iget v11, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_f
    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_12

    iget v6, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-wide v12, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v14, 0x0

    cmp-long v17, v12, v14

    if-nez v17, :cond_10

    const/4 v12, 0x1

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_8
    invoke-static {v6, v10, v12}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v6

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    :cond_11
    iget-object v12, v0, Lorg/telegram/messenger/SavedMessagesController;->cachedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_12
    const/4 v12, 0x0

    :goto_9
    iget-object v13, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1a

    iget-object v13, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v14, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v17, v14, v7

    if-nez v17, :cond_19

    iget v7, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v8, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lt v7, v8, :cond_13

    if-gez v8, :cond_17

    iget v7, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v13}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v8

    if-le v7, v8, :cond_17

    :cond_13
    iget v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    iget v7, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v6, v7, :cond_16

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_15

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v12, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    if-le v8, v12, :cond_14

    add-int/lit8 v7, v7, 0x1

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_15
    iget v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    add-int/2addr v6, v7

    iput v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    :cond_16
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    invoke-direct {v6, v7, v10, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iput v6, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->top_message_id:I

    const/4 v6, 0x1

    :cond_17
    if-eqz v11, :cond_18

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_b

    :cond_18
    iget v7, v13, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v7, 0x1

    goto :goto_c

    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_1a
    const/4 v7, 0x0

    :goto_c
    if-nez v7, :cond_1d

    iget v6, v0, Lorg/telegram/messenger/SavedMessagesController;->currentAccount:I

    iget-wide v7, v0, Lorg/telegram/messenger/SavedMessagesController;->forumDialogId:J

    const-wide/16 v12, 0x0

    cmp-long v14, v7, v12

    if-nez v14, :cond_1b

    const/4 v7, 0x1

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    :goto_d
    invoke-static {v6, v10, v7}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->fromMessage(ILorg/telegram/tgnet/TLRPC$Message;Z)Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    move-result-object v6

    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    :cond_1c
    iget-object v7, v0, Lorg/telegram/messenger/SavedMessagesController;->loadedDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_1d
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_1e
    return v6
.end method

.method public updatedDialogCount(JI)Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/SavedMessagesController;->updatedDialogCount(JIZ)Z

    move-result p1

    return p1
.end method

.method public updatedDialogCount(JIZ)Z
    .locals 6

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    iget p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    if-ne p1, p3, :cond_0

    iget-boolean p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    if-nez p1, :cond_2

    if-eqz p4, :cond_2

    :cond_0
    iput p3, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCount:I

    const/4 p1, 0x1

    iput-boolean p1, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->messagesCountLoaded:Z

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
