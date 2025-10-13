.class public Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static lastRequestTime:J


# instance fields
.field final currentAccount:I

.field currentReqId:I

.field final dialogId:J

.field isRunning:Z

.field final scheduleRequestRunnable:Ljava/lang/Runnable;

.field final storiesController:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method public static synthetic $r8$lambda$Ro741gksRp0n0clrr1WHUZUJ-ks(Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->lambda$requestInternal$2(Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oTEXQkcsF7Pq9CzN24ZUw5hELos(Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pAKFcCkvvUSiop6Z4BGxXKgrD7o(Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->lambda$requestInternal$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoriesController;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->scheduleRequestRunnable:Ljava/lang/Runnable;

    iput p4, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentAccount:I

    iput-object p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iput-wide p2, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->dialogId:J

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->step()V

    return-void
.end method

.method private synthetic lambda$requestInternal$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->lastRequestTime:J

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;

    iget v1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;->id:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->updateStories(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;)Z

    move-result p1

    if-nez p1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->scheduleRequestRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->scheduleRequestRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$requestInternal$2(Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestInternal()Z
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;->id:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->getStoryIds(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;->id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesViews;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    const/4 v0, 0x1

    return v0
.end method

.method private step()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->lastRequestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->scheduleRequestRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->scheduleRequestRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->requestInternal()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getStoryIds(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->step()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->isRunning:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->scheduleRequestRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->currentReqId:I

    :goto_0
    return-void
.end method

.method protected updateStories(Ljava/util/ArrayList;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;->views:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v5, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_storyViews;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController;->storiesStorage:Lorg/telegram/ui/Stories/StoriesStorage;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0
.end method
