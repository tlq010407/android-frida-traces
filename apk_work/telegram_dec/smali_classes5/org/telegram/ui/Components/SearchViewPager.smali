.class public abstract Lorg/telegram/ui/Components/SearchViewPager;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/FilteredSearchView$UiCallback;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;,
        Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;
    }
.end annotation


# instance fields
.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field animateFromCount:I

.field private attached:Z

.field public botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private botsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

.field public botsSearchContainer:Landroid/widget/FrameLayout;

.field private botsSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field public channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private channelsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public channelsSearchAdapter:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

.field public channelsSearchContainer:Landroid/widget/FrameLayout;

.field private channelsSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

.field currentAccount:I

.field private currentSearchFilters:Ljava/util/ArrayList;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field private downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

.field public emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field public expandedPublicPosts:Z

.field private filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

.field private final folderId:I

.field private forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field fragmentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private hashtagItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

.field public hashtagSearchContainer:Landroid/widget/FrameLayout;

.field private hashtagSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private isActionModeShowed:Z

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private keyboardSize:I

.field private lastSearchScrolledToTop:Z

.field lastSearchString:Ljava/lang/String;

.field private noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

.field parent:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public searchContainer:Landroid/widget/FrameLayout;

.field private searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private selectedFiles:Ljava/util/HashMap;

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private showOnlyDialogsAdapter:Z

