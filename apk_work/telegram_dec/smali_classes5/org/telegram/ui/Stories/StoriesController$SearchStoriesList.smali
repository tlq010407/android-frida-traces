.class public Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;
.super Lorg/telegram/ui/Stories/StoriesController$StoriesList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchStoriesList"
.end annotation


# instance fields
.field private count:I

.field private final fakeDays:Ljava/util/ArrayList;

.field private last_offset:Ljava/lang/String;

.field private loading:Z

.field public final query:Ljava/lang/String;

.field public final queryArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

.field private reqId:I

.field public final username:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$IO3bqlxrM-rYAcEXzZw18nR5Y7o(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;ZILjava/util/List;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->lambda$load$0(ZILjava/util/List;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvByloQGoDwS4TX8-0j4fdXbCVQ(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->lambda$load$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uUicIc1fAHeCR3qQtCfRMx0FvQM(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->lambda$load$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$1;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->fakeDays:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->last_offset:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->query:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->username:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->queryArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    return-void
.end method

.method public constructor <init>(ILorg/telegram/tgnet/tl/TL_stories$MediaArea;)V
    .locals 7

    .line 0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;-><init>(IJILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Stories/StoriesController$1;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->fakeDays:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->last_offset:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->query:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->username:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->queryArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    return-void
.end method

.method private synthetic lambda$load$0(ZILjava/util/List;Ljava/lang/Long;)V
    .locals 1

    iget p4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->username:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->loading:Z

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->load(ZILjava/util/List;)Z

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->count:I

    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->last_offset:Ljava/lang/String;

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->access$600(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->access$600(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->reqId:I

    instance-of v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;

    if-eqz v1, :cond_4

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStory;

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-direct {v3, v4, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->fakeDays:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->count:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->count:I

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->count:I

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->count:I

    if-ge v1, v2, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_foundStories;->next_offset:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->last_offset:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->loading:Z

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->access$600(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->access$600(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->reqId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->reqId:I

    :cond_0
    return-void
.end method

.method public findMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->count:I

    return v0
.end method

.method protected getDays()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->fakeDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLoadedCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected invalidateCache()V
    .locals 0

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->loading:Z

    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(ZILjava/util/List;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->loading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->last_offset:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->last_offset:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->offset:Ljava/lang/String;

    iput p2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->limit:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->query:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    or-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->hashtag:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->queryArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v1, :cond_3

    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->area:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->loading:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->username:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    if-nez v1, :cond_5

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getUserNameResolver()Lorg/telegram/messenger/UserNameResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->username:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;ZILjava/util/List;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    return v2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    if-eqz v1, :cond_6

    iget p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->flags:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_searchPosts;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_6
    iget p1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->reqId:I

    return v2
.end method

.method protected markAsRead(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected preloadCache()V
    .locals 0

    return-void
.end method

.method protected saveCache()V
    .locals 0

    return-void
.end method
