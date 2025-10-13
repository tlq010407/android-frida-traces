.class public Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStoriesLoadOperation"
.end annotation


# instance fields
.field canceled:Z

.field private currentAccount:I

.field dialogId:J

.field guid:I

.field params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

.field reqId:I

.field view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$4HQM__sx8sZeYET9UW4eInkO1FM(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$3(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FWzDKjcuI1fH0U61pPHWS6NNKvE(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$0(Landroid/view/View;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhT2XRmDn5TPVm-ximJlbpw7f5M(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$2(Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wc2gIjOD-ncCXT3ensLLJQ5LDOE(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->lambda$load$1(Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->guid:I

    return-void
.end method

.method private synthetic lambda$load$0(Landroid/view/View;J)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    return-void
.end method

.method private synthetic lambda$load$1(Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;J)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    invoke-virtual {p4, p2, p3, p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->openStory(JLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_peerStories;

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_peerStories;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_peerStories;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_peerStories;->stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p1}, Lorg/telegram/ui/Stories/StoriesController;->putStories(JLorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda2;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p4

    move-wide v6, p2

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Landroid/view/View;JLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->ensureStoryFileLoaded(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 p5, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p6, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    iget v5, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6, p5, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    invoke-virtual {p6, v4, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_1
    cmp-long v4, p2, v2

    if-gez v4, :cond_2

    neg-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p6, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    iget v3, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, p5, v4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    invoke-virtual {p6, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$load$3(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance p7, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;Lorg/telegram/tgnet/TLObject;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->reqId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->canceled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    return-void
.end method

.method load(JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 10

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->dialogId:J

    iput-object p4, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setLoading(JZ)V

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPeerStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPeerStories;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getPeerStories;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;JLandroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Lorg/telegram/messenger/MessagesController;)V

    invoke-virtual {v8, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;->reqId:I

    return-void
.end method
