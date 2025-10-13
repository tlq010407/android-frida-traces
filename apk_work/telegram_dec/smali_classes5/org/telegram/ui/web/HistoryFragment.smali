.class public Lorg/telegram/ui/web/HistoryFragment;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"


# instance fields
.field private final closeToTabs:Ljava/lang/Runnable;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private history:Ljava/util/ArrayList;

.field private query:Ljava/lang/String;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchLoading:Z

.field private final searchResults:Ljava/util/ArrayList;

.field public selected:Ljava/util/HashSet;

.field private selectedCount:Lorg/telegram/ui/Components/NumberTextView;

.field private final whenClicked:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$Qov0B6kozvKjSbGfcOAhy0fAaYk(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/HistoryFragment;->lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_dpVtfuRJU9WAuTiBmNjhSK750U(Lorg/telegram/ui/web/HistoryFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/HistoryFragment;->lambda$new$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/web/HistoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/HistoryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/HistoryFragment;)V

    invoke-static {v0}, Lorg/telegram/ui/web/BrowserHistory;->getHistory(Lorg/telegram/messenger/Utilities$Callback;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->history:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->searchResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->selected:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/telegram/ui/web/HistoryFragment;->closeToTabs:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/web/HistoryFragment;->whenClicked:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/web/HistoryFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/web/HistoryFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/web/HistoryFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/HistoryFragment;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/web/HistoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/HistoryFragment;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/web/HistoryFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/HistoryFragment;->searchLoading:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/web/HistoryFragment;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/web/HistoryFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/HistoryFragment;->history:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/web/HistoryFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/HistoryFragment;->searchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static synthetic lambda$createView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/web/HistoryFragment;->history:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clickSelect(Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/web/HistoryFragment$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/HistoryFragment$1;-><init>(Lorg/telegram/ui/web/HistoryFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/web/HistoryFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/web/HistoryFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/telegram/ui/web/HistoryFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/web/HistoryFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v5, Lorg/telegram/ui/web/HistoryFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lorg/telegram/ui/web/HistoryFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lorg/telegram/ui/web/HistoryFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x41

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/web/HistoryFragment$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/HistoryFragment$2;-><init>(Lorg/telegram/ui/web/HistoryFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->WebNoHistory:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->WebNoSearchedHistory:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/web/HistoryFragment$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/HistoryFragment$3;-><init>(Lorg/telegram/ui/web/HistoryFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->history:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_0
    if-ltz v0, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/web/HistoryFragment;->history:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/web/BrowserHistory$Entry;

    iget-wide v8, v7, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    invoke-virtual {p2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x2710

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v8, v9

    if-eq v6, v8, :cond_0

    iget-wide v9, v7, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    div-long/2addr v9, v1

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/web/HistoryFragment;->query:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;->as(Lorg/telegram/ui/web/BrowserHistory$Entry;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/HistoryFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_1
    if-ltz v0, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/web/HistoryFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/web/BrowserHistory$Entry;

    iget-wide v8, v7, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    invoke-virtual {p2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x2710

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v8, v9

    if-eq v6, v8, :cond_2

    iget-wide v9, v7, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    div-long/2addr v9, v1

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/web/HistoryFragment;->query:Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;->as(Lorg/telegram/ui/web/BrowserHistory$Entry;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/web/HistoryFragment;->searchLoading:Z

    if-eqz p2, :cond_4

    const/16 p2, 0x20

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->WebHistory:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    const-class p3, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/HistoryFragment;->clickSelect(Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget-object p2, p0, Lorg/telegram/ui/web/HistoryFragment;->whenClicked:Lorg/telegram/messenger/Utilities$Callback;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/web/BrowserHistory$Entry;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
