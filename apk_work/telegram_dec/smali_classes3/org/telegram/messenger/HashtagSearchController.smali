.class public Lorg/telegram/messenger/HashtagSearchController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/HashtagSearchController$SearchResult;,
        Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;
    }
.end annotation


# static fields
.field public static final HISTORY_LIMIT:I = 0x64

.field private static volatile Instance:[Lorg/telegram/messenger/HashtagSearchController;

.field private static final lockObjects:[Ljava/lang/Object;


# instance fields
.field private final channelPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

.field public final currentAccount:I

.field public final history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final historyPreferences:Landroid/content/SharedPreferences;

.field private final localPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

.field private final myMessagesSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;


# direct methods
.method public static synthetic $r8$lambda$BkVCw41UYJCc5DXPEBcZe4SqbAw(Lorg/telegram/messenger/HashtagSearchController;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;Lorg/telegram/tgnet/TLRPC$messages_Messages;Ljava/util/ArrayList;III)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/HashtagSearchController;->lambda$searchHashtag$1([ILorg/telegram/messenger/HashtagSearchController$SearchResult;Lorg/telegram/tgnet/TLRPC$messages_Messages;Ljava/util/ArrayList;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$DBomVcbaQgdD8SP8SFrDAW2jjpQ(Lorg/telegram/messenger/HashtagSearchController;ILjava/lang/String;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;IIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/messenger/HashtagSearchController;->lambda$searchHashtag$2(ILjava/lang/String;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;IIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K0LKbEIsNg19gCsjLi9FOWp1zWU(Lorg/telegram/messenger/HashtagSearchController;Lorg/telegram/messenger/HashtagSearchController$SearchResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Runnable;IIILjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/HashtagSearchController;->lambda$searchHashtag$0(Lorg/telegram/messenger/HashtagSearchController$SearchResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Runnable;IIILjava/lang/Long;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/messenger/HashtagSearchController;

    sput-object v1, Lorg/telegram/messenger/HashtagSearchController;->Instance:[Lorg/telegram/messenger/HashtagSearchController;

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/telegram/messenger/HashtagSearchController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lorg/telegram/messenger/HashtagSearchController;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    new-instance v0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->myMessagesSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    new-instance v0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->channelPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    new-instance v0, Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->localPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashtag_search_history"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/HashtagSearchController;->historyPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lorg/telegram/messenger/HashtagSearchController;->loadHistoryFromPref()V

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/messenger/HashtagSearchController;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/HashtagSearchController;->Instance:[Lorg/telegram/messenger/HashtagSearchController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/HashtagSearchController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/HashtagSearchController;->Instance:[Lorg/telegram/messenger/HashtagSearchController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/HashtagSearchController;->Instance:[Lorg/telegram/messenger/HashtagSearchController;

    new-instance v2, Lorg/telegram/messenger/HashtagSearchController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/HashtagSearchController;-><init>(I)V

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

.method private synthetic lambda$searchHashtag$0(Lorg/telegram/messenger/HashtagSearchController$SearchResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Runnable;IIILjava/lang/Long;)V
    .locals 3

    const/4 p8, 0x1

    const/4 v0, 0x0

    iget-object v1, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastHashtag:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p3

    if-nez p3, :cond_2

    aget-object p2, p4, v0

    iget-object p3, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->cancel:Ljava/lang/Runnable;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->cancel:Ljava/lang/Runnable;

    iput-boolean v0, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->loading:Z

    iput-boolean p8, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    iput v0, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    iget p2, p0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget p5, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    iget-boolean p6, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p1}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->getMask()I

    move-result p7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    iget p1, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v0

    aput-object p5, v2, p8

    const/4 p4, 0x2

    aput-object p6, v2, p4

    const/4 p4, 0x3

    aput-object p7, v2, p4

    const/4 p4, 0x4

    aput-object p1, v2, p4

    const/4 p1, 0x5

    aput-object v1, v2, p1

    invoke-virtual {p2, p3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p2, p5, p6, p7}, Lorg/telegram/messenger/HashtagSearchController;->searchHashtag(Ljava/lang/String;III)V

    return-void
.end method

.method private synthetic lambda$searchHashtag$1([ILorg/telegram/messenger/HashtagSearchController$SearchResult;Lorg/telegram/tgnet/TLRPC$messages_Messages;Ljava/util/ArrayList;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aget v12, p1, v10

    iget v13, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    if-ne v12, v13, :cond_4

    const/4 v12, -0x1

    iput v12, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    iput-boolean v10, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->loading:Z

    iget v12, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput v12, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetRate:I

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    new-instance v14, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;

    iget-object v15, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v14, v15}, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;-><init>(Lorg/telegram/tgnet/TLRPC$Message;)V

    iget-object v15, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->generatedIds:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_0

    iget v15, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastGeneratedId:I

    add-int/lit8 v3, v15, -0x1

    iput v3, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastGeneratedId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v3, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->generatedIds:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v13, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$Message;->realId:I

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget v12, v3, Lorg/telegram/tgnet/TLRPC$Message;->realId:I

    iput v12, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetId:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v3, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_2
    iget v3, v0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v12, v13, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget v3, v0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v12, v10}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v3, v0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v12, v10}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v12, p5

    if-ge v3, v12, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    iget v2, v0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v7, 0xf

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v10

    aput-object v13, v7, v9

    aput-object p4, v7, v8

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v12, v7, v6

    aput-object v11, v7, v5

    aput-object v11, v7, v4

    const/4 v12, 0x6

    aput-object v11, v7, v12

    const/4 v12, 0x7

    aput-object v11, v7, v12

    const/16 v12, 0x8

    aput-object v14, v7, v12

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v13, 0x9

    aput-object v12, v7, v13

    const/16 v12, 0xa

    aput-object v15, v7, v12

    const/16 v12, 0xb

    aput-object v16, v7, v12

    const/16 v12, 0xc

    aput-object v11, v7, v12

    const/16 v12, 0xd

    aput-object v11, v7, v12

    const/16 v12, 0xe

    aput-object v17, v7, v12

    invoke-virtual {v2, v3, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v2, v0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v12, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v13, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->getMask()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v10

    aput-object v12, v15, v9

    aput-object v13, v15, v8

    aput-object v14, v15, v6

    aput-object v1, v15, v5

    aput-object v11, v15, v4

    invoke-virtual {v2, v3, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$searchHashtag$2(ILjava/lang/String;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;IIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 24

    move-object/from16 v0, p8

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v1, :cond_2

    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v1, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v5, p0

    iget v9, v5, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object v8, v1

    move/from16 v23, p1

    invoke-direct/range {v8 .. v23}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZJZZZI)V

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isPrimaryGroupMessage:Z

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;Z)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    new-instance v0, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/HashtagSearchController;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;Lorg/telegram/tgnet/TLRPC$messages_Messages;Ljava/util/ArrayList;III)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private loadHistoryFromPref()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->historyPreferences:Landroid/content/SharedPreferences;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController;->historyPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveHistoryToPref()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->historyPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/HashtagSearchController;->saveHistoryToPref()V

    return-void
.end method

.method public clearSearchResults()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->myMessagesSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    invoke-virtual {v0}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->channelPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    invoke-virtual {v0}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->clear()V

    return-void
.end method

.method public clearSearchResults(I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/HashtagSearchController;->getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->clear()V

    return-void
.end method

.method public getCount(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/HashtagSearchController;->getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    return p1
.end method

.method public getMessages(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/HashtagSearchController;->getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    return-object p1
.end method

.method public getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/HashtagSearchController;->myMessagesSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/HashtagSearchController;->channelPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/HashtagSearchController;->localPostsSearch:Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown search type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEndReached(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/HashtagSearchController;->getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    return p1
.end method

.method public jumpToMessage(III)V
    .locals 7

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/HashtagSearchController;->getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    move-result-object p3

    if-ltz p2, :cond_1

    iget-object v0, p3, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p3, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    iget v0, p0, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->hashtagSearchUpdated:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, p3, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p3, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->endReached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->getMask()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p3, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->selectedIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p3, p3, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, p3, v6

    const/4 p1, 0x1

    aput-object v2, p3, p1

    const/4 p1, 0x2

    aput-object v3, p3, p1

    const/4 p1, 0x3

    aput-object v4, p3, p1

    const/4 p1, 0x4

    aput-object v5, p3, p1

    const/4 p1, 0x5

    aput-object p2, p3, p1

    invoke-virtual {v0, v1, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public putToHistory(Ljava/lang/String;)V
    .locals 2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x63

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/HashtagSearchController;->saveHistoryToPref()V

    return-void
.end method

.method public removeHashtagFromHistory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/HashtagSearchController;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/telegram/messenger/HashtagSearchController;->saveHistoryToPref()V

    :cond_0
    return-void
.end method

.method public searchHashtag(Ljava/lang/String;III)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v7, p3

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/HashtagSearchController;->getSearchResult(I)Lorg/telegram/messenger/HashtagSearchController$SearchResult;

    move-result-object v10

    iget-object v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastHashtag:Ljava/lang/String;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastHashtag:Ljava/lang/String;

    :cond_2
    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_3
    iget-object v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastHashtag:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v10}, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->clear()V

    goto :goto_0

    :cond_4
    iget-boolean v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->loading:Z

    if-eqz v1, :cond_2

    return-void

    :goto_1
    iput-object v3, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastHashtag:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    if-ltz v0, :cond_5

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v2

    goto :goto_2

    :cond_5
    move-object v12, v1

    move-object v0, v3

    :goto_2
    const/4 v2, 0x1

    iput-boolean v2, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->loading:Z

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v1, v9, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    if-nez v1, :cond_6

    new-array v13, v2, [Ljava/lang/Runnable;

    iget v0, v9, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getUserNameResolver()Lorg/telegram/messenger/UserNameResolver;

    move-result-object v14

    new-instance v15, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda0;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-object v5, v13

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/HashtagSearchController;Lorg/telegram/messenger/HashtagSearchController$SearchResult;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Runnable;III)V

    invoke-virtual {v14, v12, v15}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->cancel:Ljava/lang/Runnable;

    aput-object v0, v13, v11

    return-void

    :cond_6
    const/16 v6, 0x15

    if-ne v7, v2, :cond_8

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_7

    iget v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetRate:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    iget v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    iget v1, v9, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_7
    :goto_3
    move-object v12, v0

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_a

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    iget v0, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetId:I

    if-eqz v0, :cond_9

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :cond_9
    move-object v12, v4

    goto :goto_4

    :cond_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;-><init>()V

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->limit:I

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->hashtag:Ljava/lang/String;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_7

    iget v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetRate:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_rate:I

    iget v1, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_id:I

    iget v1, v9, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->lastOffsetPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3

    :goto_4
    new-array v13, v2, [I

    iget v0, v9, Lorg/telegram/messenger/HashtagSearchController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v15, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda1;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v4, v13

    move-object v5, v10

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/HashtagSearchController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/HashtagSearchController;ILjava/lang/String;[ILorg/telegram/messenger/HashtagSearchController$SearchResult;III)V

    invoke-virtual {v14, v12, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, v10, Lorg/telegram/messenger/HashtagSearchController$SearchResult;->reqId:I

    aput v0, v13, v11

    return-void
.end method
