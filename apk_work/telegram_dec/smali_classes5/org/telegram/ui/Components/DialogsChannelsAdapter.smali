.class public abstract Lorg/telegram/ui/Components/DialogsChannelsAdapter;
.super Lorg/telegram/ui/Components/UniversalAdapter;
.source "SourceFile"


# instance fields
.field private allCount:I

.field private final context:Landroid/content/Context;

.field private final currentAccount:I

.field public expandedMyChannels:Z

.field public expandedSearchChannels:Z

.field private final folderId:I

.field private hasMore:Z

.field public loadingChannels:Z

.field public loadingMessages:Z

.field public final messages:Ljava/util/ArrayList;

.field public final myChannels:Ljava/util/ArrayList;

.field private nextRate:I

.field public query:Ljava/lang/String;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final searchChannels:Ljava/util/ArrayList;

.field private searchChannelsId:I

.field private final searchMessagesRunnable:Ljava/lang/Runnable;

.field public final searchMyChannels:Ljava/util/ArrayList;

.field public final searchRecommendedChannels:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$6K4G3Mr3AB_24DUNRcGrppR6Y9w(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->lambda$searchMessages$2(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0uugsGTBEhreSyR9q7lBmqIXhs(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->lambda$searchMessages$0(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxXRP3F__-XZBZJoh_h2Gz9goCQ(Lorg/telegram/ui/Components/DialogsChannelsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->lambda$searchMessages$3(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lZ0uXakBByyax4fxqJfu1zNIt60(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->lambda$searchMessages$1(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oU0FaEcwpROzzFiMsHEi6R4cZjk(Lorg/telegram/ui/Components/DialogsChannelsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->lambda$searchMessages$4(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oaSfouV5pvcWeqqNUMHhRIdzgyc(Lorg/telegram/ui/Components/DialogsChannelsAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->lambda$new$5()V

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

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    new-instance p1, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMessagesRunnable:Ljava/lang/Runnable;

    new-instance p1, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->context:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    iput p4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->folderId:I

    iput-object p5, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMessages(Z)V

    return-void
.end method

.method private synthetic lambda$searchMessages$0(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannelsId:I

    if-ne p1, v0, :cond_4

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    instance-of p2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    check-cast p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1, p3, p3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-direct {v1, v2, v0, p1, p3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hasMore:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->allCount:I

    iget p1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->nextRate:I

    :cond_3
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$searchMessages$1(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p5, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda8;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;ZLorg/telegram/tgnet/TLObject;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchMessages$2(ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannelsId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$searchMessages$3(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingChannels:Z

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_6

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getCachedChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, v3, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_7

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    iget v5, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_9

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_a
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_2

    :cond_b
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_11

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-nez v2, :cond_d

    goto :goto_3

    :cond_d
    iget v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3

    :cond_10
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_12
    :goto_4
    return-void
.end method

.method private synthetic lambda$searchMessages$4(Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchMessages(Z)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    iget v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannelsId:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannelsId:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    iput-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->broadcasts_only:Z

    iget v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->folderId:I

    if-eqz v3, :cond_0

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v4, v0

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    const/16 v3, 0x19

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->nextRate:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v4, :cond_1

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    :goto_0
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Z)V

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x320

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    :goto_2
    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingChannels:Z

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    const/16 v0, 0x14

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;Lorg/telegram/tgnet/TLRPC$TL_contacts_search;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public checkBottom()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hasMore:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->seesLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->SearchMyChannels:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedMyChannels:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;)V

    invoke-static {p2, v3, v4}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->SearchMyChannels:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedMyChannels:Z

    if-nez v3, :cond_2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    :goto_3
    if-ge v0, p2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/UItem;->withUsername(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getCachedChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->SearchRecommendedChannels:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const/16 p2, 0x1e

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x1d

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v5, :cond_b

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_b
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_e

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_e
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v5, :cond_11

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_11
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_14

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    sget v3, Lorg/telegram/messenger/R$string;->SearchChannels:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedSearchChannels:Z

    if-eqz v4, :cond_13

    sget v4, Lorg/telegram/messenger/R$string;->ShowLess:I

    goto :goto_a

    :cond_13
    sget v4, Lorg/telegram/messenger/R$string;->ShowMore:I

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/DialogsChannelsAdapter;)V

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    :goto_b
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    sget v3, Lorg/telegram/messenger/R$string;->SearchChannels:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    goto :goto_b

    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedSearchChannels:Z

    if-nez v4, :cond_15

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_15
    :goto_d
    if-ge v0, v3, :cond_16

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_18

    sget p2, Lorg/telegram/messenger/R$string;->SearchMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asSearchMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hasMore:Z

    if-eqz p2, :cond_18

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto/16 :goto_6

    :cond_18
    :goto_f
    return-void
.end method

.method public getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getNextChannels(I)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->getChat(I)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected abstract hideKeyboard()V
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->updateMyChannels()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMessagesRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannelsId:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannelsId:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingChannels:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hasMore:Z

    iput v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->nextRate:I

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchRecommendedChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMyChannels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMessagesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingChannels:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    return-void
.end method

.method public searchMore()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hasMore:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->loadingMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->searchMessages(Z)V

    :cond_1
    :goto_0
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

.method public toggleExpandedMyChannels(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedMyChannels:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedMyChannels:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedMyChannels:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public toggleExpandedSearchChannels(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedSearchChannels:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedSearchChannels:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->expandedSearchChannels:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public updateMyChannels()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget v3, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->myChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
