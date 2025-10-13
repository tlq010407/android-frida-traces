.class public abstract Lorg/telegram/ui/Components/HashtagsSearchAdapter;
.super Lorg/telegram/ui/Components/UniversalAdapter;
.source "SourceFile"


# instance fields
.field private final cashtag:[Z

.field private final currentAccount:I

.field private endReached:Z

.field private hadStories:Z

.field public hasList:Z

.field private hashtagQuery:Ljava/lang/String;

.field private lastQuery:Ljava/lang/String;

.field private lastRate:I

.field public list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

.field protected loading:Z

.field private final messages:Ljava/util/ArrayList;

.field private reqId:I

.field private searchId:I

.field private searchRunnable:Ljava/lang/Runnable;

.field private totalCount:I


# direct methods
.method public static synthetic $r8$lambda$HUrBpdTFncWWyEi2-Yg2z3xmHlk(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lambda$search$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNJvzFIeEZoZDRY5oBboHcFbvG0(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lambda$search$1(ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xnn3pljL4q2uf9Fnkn6R8y7R_uU(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lambda$search$2(ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jLfXqGdOQwcM8uBXG4mrHoOqNJc(Lorg/telegram/ui/Components/HashtagsSearchAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lambda$fillItems$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->reqId:I

    const/4 p1, 0x1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->cashtag:[Z

    new-instance p1, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/HashtagsSearchAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    iput p3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$fillItems$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->scrollToTop(Z)V

    return-void
.end method

.method private synthetic lambda$search$1(ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->loading:Z

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->totalCount:I

    goto :goto_1

    :cond_1
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lastRate:I

    iget v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    invoke-direct {v4, v5, v3, v0, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v4, p3}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->totalCount:I

    if-lt p2, p3, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    iput-boolean p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->endReached:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->checkBottom()V

    goto :goto_4

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->endReached:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->totalCount:I

    :goto_4
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->scrollToTop(Z)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$search$2(ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$3(ILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->cashtag:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    const-string v1, "$"

    goto :goto_0

    :cond_1
    const-string v1, "#"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hashtagQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->query:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    iget v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->getLoadedCount()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hasList:Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hashtagQuery:Ljava/lang/String;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->hashtag:Ljava/lang/String;

    const/16 p2, 0xa

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->limit:I

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lastRate:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_rate:I

    iget v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v2, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    :goto_1
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_searchPosts;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2

    :cond_5
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_1

    :goto_2
    iget p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILjava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->reqId:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hasList:Z

    iget v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->reqId:I

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->reqId:I

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->reqId:I

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->loading:Z

    return-void
.end method

.method public checkBottom()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->endReached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->loading:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->seesLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    iget-boolean p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hasList:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->getLoadedCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-static {v2}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView$Factory;->asStoriesList(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hadStories:Z

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/UItem;->asSearchMessage(ILorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->endReached:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x4

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hadStories:Z

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    new-instance p1, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/HashtagsSearchAdapter;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public getHashtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->getHashtag(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHashtag(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 6

    .line 0
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    aput-boolean v0, p2, v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x23

    const/16 v5, 0x24

    if-eq v2, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_3

    return-object v1

    :cond_3
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    return-object v1

    :cond_4
    if-eqz p2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    aput-boolean v1, p2, v0

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_1
    return-object v1
.end method

.method protected abstract scrollToTop(Z)V
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lastQuery:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->cashtag:[Z

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->getHashtag(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hashtagQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->endReached:Z

    iput v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->totalCount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->cancel()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->loading:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchId:I

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->loading:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    new-instance v1, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/Components/HashtagsSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/HashtagsSearchAdapter;ILjava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public seesLoading()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setInitialData(Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hashtagQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->totalCount:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->endReached:Z

    iput p3, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->lastRate:I

    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->hashtagQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method
