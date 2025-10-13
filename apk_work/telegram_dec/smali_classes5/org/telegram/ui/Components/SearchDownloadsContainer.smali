.class public Lorg/telegram/ui/Components/SearchDownloadsContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;,
        Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;,
        Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

.field checkingFilesExist:Z

.field private final currentAccount:I

.field currentLoadingFiles:Ljava/util/ArrayList;

.field currentLoadingFilesTmp:Ljava/util/ArrayList;

.field downloadingFilesEndRow:I

.field downloadingFilesHeader:I

.field downloadingFilesStartRow:I

.field emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private hasCurrentDownload:Z

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field lastQueryString:Ljava/lang/String;

.field lastSearchRunnable:Ljava/lang/Runnable;

.field private final loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

.field parentActivity:Landroid/app/Activity;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field recentFilesEndRow:I

.field recentFilesHeader:I

.field recentFilesStartRow:I

.field recentLoadingFiles:Ljava/util/ArrayList;

.field recentLoadingFilesTmp:Ljava/util/ArrayList;

.field public recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field rowCount:I

.field searchQuery:Ljava/lang/String;

.field uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;


# direct methods
.method public static synthetic $r8$lambda$15f2T6s4OtO75q5c2y9h-unhv6Y(Lorg/telegram/ui/Components/SearchDownloadsContainer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$showPremiumFloodWaitBulletin$6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$1i1Z2ImwlvK4Nrj6eEZ63i5A2Nw(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$checkFilesExist$2(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$60aQvv3asNXvmZCLHUHIZiZpF2o(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$update$5(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6H0ECteTyLxDXlHO3DbM8yYhSwY(Lorg/telegram/ui/Components/SearchDownloadsContainer;ILandroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$new$0(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lAt6Se6w2h2o-iX0QNRmd9b9lA(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$update$4(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GFph80b_QD4Y5hqTUxAsWx2ClSk(Lorg/telegram/ui/Components/SearchDownloadsContainer;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ps5HHDyM1bs_lVPToQMRbFPiDtc(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$checkFilesExist$3()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/Components/SearchDownloadsContainer$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    new-instance v0, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$1;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchDownloadsContainer$2;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$2;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$3;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->hasCurrentDownload:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SearchDownloadsContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    return-object p0
.end method

.method private checkFilesExist()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isEmptyDownloads()Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->downloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkFilesExist$2(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DownloadController;->onDownloadComplete(Lorg/telegram/messenger/MessageObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DownloadController;->deleteRecentFiles(Ljava/util/ArrayList;)V

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    return-void
.end method

.method private synthetic lambda$checkFilesExist$3()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoader;->getRecentLoadingFiles(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;I)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->access$400(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1, v0, p2, v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void

    :cond_2
    instance-of p3, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    if-eqz p3, :cond_10

    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    iget-object p3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p3, :cond_4

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_5

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v6

    :goto_1
    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v9, v3, v7

    if-eqz v9, :cond_7

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v3

    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    iget-boolean p3, v6, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    :cond_8
    if-nez p1, :cond_9

    if-eqz p3, :cond_b

    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    move v2, p1

    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    new-instance v11, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    invoke-direct {v11}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    :cond_e
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v1

    if-nez v1, :cond_f

    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    invoke-virtual {p3, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->updateFilesLoadingPriority()V

    goto :goto_5

    :cond_f
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {p3, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    :goto_5
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_11

    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    :cond_11
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->access$400(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;I)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->showActionMode()V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1, p2, p1, v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private synthetic lambda$showPremiumFloodWaitBulletin$6(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz p1, :cond_0

    const-string p1, "upload_speed"

    goto :goto_0

    :cond_0
    const-string p1, "download_speed"

    :goto_0
    invoke-direct {v1, p1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$update$4(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    iget p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget p2, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$update$5(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v4, v5, v6, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v3, v4, v5, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    if-eqz p1, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    iget v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    iget v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    iget v8, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    iget v9, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    iget v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    new-instance v7, Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateRows(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$4;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/SearchDownloadsContainer$4;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;IIIIILjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    if-ltz p3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p2, Lorg/telegram/ui/Cells/GraySectionCell;

    if-eqz v1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p2, v0, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    :cond_1
    instance-of p3, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    iget-object p3, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iget-object v1, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v2, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    iget-object p2, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-interface {p3, v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z

    move-result p3

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateRows(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private updateRows(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    const/4 p2, -0x1

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->hasCurrentDownload:Z

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->hasCurrentDownload:Z

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    :cond_6
    return-void
.end method


# virtual methods
.method public checkItemsFloodWait()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    check-cast v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    iget-object v2, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->checkLoadCaughtPremiumFloodWait(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->showPremiumFloodWaitBulletin(Z)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/FileLoader;->checkLoadCaughtPremiumFloodWait(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->showPremiumFloodWaitBulletin(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->clearUnviewedDownloads()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumFloodWaitReceived:I

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkItemsFloodWait()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumFloodWaitReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->clearUnviewedDownloads()V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkFilesExist()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumFloodWaitReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    return-void
.end method

.method public setKeyboardHeight(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    return-void
.end method

.method public setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    return-void
.end method

.method public showPremiumFloodWaitBulletin(Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/tgnet/ConnectionsManager;->lastPremiumFloodWaitShown:J

    sub-long v2, v0, v2

    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->uploadPremiumSpeedupNotifyPeriod:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return-void

    :cond_1
    sput-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastPremiumFloodWaitShown:J

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-eqz p1, :cond_3

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->uploadPremiumSpeedupUpload:F

    goto :goto_0

    :cond_3
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->uploadPremiumSpeedupDownload:F

    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\.0$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasStoryViewer()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->speed_limit:I

    if-eqz p1, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->UploadSpeedLimited:I

    goto :goto_1

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->DownloadSpeedLimited:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_6

    sget v5, Lorg/telegram/messenger/R$string;->UploadSpeedLimitedMessage:I

    goto :goto_2

    :cond_6
    sget v5, Lorg/telegram/messenger/R$string;->DownloadSpeedLimitedMessage:I

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Z)V

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v5, "%d"

    invoke-static {v5, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 v0, 0x1f40

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    :goto_3
    return-void
.end method

.method public update(Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->isEmptyDownloads()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/FileLoader;->getRecentLoadingFiles(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    sget-object v5, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object v5, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0, v3, v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastSearchRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x12c

    :goto_0
    invoke-virtual {v5, v6, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v4, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getRecentLoadingFiles(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iput-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SearchEmptyViewDownloads:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    :cond_8
    :goto_4
    return-void
.end method
