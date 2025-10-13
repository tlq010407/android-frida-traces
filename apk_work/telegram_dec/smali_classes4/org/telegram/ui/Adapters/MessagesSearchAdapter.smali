.class public Lorg/telegram/ui/Adapters/MessagesSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;
    }
.end annotation


# instance fields
.field public containsStories:Z

.field private currentAccount:I

.field public flickerCount:I

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private isSavedMessages:Z

.field private loadStories:Ljava/lang/Runnable;

.field public loadedCount:I

.field private final mContext:Landroid/content/Context;

.field private final messageIds:Ljava/util/HashSet;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final searchResultMessages:Ljava/util/ArrayList;

.field private searchType:I

.field public storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

.field public storiesListQuery:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$G4xvCFC6MFtETBGY0SBKqEa1Itk(Lorg/telegram/ui/Adapters/MessagesSearchAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->messageIds:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/MessagesSearchAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadStories:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p4, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchType:I

    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->isSavedMessages:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/MessagesSearchAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/MessagesSearchAdapter;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/MessagesSearchAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(ZI)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadStories:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->containsStories:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->containsStories:Z

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->flickerCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->containsStories:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->containsStories:Z

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->messageIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchType:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getFoundMessageObjects()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchType:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/HashtagSearchController;->getMessages(I)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->isPrimaryGroupMessage:Z

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->messageIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->messageIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->flickerCount:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadedCount:I

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchType:I

    const/4 v4, 0x3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchType:I

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/HashtagSearchController;->isEndReached(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadedCount:I

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->searchType:I

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/HashtagSearchController;->getCount(I)I

    move-result v3

    :goto_2
    iget v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadedCount:I

    sub-int/2addr v3, v5

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v1

    goto :goto_3

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->searchEndReached()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadedCount:I

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getSearchCount()I

    move-result v3

    goto :goto_2

    :cond_5
    :goto_3
    iput v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->flickerCount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    if-lez v2, :cond_6

    sub-int v3, v0, v2

    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_6
    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_4

    :cond_7
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-object p2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->isSavedMessages:Z

    if-eqz v4, :cond_3

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v0

    iget-object p2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    if-nez v5, :cond_0

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_date:I

    if-eqz v6, :cond_2

    :cond_0
    if-nez v5, :cond_1

    iget p2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_date:I

    :goto_0
    move v4, p2

    move-wide v1, v0

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move-wide v1, v0

    move v4, v5

    goto :goto_1

    :cond_2
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(IJ)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v1

    :cond_5
    move v4, p2

    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    new-instance p2, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/MessagesSearchAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;->set(Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;)Z

    :cond_7
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter$StoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    move-object p1, p2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public searchStories(Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesListQuery:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v3

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->containsStories:Z

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadStories:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->cancel()V

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesListQuery:Ljava/lang/String;

    new-instance p1, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    iget v3, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->currentAccount:I

    invoke-direct {p1, v3, v5, v0}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    iget-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->loadStories:Ljava/lang/Runnable;

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_5
    const-wide/16 v5, 0x3e8

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;->getCount()I

    move-result p1

    if-lez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eq v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method
