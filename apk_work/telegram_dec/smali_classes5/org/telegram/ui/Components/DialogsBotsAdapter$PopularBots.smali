.class public Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/DialogsBotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularBots"
.end annotation


# instance fields
.field public final bots:Ljava/util/ArrayList;

.field private cacheLoaded:Z

.field private cacheTime:J

.field private final currentAccount:I

.field private endReached:Z

.field private lastOffset:Ljava/lang/String;

.field public loading:Z

.field private savingCache:Z

.field private final whenUpdated:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$1g-_w1JOQo39YjABdFsn--ZYrDw(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$loadCache$1(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Fzuxw3I4u4I53mmU59pI9JuS8k(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$load$5(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLGPKQkKc6NgyqrZSSbd_cMly94(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$load$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SwEB9oqpKO9yUCF3uRywt8qVNYw(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$saveCache$3(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8vqXv7Tzd_WQsE1Q_03bWXWXm0(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$load$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIo-72W4TUFvHHA36XNzRKY2JIU(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$saveCache$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$srO7M2dZvxzuuh6UPxCGdo6aAKs(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$loadCache$0(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    iput p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    return p0
.end method

.method private synthetic lambda$load$4()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->load()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$load$5(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;

    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->saveCache()V

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    goto :goto_1

    :goto_2
    return-void
.end method

.method private synthetic lambda$load$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadCache$0(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-wide p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    iput-object p4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheLoaded:Z

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$loadCache$1(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V
    .locals 15

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "SELECT uid, time, offset FROM popular_bots ORDER BY pos"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v2

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MessagesStorage;->getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v11, :cond_2

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v14, v12, v8

    if-nez v14, :cond_2

    goto :goto_2

    :cond_3
    move-object v11, v2

    :goto_2
    if-eqz v11, :cond_1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, v2

    :goto_3
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    move-object v1, v2

    :cond_4
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    new-instance v0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private synthetic lambda$saveCache$2()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    return-void
.end method

.method private synthetic lambda$saveCache$3(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM popular_bots"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    const-string v1, "REPLACE INTO popular_bots VALUES(?, ?, ?, ?)"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

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
    new-instance p1, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

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

.method private loadCache(Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveCache()V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    iget-wide v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    move-object v7, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public load()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheLoaded:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loadCache(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;-><init>()V

    const/16 v1, 0x14

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;->limit:I

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;->offset:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    :goto_0
    return-void
.end method
