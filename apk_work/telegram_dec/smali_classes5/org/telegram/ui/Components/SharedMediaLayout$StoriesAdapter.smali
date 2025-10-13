.class public Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
.super Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoriesAdapter"
.end annotation


# instance fields
.field public applyingReorder:Z

.field private id:I

.field private final isArchive:Z

.field public lastPinnedIds:Ljava/util/ArrayList;

.field private poller:Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;

.field public storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field private supportingAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private final uploadingStories:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Z)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez p3, :cond_2

    new-instance p3, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtagUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtagUsername()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesHashtag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p2, v1, v0}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesArea()Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p3, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez p3, :cond_2

    new-instance p3, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesArea()Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->searchStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    :goto_3
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_6

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-nez p3, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iput-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_6

    :cond_6
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_7

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    if-eqz p2, :cond_8

    const/4 v4, 0x4

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object p2

    goto :goto_3

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->link()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->id:I

    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$1;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v5, p3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Lorg/telegram/ui/Stories/StoriesController;JILorg/telegram/ui/Components/SharedMediaLayout;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->poller:Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;

    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->checkColumns()V

    return-void
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;)Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->poller:Lorg/telegram/ui/Stories/ViewsForPeerStoriesRequester;

    return-object p0
.end method

.method private checkColumns()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$12600(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v0

    if-le v0, v1, :cond_6

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v1

    if-ne v2, v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3002(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    sget v2, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    const/4 v4, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$12602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public canReorder(I)Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v2, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v0, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    if-ltz p1, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isPinned(I)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public columnsCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    if-eq p0, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->unlink(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isOnlyCache()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->hasInternet()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x13

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getTopOffset()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v0, p1

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getPositionForIndex(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getTopOffset()I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public bridge synthetic getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V

    return-void
.end method

.method public bridge synthetic getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result p1

    return p1
.end method

.method public getTopOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public load(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v1, v1, v0

    mul-int v1, v1, v0

    const/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isBot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->supportingAdapter:Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->checkColumns()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_c

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v1, 0x0

    if-ltz p2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iput-boolean v1, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    iget-object v2, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sharedMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2

    new-instance v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItem;-><init>()V

    iget-wide v3, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/FactCheckController$Key$$ExternalSyntheticBackport0;->m(J)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    iput v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v3, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$2;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget v4, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->currentAccount:I

    invoke-direct {v3, p0, v4, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iput-object v3, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sharedMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p2, v3, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    :cond_2
    iget-object p2, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->sharedMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setReorder(Z)V

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p2, v2

    if-ltz p2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isPinned(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->isBot()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setReorder(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchingStories()Z

    move-result v2

    iput-boolean v2, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_a

    if-eqz p2, :cond_a

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4900(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_8

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    :goto_3
    aget-object v2, v2, v3

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    goto :goto_5

    :cond_b
    :goto_4
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->columnsCount()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;I)V

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    :cond_c
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    :cond_0
    return-object p1
.end method

.method public onFastScrollSingleTap()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(IZ)V

    return-void
.end method

.method public bridge synthetic onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public bridge synthetic onStartFastScroll()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->onStartFastScroll()V

    return-void
.end method

.method public reorderDone()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    instance-of v1, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updatePinnedOrder(Ljava/util/ArrayList;Z)V

    :cond_8
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    return-void
.end method

.method public swapElements(II)Z
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->isArchive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-ltz p1, :cond_7

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto/16 :goto_1

    :cond_2
    if-ltz p2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    instance-of v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->pinnedIds:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    const/4 v3, 0x1

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->lastPinnedIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->applyingReorder:Z

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p2, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updatePinnedOrder(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return v3

    :cond_7
    :goto_1
    return v1
.end method
