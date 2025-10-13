.class public Lorg/telegram/ui/Stories/StoriesStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field currentAccount:I

.field storage:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method public static synthetic $r8$lambda$-XjEMud_qxiI4svReKybTGoAGhs(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$2(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2q3trS93R5ZsuJpcM6-B6KcCFWQ(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$putPeerStories$17(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9u6F3myX5xQvhHtjDkuGo-UPy7E(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$3(Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AuajkYelCKau3o_eAmqICG165jA(Lorg/telegram/ui/Stories/StoriesStorage;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$updateMaxReadId$8(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$DE6Su9a_aGFBREHUV3g70OoOJY0(Lorg/telegram/ui/Stories/StoriesStorage;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$updateStoryItem$7(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GFELulQoI13tlGnwYSU_X-KzFYk(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$updateStories$10(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HDn8zH2ZGlNEavHKeI0RsFcTxF8(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$fillMessagesWithStories$13(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IbGsdsPBiaXDdutN0YFkAcpaJtc(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$deleteStories$12(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iigzwfpurb5ZkJ-Nj0Rzj2cctUY(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getMaxReadIds$16(Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MAdiU7YTC9DdCdZumHASVeuug34(Lorg/telegram/ui/Stories/StoriesStorage;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$deleteAllUserStories$18(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NUMWiyFOaK6XflnGYd_gz3Ga9gE(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$0(Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEMW7KIIg8IWNomCfG0c8G3HjbU(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$saveAllStories$4(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cguUEOD_2cRl-G2ikaBU97Z9rXg(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getMaxReadIds$15(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mZqFznBnJbMFCY3azE97BUgFojY(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$processUpdate$9(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oObnqwHhX94CgPGTFQagIu0JO2g(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$getAllStories$1(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$utWQU-wJSy8Hgkkvu7-nb4tyueM(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/messenger/Timer$Task;Ljava/util/ArrayList;JZLorg/telegram/messenger/Timer;[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$fillMessagesWithStories$14(Lorg/telegram/messenger/Timer$Task;Ljava/util/ArrayList;JZLorg/telegram/messenger/Timer;[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yW1NvjprxT_aISSA6ZIYCnFektg(Lorg/telegram/ui/Stories/StoriesStorage;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->lambda$deleteStory$11(JI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    return-void
.end method

.method public static applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 5

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;

    if-eqz v2, :cond_0

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    iget v2, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1, p2, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStateLocal(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_0
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/MessageMediaStoryFull;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/MessageMediaStoryFull;-><init>()V

    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    invoke-static {p0, p1, p2, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStateLocal(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->via_mention:Z

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_2
    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    iget v4, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    invoke-static {p0, p1, p2, p4}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStateLocal(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static checkExpiredStateLocal(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 3

    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-lez v1, :cond_1

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_1
    iget v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    sub-int/2addr v0, v1

    const v1, 0x15180

    if-le v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v0, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p0, p1, v0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;-><init>()V

    iget p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    return-object p0

    :cond_3
    return-object p3
.end method

.method private checkExpiredStories(JLjava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-le v1, v8, :cond_1

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget v8, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_1
    add-int/2addr v6, v0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const-string p3, ", "

    invoke-static {p3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v4

    aput-object p3, p2, v0

    invoke-static {v1, v3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private fillSkippedStories(JLorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 3

    if-eqz p3, :cond_1

    :try_start_0
    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryInternal(JI)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static getStoryId(Lorg/telegram/messenger/MessageObject;)I
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    iget p0, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->id:I

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    return p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    return p0
.end method

.method private getStoryInternal(JI)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT data, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    aput-object p3, v7, v0

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    invoke-virtual {p3, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    invoke-static {v1, v4, v0}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v3

    iput-wide p1, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper;->readLocalParams(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/NativeByteBuffer;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_2
    invoke-virtual {p3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method

.method private synthetic lambda$deleteAllUserStories$18(J)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM stories WHERE dialog_id = %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    invoke-static {v1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteStories$12(Ljava/util/ArrayList;J)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, p3, v3

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-static {v1, v2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteStory$11(JI)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p3, v3

    const/4 p1, 0x1

    aput-object p2, p3, p1

    invoke-static {v1, v2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$fillMessagesWithStories$13(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMessagesWithStories(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$fillMessagesWithStories$14(Lorg/telegram/messenger/Timer$Task;Ljava/util/ArrayList;JZLorg/telegram/messenger/Timer;[ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    const/4 p1, 0x0

    if-eqz p9, :cond_3

    check-cast p9, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    const/4 p6, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p10

    if-ge p6, p10, :cond_4

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p9, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p9, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {p10}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    iget-object v2, p9, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :goto_2
    invoke-static {v1, p3, p4, p10, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;-><init>()V

    invoke-static {p10}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    goto :goto_2

    :goto_3
    if-eqz p5, :cond_2

    iget-object p10, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p10}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p10

    new-instance v0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {p10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p10, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fillMessagesWithStories: getStoriesByID error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p10, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p10, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p6, p2}, Lorg/telegram/messenger/Timer;->log(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V

    :cond_4
    aget p2, p7, p1

    add-int/lit8 p2, p2, -0x1

    aput p2, p7, p1

    if-nez p2, :cond_5

    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$getAllStories$0(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getAllStories$1(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)I
    .locals 1

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    neg-int p0, p0

    return p0
.end method

.method private static synthetic lambda$getAllStories$2(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getAllStories$3(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-object v4, v1, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v8, v1, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    :try_start_0
    const-string v9, "SELECT dialog_id, max_read FROM stories_counter"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v10}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v10, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v10}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    :goto_0
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    invoke-virtual {v9, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v12, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v8, v9

    goto/16 :goto_c

    :cond_0
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v12, v7

    :goto_1
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    :goto_2
    :try_start_2
    invoke-virtual {v10}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ge v9, v11, :cond_a

    :try_start_3
    invoke-virtual {v10, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v11

    invoke-virtual {v10, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I

    move-result v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "SELECT data, custom_params FROM stories WHERE dialog_id = %d"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v16, v8, v0

    invoke-static {v14, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v14, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v8, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v15

    invoke-virtual {v8, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v0

    if-eqz v15, :cond_7

    move-object/from16 v17, v4

    invoke-virtual {v15, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    invoke-static {v15, v4, v3}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v4

    iput-wide v11, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v3, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_2

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->addLoadPeerInfo(Lorg/telegram/tgnet/TLRPC$Peer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_4
    move-object/from16 v18, v10

    const/4 v3, 0x0

    :goto_5
    iget-object v10, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    iget-object v10, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    if-eqz v10, :cond_4

    iget-object v10, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    move/from16 v19, v9

    iget-wide v9, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_4
    move/from16 v19, v9

    goto :goto_6

    :goto_7
    add-int/2addr v3, v2

    move-object/from16 v2, p1

    move/from16 v9, v19

    goto :goto_5

    :cond_5
    move/from16 v19, v9

    iget-object v2, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_6

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->addLoadPeerInfo(Lorg/telegram/tgnet/TLRPC$Peer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_6
    invoke-static {v4, v0}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper;->readLocalParams(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_8

    :cond_7
    move-object/from16 v17, v4

    move/from16 v19, v9

    move-object/from16 v18, v10

    :goto_8
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v10, v18

    move/from16 v9, v19

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v17, v4

    move/from16 v19, v9

    move-object/from16 v18, v10

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories;-><init>()V

    iput-object v14, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    iput v13, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    iget v2, v1, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x1

    add-int/lit8 v9, v19, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v10, v18

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    :goto_9
    move-object/from16 v3, p1

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_b

    :cond_a
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->users:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/MessagesStorage;->getChats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_a
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget-object v6, v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v5, v6}, Lorg/telegram/ui/Stories/StoriesStorage;->checkExpiredStories(JLjava/util/ArrayList;)V

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_b
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/ui/Stories/StoriesController;->storiesComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_a

    :cond_c
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;->peer_stories:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v3}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda10;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_b
    const/4 v8, 0x0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_b

    :goto_c
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_d
    new-instance v0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda11;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_e
    goto :goto_e

    :goto_d
    throw v2

    :goto_e
    goto :goto_d
.end method

.method private static synthetic lambda$getMaxReadIds$15(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getMaxReadIds$16(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    :try_start_0
    const-string v2, "SELECT dialog_id, max_read FROM stories_counter"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/messenger/support/LongSparseIntArray;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$9(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    instance-of v7, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v7, :cond_3

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT data, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v8, v10, v1

    aput-object v9, v10, v2

    invoke-static {p1, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v9

    if-eqz v8, :cond_0

    invoke-virtual {v8, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    invoke-static {v8, v10, v2}, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v10

    invoke-static {v10, v9}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper;->readLocalParams(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const-string v7, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v9, v10, v1

    aput-object v6, v10, v2

    invoke-static {p1, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v8, :cond_4

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    instance-of v7, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    if-eqz v7, :cond_4

    invoke-direct {p0, v4, v5, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItemInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SELECT story_id FROM stories WHERE dialog_id = %d AND story_id = %d"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v8, v9, v1

    aput-object v6, v9, v2

    invoke-static {p1, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v6, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT count, max_read FROM stories_counter WHERE dialog_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "UPDATE stories_counter SET count = %d WHERE dialog_id = %d"

    add-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object v4, v0, v2

    invoke-static {v6, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private synthetic lambda$putPeerStories$17(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoriesInternal(JLorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    return-void
.end method

.method private synthetic lambda$saveAllStories$4(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v4}, Lorg/telegram/ui/Stories/StoriesStorage;->fillSkippedStories(JLorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_8

    :try_start_0
    const-string p2, "SELECT DISTINCT dialog_id FROM stories"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-nez v6, :cond_2

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getUser(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    goto :goto_2

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-ne v6, p3, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget v6, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-nez v6, :cond_5

    iget v6, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/MessagesStorage;->getChat(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_3

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    if-ne v6, p3, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, ","

    if-eqz p2, :cond_7

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StoriesStorage delete dialogs "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "DELETE FROM stories WHERE dialog_id IN(%s)"

    invoke-static {p3, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p3, v3, v2

    invoke-static {p2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p2}, Lorg/telegram/ui/Stories/StoriesStorage;->putStoriesInternal(JLorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    add-int/2addr v2, v0

    goto :goto_6

    :cond_9
    if-eqz p4, :cond_a

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$updateMaxReadId$8(JI)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "REPLACE INTO stories_counter VALUES(%d, 0, %d)"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p3, v3

    const/4 p1, 0x1

    aput-object p2, p3, p1

    invoke-static {v1, v2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateStories$10(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItemInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStoryItem$7(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItemInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method private updateStoryItemInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v0, :cond_1

    const-string v0, "StoriesStorage: try write deleted story"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0, p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "StoriesStorage: try write expired story"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "REPLACE INTO stories VALUES(?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    int-to-long p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    new-instance p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-static {p3}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper;->writeLocalParams(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p2

    const/4 p3, 0x4

    if-eqz p2, :cond_3

    invoke-virtual {v0, p3, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public deleteAllUserStories(J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteStories(JLjava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteStory(JI)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;ILorg/telegram/messenger/Timer;)V
    .locals 6

    .line 0
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesStorage;->fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;IZLorg/telegram/messenger/Timer;)V

    return-void
.end method

.method public fillMessagesWithStories(Landroidx/collection/LongSparseArray;Ljava/lang/Runnable;IZLorg/telegram/messenger/Timer;)V
    .locals 17

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    move-object/from16 v13, p5

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez v11, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "fillMessagesWithStories: applying stories for existing array"

    invoke-static {v13, v1}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v11, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v11, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-static {v7}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v8

    invoke-direct {v10, v3, v4, v8}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryInternal(JI)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v8

    if-eqz v8, :cond_2

    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-nez v9, :cond_2

    iget v9, v10, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v9, v3, v4, v7, v8}, Lorg/telegram/ui/Stories/StoriesStorage;->applyStory(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v11, v2}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/Timer;->done(Lorg/telegram/messenger/Timer$Task;)V

    if-eqz p4, :cond_5

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateMessagesWithStories(Ljava/util/List;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v15

    const/4 v9, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    invoke-virtual {v11, v9}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v11, v9}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;-><init>()V

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesStorage;->getStoryId(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillMessagesWithStories: getStoriesByID did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/telegram/messenger/Timer;->start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object v2

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v6, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v14, v6

    move/from16 v6, p4

    move-object v11, v7

    move-object/from16 v7, p5

    move-object v13, v8

    move-object v8, v15

    move/from16 v16, v9

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/messenger/Timer$Task;Ljava/util/ArrayList;JZLorg/telegram/messenger/Timer;[ILjava/lang/Runnable;)V

    invoke-virtual {v11, v13, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    if-eqz v12, :cond_7

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_7
    add-int/lit8 v9, v16, 0x1

    move-object/from16 v11, p1

    move-object/from16 v13, p5

    goto/16 :goto_2

    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method public getAllStories(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMaxReadIds(Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lcom/google/android/exoplayer2/util/Consumer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putPeerStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putStoriesInternal(JLorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    if-eqz p3, :cond_4

    :try_start_0
    iget-object v5, p3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    const-string v6, "REPLACE INTO stories VALUES(?, ?, ?, ?)"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v9, :cond_0

    const-string v8, "try write deleted story"

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v6, v3, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget v9, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    int-to-long v9, v9

    invoke-virtual {v6, v1, v9, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    new-instance v9, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v10

    invoke-direct {v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-virtual {v6, v0, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper;->writeLocalParams(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    const/4 v10, 0x4

    if-eqz v8, :cond_1

    invoke-virtual {v6, v10, v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v10}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_2
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :goto_2
    add-int/2addr v7, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "REPLACE INTO stories_counter VALUES(%d, %d, %d)"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    aput-object p3, v0, v1

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public putStoryInternal(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "REPLACE INTO stories VALUES(?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    instance-of v1, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v1, :cond_0

    const-string p1, "putStoryInternal: try write deleted story"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    iget p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    int-to-long p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    new-instance p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result p2

    invoke-direct {p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-static {p3}, Lorg/telegram/ui/Stories/StoryCustomParamsHelper;->writeLocalParams(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p2

    const/4 p3, 0x4

    if-eqz p2, :cond_1

    invoke-virtual {v0, p3, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindNull(I)V

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public saveAllStories(Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMaxReadId(JI)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-lez v3, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v1, :cond_1

    iput p3, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    goto :goto_0

    :cond_0
    neg-long v3, p1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v1, :cond_1

    iput p3, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMessagesWithStories(Ljava/util/List;)V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "UPDATE messages_v2 SET replydata = ? WHERE mid = ? AND uid = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    const-string v2, "UPDATE messages_topics SET replydata = ? WHERE mid = ? AND uid = ?"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    const-string v3, "UPDATE messages_v2 SET data = ? WHERE mid = ? AND uid = ?"

    invoke-virtual {v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    const-string v4, "UPDATE messages_topics SET data = ? WHERE mid = ? AND uid = ?"

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    if-nez v7, :cond_0

    move-object v9, v1

    goto :goto_2

    :cond_0
    move-object v9, v2

    :goto_2
    if-nez v9, :cond_1

    goto :goto_6

    :cond_1
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v13

    invoke-direct {v12, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v13, v12}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {v9, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    :goto_3
    invoke-virtual {v9, v10, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_2
    if-nez v7, :cond_3

    move-object v9, v3

    goto :goto_4

    :cond_3
    move-object v9, v0

    :goto_4
    if-nez v9, :cond_4

    goto :goto_6

    :cond_4
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v13}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v13

    invoke-direct {v12, v13}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v13, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v13, v12}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    invoke-virtual {v9, v11, v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    goto :goto_3

    :goto_5
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->checkSQLException(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    return-void
.end method

.method public updateStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage;->storage:Lorg/telegram/messenger/MessagesStorage;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesStorage;JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