.field private speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected final viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$-tZFkWb5wg1k_f5taGAjK0DYsTM(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$showActionMode$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1HSnN1XoR7PEFx5tPYhd1MGF4u4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$P3ZBZE9g9BSIslyGLLSLQCB1LkM(Lorg/telegram/ui/Components/SearchViewPager;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$2(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e28E2x1O3Pokc_1bw5_8OmGdyiE(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$3(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y-J6I-Y6HYSm8lUHpn7vkEAg4Lk(Lorg/telegram/ui/Components/SearchViewPager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$getThemeDescriptions$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v10, p6

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    iput-boolean v9, v11, Lorg/telegram/ui/Components/SearchViewPager;->expandedPublicPosts:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    iput v9, v11, Lorg/telegram/ui/Components/SearchViewPager;->animateFromCount:I

    iput v15, v11, Lorg/telegram/ui/Components/SearchViewPager;->folderId:I

    iput-object v13, v11, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object v10, v11, Lorg/telegram/ui/Components/SearchViewPager;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v7, 0x15e

    invoke-virtual {v0, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Lorg/telegram/ui/Components/SearchViewPager$1;

    iget-object v5, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->getAllowGlobalSearch()Z

    move-result v16

    const/16 v17, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, p4

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/SearchViewPager$1;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    move-object/from16 v0, v19

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    const/16 v0, 0xf

    const/4 v9, 0x1

    if-ne v14, v0, :cond_1

    iget v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-virtual {v13, v0, v14, v15, v9}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFilterDialogIds(Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->fragmentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$2;

    invoke-direct {v0, v11, v12}, Lorg/telegram/ui/Components/SearchViewPager$2;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v8, 0x0

    invoke-direct {v1, v12, v9, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$3;

    invoke-direct {v1, v11, v13}, Lorg/telegram/ui/Components/SearchViewPager$3;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/FilteredSearchView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v0, v1}, Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/FilteredSearchView;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/FilteredSearchView;->setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$4;

    invoke-direct {v1, v11, v12, v0, v9}, Lorg/telegram/ui/Components/SearchViewPager$4;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v16, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v9, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$5;

    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/SearchViewPager$5;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$6;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SearchViewPager$6;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    new-instance v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v12, v9, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v9, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$7;

    invoke-direct {v1, v11, v12, v0, v9}, Lorg/telegram/ui/Components/SearchViewPager$7;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v9, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v3, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$8;

    iget v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    const/16 v17, 0x0

    move-object v0, v2

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v3

    move-object v9, v3

    move-object/from16 v3, p1

    move/from16 v4, v18

    move/from16 v5, p5

    move-object v10, v6

    move-object/from16 v6, v17

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/SearchViewPager$8;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/DialogsActivity;)V

    iput-object v14, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchAdapter:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    invoke-virtual {v9, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$9;

    invoke-direct {v1, v11, v13}, Lorg/telegram/ui/Components/SearchViewPager$9;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$10;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SearchViewPager$10;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    new-instance v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v12, v1, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$11;

    invoke-direct {v2, v11, v12, v0, v1}, Lorg/telegram/ui/Components/SearchViewPager$11;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v14, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/SearchViewPager$12;

    iget v4, v11, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object v9, v5

    move/from16 v5, p5

    move/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v15, 0x0

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/SearchViewPager$12;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/DialogsActivity;)V

    iput-object v9, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    invoke-virtual {v14, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$13;

    invoke-direct {v1, v11, v13}, Lorg/telegram/ui/Components/SearchViewPager$13;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$14;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SearchViewPager$14;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    new-instance v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x2

    :goto_4
    invoke-virtual {v0, v14}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v12, v1, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$15;

    invoke-direct {v2, v11, v12, v0, v1}, Lorg/telegram/ui/Components/SearchViewPager$15;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v7, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/Components/SearchViewPager$16;

    iget v4, v11, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SearchViewPager$16;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/SearchViewPager$17;

    invoke-direct {v1, v11, v13}, Lorg/telegram/ui/Components/SearchViewPager$17;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v1, v11, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SearchViewPager;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchScrolledToTop:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SearchViewPager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchScrolledToTop:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/FilteredSearchView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SearchViewPager;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->showOnlyDialogsAdapter:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/Components/SearchDownloadsContainer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/SearchViewPager;Landroid/view/View;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SearchViewPager;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method private isSpeedItemVisible()Z
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-wide/32 v4, 0x9600000

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$getThemeDescriptions$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onActionBarItemClick$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$2(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/DownloadController;->deleteRecentFiles(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$3(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x1

    if-gt v4, v14, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    if-eqz p3, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "scrollToTopOnResume"

    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    const-string v3, "enc_id"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "user_id"

    :goto_1
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    neg-long v2, v2

    const-string v5, "chat_id"

    goto :goto_1

    :goto_2
    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    return v14

    :cond_4
    :goto_3
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    invoke-virtual {v2, v14, v13}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto :goto_6

    :cond_5
    :goto_4
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_7

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p3, :cond_6

    iget v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-wide/from16 v17, v5

    invoke-static/range {v16 .. v29}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :cond_6
    iget v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v13

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_6
    return v14
.end method

.method private static synthetic lambda$showActionMode$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private search(Landroid/view/View;ILjava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v10, p3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoResultFoundFor2:I

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v10, v6, v13

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    if-nez v2, :cond_2

    const-wide/16 v14, 0x0

    goto :goto_2

    :cond_2
    move-wide v14, v7

    :goto_2
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_7

    iget-object v11, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v12, v11, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    iget-object v11, v11, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v12, :cond_3

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_4

    :cond_3
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_6

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v14, v11

    goto :goto_4

    :cond_4
    const/4 v13, 0x6

    if-ne v12, v13, :cond_5

    iget-object v11, v11, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

    iget-wide v12, v11, Lorg/telegram/ui/Adapters/FiltersView$DateData;->minDate:J

    iget-wide v5, v11, Lorg/telegram/ui/Adapters/FiltersView$DateData;->maxDate:J

    move-wide/from16 v18, v5

    move-wide/from16 v16, v12

    goto :goto_4

    :cond_5
    const/4 v5, 0x7

    if-ne v12, v5, :cond_6

    const/4 v9, 0x1

    :cond_6
    :goto_4
    add-int/2addr v4, v3

    const/16 v12, 0x8

    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->getHashtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SearchViewPager;->collapsePublicPosts()V

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchContainer:Landroid/widget/FrameLayout;

    if-ne v1, v4, :cond_9

    iget v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchAdapter:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->search(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    goto/16 :goto_f

    :cond_9
    const/4 v4, 0x0

    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchContainer:Landroid/widget/FrameLayout;

    if-ne v1, v5, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->search(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->botsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->checkBottom()V

    goto/16 :goto_f

    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchContainer:Landroid/widget/FrameLayout;

    if-ne v1, v4, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->getHashtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-eqz p4, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->search(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    goto/16 :goto_f

    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    if-ne v1, v4, :cond_17

    const-wide/16 v1, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    cmp-long v6, v14, v11

    if-nez v6, :cond_f

    cmp-long v6, v16, v11

    if-nez v6, :cond_f

    cmp-long v6, v18, v11

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    cmp-long v6, v7, v11

    if-eqz v6, :cond_14

    goto :goto_6

    :goto_8
    iput-boolean v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchScrolledToTop:Z

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7, v10, v9, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;IZ)V

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v8, v0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {v7, v8, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v7, v5, v6}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    if-eqz p4, :cond_10

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v8, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v8

    xor-int/2addr v3, v8

    invoke-virtual {v7, v3, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v7

    invoke-virtual {v3, v7, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_9

    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasRecentSearch()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v7

    invoke-virtual {v6, v7, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_11
    :goto_9
    if-eqz p4, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_12
    const/16 v3, 0x8

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/SearchViewPager$18;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/SearchViewPager$18;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_13
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    iget-object v7, v0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p4, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    move/from16 v11, p4

    goto :goto_c

    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b

    :cond_16
    move/from16 v3, p4

    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move v11, v3

    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/4 v8, 0x0

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-object/from16 v10, p3

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    goto :goto_f

    :cond_17
    const/4 v4, 0x0

    instance-of v5, v1, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v5, :cond_19

    check-cast v1, Lorg/telegram/ui/FilteredSearchView;

    const-wide/16 v5, 0x0

    cmp-long v11, v7, v5

    if-eqz v11, :cond_18

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v3}, Lorg/telegram/ui/FilteredSearchView;->setUseFromUserAsAvatar(Z)V

    iget v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    sget-object v3, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v2, v2, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    aget-object v8, v3, v2

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    goto :goto_f

    :cond_19
    instance-of v2, v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v2, :cond_1a

    check-cast v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setKeyboardHeight(IZ)V

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->search(Ljava/lang/String;)V

    :cond_1a
    :goto_f
    return-void
.end method

.method private showActionMode(Z)V
    .locals 11

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->isActionModeShowed:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const-string v2, "search_view_pager"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x48

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v3, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v3, Lorg/telegram/messenger/R$drawable;->avd_speed:I

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrPremiumSpeed:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xcb

    invoke-virtual {v1, v7, v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrGoToMessage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v1, v6, v2, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/messenger/R$string;->Forward:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc9

    invoke-virtual {v1, v6, v2, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xca

    invoke-virtual {v1, v5, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    const/16 v1, 0x38

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x48

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_6

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->isActionModeShowed:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->isSpeedItemVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1}, Lorg/telegram/ui/FilteredSearchView;->update()V

    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/FilteredSearchView;->update()V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_4
    if-ge v2, p1, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0}, Lorg/telegram/ui/FilteredSearchView;->update()V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return-void
.end method


# virtual methods
.method public actionModeShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->isActionModeShowed:Z

    return v0
.end method

.method public cancelEnterAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->animateFromCount:I

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager;->collapsePublicPosts()V

    return-void
.end method

.method public collapsePublicPosts()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->expandedPublicPosts:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->expandedPublicPosts:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentTabId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager;->includeFolder()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelRecommendationsLoaded:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchAdapter:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsChannelsAdapter;->updateMyChannels()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchAdapter:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    :goto_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_2

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadWebappsHints:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    if-ne p1, p2, :cond_5

    aget-object p1, p3, v0

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    iget-object p3, p2, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->list:Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-ne p1, p3, :cond_5

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method public getCurrentSearchFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadsContainer()Lorg/telegram/ui/Components/SearchDownloadsContainer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    return-object v0
.end method

.method public getFolderId()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->folderId:I

    return v0
.end method

.method public getPositionForType(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v1}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$500(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    iget v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSpeedItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method public getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object v0
.end method

.method public getThemeDescriptions(Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v4, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-nez v4, :cond_0

    instance-of v4, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v4, :cond_0

    instance-of v4, v6, Lorg/telegram/ui/Cells/HashtagSearchCell;

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Lorg/telegram/ui/FilteredSearchView;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v5, :cond_5

    check-cast v4, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Lorg/telegram/ui/FilteredSearchView;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/telegram/ui/FilteredSearchView;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v12, v3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public goToMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "enc_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "user_id"

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_2

    const-string v4, "migrated_to"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    :cond_2
    neg-long v1, v1

    const-string v3, "chat_id"

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method public hideActionMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method protected abstract includeDownloads()Z
.end method

.method public includeFolder()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected invalidateBlur()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->fragmentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    return-void
.end method

.method public isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public messagesDeleted(JLjava/util/ArrayList;)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->messagesDeleted(JLjava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->messagesDeleted(JLjava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->messagesDeleted(JLjava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_4

    neg-long v6, v6

    long-to-int v7, v6

    int-to-long v8, v7

    iget v6, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v8, v9, v6}, Lorg/telegram/messenger/ChatObject;->isChannel(JI)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    int-to-long v6, v7

    cmp-long v8, v6, p1

    if-nez v8, :cond_6

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_8

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-ne p2, p3, :cond_9

    goto :goto_6

    :cond_9
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public onActionBarItemClick(I)V
    .locals 5

    const/16 v0, 0xca

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "RemoveDocumentsTitle"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "RemoveDocumentsMessage"

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->RemoveDocumentsAlertMessage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xcb

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->isSpeedItemVisible()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    :cond_4
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eq p1, v1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->goToMessage(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1

    :cond_6
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "onlySelect"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dialogsType"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelRecommendationsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadWebappsHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchAdapter:Lorg/telegram/ui/Components/DialogsChannelsAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->attached:Z

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelRecommendationsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadWebappsHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    goto :goto_1

    :cond_1
    instance-of p3, p1, Lorg/telegram/ui/FilteredSearchView;

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast p1, Lorg/telegram/ui/FilteredSearchView;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    :cond_3
    :goto_1
    instance-of p1, p2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resetFilter()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->attached:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/telegram/ui/Components/SearchViewPager;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public runResultsEnterAnimation()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->animateFromCount:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->animateFromCount:I

    return-void
.end method

.method public setFilteredSearchViewDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView;

    :goto_1
    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setKeyboardHeight(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsSearchContainer:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->channelsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setPosition(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showActionMode()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method public showDownloads()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->expandedPublicPosts:Z

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->setPosition(I)V

    return-void
.end method

.method public showOnlyDialogsAdapter(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->showOnlyDialogsAdapter:Z

    return-void
.end method

.method public toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V
    .locals 9

    new-instance v0, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    goto/16 :goto_6

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    if-eqz p1, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->isSpeedItemVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/16 v4, 0x8

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/graphics/ColorFilter;)V

    if-eqz p1, :cond_6

    invoke-static {v5}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    goto :goto_3

    :cond_6
    const/16 p1, 0x17

    if-lt v4, p1, :cond_7

    invoke-static {v5}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    goto :goto_3

    :cond_7
    invoke-static {v5, v1, v2}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)Z

    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->isDownloadingFile:Z

    if-nez v4, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_a
    const/4 p1, 0x1

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_6
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p1, :cond_d

    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_7

    :cond_d
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz p1, :cond_e

    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p3, p1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_7

    :cond_e
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p1, :cond_f

    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_7

    :cond_f
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_10

    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_7

    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p1, :cond_11

    check-cast p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto :goto_7

    :cond_11
    instance-of p1, p2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p1, :cond_12

    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_12
    :goto_7
    return-void
.end method

.method public updateColors()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView;

    iget-object v2, v2, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_0

    check-cast v5, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/telegram/ui/FilteredSearchView;

    iget-object v3, v3, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v7, :cond_3

    check-cast v6, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v5, :cond_6

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public updateTabs()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs(Z)V

    return-void
.end method

.method public updateTabs(Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->updateItems()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->finishAddingTabs()V

    :cond_0
    return-void
.end method
