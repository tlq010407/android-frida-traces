.class public Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ProfileChannelCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelMessageFetcher"
.end annotation


# instance fields
.field private callbacks:Ljava/util/ArrayList;

.field public channel_id:J

.field public final currentAccount:I

.field public error:Z

.field public loaded:Z

.field public loading:Z

.field public messageObject:Lorg/telegram/messenger/MessageObject;

.field public message_id:I

.field private searchId:I


# direct methods
.method public static synthetic $r8$lambda$6ByLbXWtLSrywXJkIIh9jsfGbCk(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;ILorg/telegram/tgnet/TLRPC$Message;JILorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->lambda$fetch$2(ILorg/telegram/tgnet/TLRPC$Message;JILorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJ2EsupB6BmpM9ZQCTlPqMLhs9g(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesStorage;JII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->lambda$fetch$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesStorage;JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$cW4f8UlN9U6jKxuLgoMidzO8q4w(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/messenger/MessagesStorage;JIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->lambda$fetch$1(Lorg/telegram/messenger/MessagesStorage;JIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tgMU6Naj6zmpFAeGWAfSLNVjk3U(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;ILorg/telegram/messenger/MessagesStorage;JJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->lambda$fetch$3(ILorg/telegram/messenger/MessagesStorage;JJI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->callbacks:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    return-void
.end method

.method private done(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loaded:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->error:Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$fetch$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesStorage;JII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v3, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v3, v5, v15}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v3, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v15}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    move-object/from16 v6, p2

    invoke-virtual {v6, v3, v5, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    move-wide/from16 v7, p3

    neg-long v7, v7

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object v6, v1

    invoke-virtual/range {v5 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V

    iget v3, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v6, p6

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_6

    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;

    if-eqz v1, :cond_3

    iput-object v3, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->messageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v3, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-direct {v1, v3, v2, v4, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v1, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->messageObject:Lorg/telegram/messenger/MessageObject;

    :goto_1
    invoke-direct {v0, v15}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->done(Z)V

    goto :goto_2

    :cond_4
    iget v1, v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    if-eq v2, v1, :cond_5

    return-void

    :cond_5
    invoke-direct {v0, v4}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->done(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$fetch$1(Lorg/telegram/messenger/MessagesStorage;JIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance p7, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesStorage;JII)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$fetch$2(ILorg/telegram/tgnet/TLRPC$Message;JILorg/telegram/messenger/MessagesStorage;)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->done(Z)V

    return-void

    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v8, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p6

    move-wide v4, p3

    move v6, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/messenger/MessagesStorage;JII)V

    invoke-virtual {v0, p2, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$fetch$3(ILorg/telegram/messenger/MessagesStorage;JJI)V
    .locals 15

    move-object/from16 v8, p2

    move-wide/from16 v5, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-gtz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string v9, "SELECT data, mid FROM messages_v2 WHERE uid = ? ORDER BY mid DESC LIMIT 1"

    neg-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v10, v11, v0

    invoke-virtual {v7, v9, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v12, v4

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v7

    const-string v9, "SELECT data, mid FROM messages_v2 WHERE uid = ? AND mid = ? LIMIT 1"

    neg-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v0

    aput-object v11, v12, v1

    invoke-virtual {v7, v9, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v12

    invoke-static {v11, v12, v0}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v13, p5

    :try_start_2
    invoke-virtual {v12, v11, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v7, v1}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    neg-long v0, v5

    iput-wide v0, v12, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v12, v9, v10, v4}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v7

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_1
    move-object v4, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v12, v4

    goto :goto_1

    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v4, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8, v9, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    invoke-static {v0, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    move-object v7, v4

    move-object v4, v12

    :cond_3
    :goto_4
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    :cond_4
    move-object v4, v12

    :goto_5
    new-instance v0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move/from16 v3, p7

    move-wide/from16 v5, p3

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;ILorg/telegram/tgnet/TLRPC$Message;JILorg/telegram/messenger/MessagesStorage;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_6
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public fetch(JI)V
    .locals 11

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loading:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->channel_id:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->message_id:I

    if-eq v0, p3, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->messageObject:Lorg/telegram/messenger/MessageObject;

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    const/4 v1, 0x1

    add-int/lit8 v10, v0, 0x1

    iput v10, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loading:Z

    iput-wide p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->channel_id:J

    iput p3, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->message_id:I

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    iget v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-object v3, p0

    move v4, p3

    move-wide v6, p1

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;ILorg/telegram/messenger/MessagesStorage;JJI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fetch(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_1

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_id:J

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_channel_message:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->fetch(JI)V

    return-void

    :cond_1
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->searchId:I

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loaded:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->done(Z)V

    return-void
.end method

.method public subscribe(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->loaded:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
