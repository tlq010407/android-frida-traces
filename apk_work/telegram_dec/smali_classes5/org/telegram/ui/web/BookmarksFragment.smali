.class public Lorg/telegram/ui/web/BookmarksFragment;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"


# instance fields
.field private final addedUrls:Ljava/util/HashSet;

.field private final closeToTabs:Ljava/lang/Runnable;

.field private gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

.field private query:Ljava/lang/String;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

.field public selected:Ljava/util/HashSet;

.field private selectedCount:Lorg/telegram/ui/Components/NumberTextView;

.field private final whenClicked:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$0Ef0Z-7zGzug8jwvT6D_zo0-aJ0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BookmarksFragment;->lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1L94drX6B-ftpJb_3oLsyB2j9vU(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BookmarksFragment;->updateWithOffset()V

    return-void
.end method

.method public static synthetic $r8$lambda$9pLNWt4i1abWYTli34IBZry2f6c(JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BookmarksFragment;->lambda$gotoMessage$1(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$r3rVwHkXykLYszWA4pqNRo0nuBw(Lorg/telegram/ui/web/BookmarksFragment;Ljava/util/HashSet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BookmarksFragment;->lambda$deleteSelectedMessages$0(Ljava/util/HashSet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    new-instance v0, Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BookmarksFragment;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->addedUrls:Ljava/util/HashSet;

    iput-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment;->closeToTabs:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->whenClicked:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/web/BookmarksFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/web/BookmarksFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/web/BookmarksFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/web/BookmarksFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/web/BookmarksFragment;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/web/BookmarksFragment;->updateWithOffset()V

    return-void
.end method

.method private static synthetic lambda$createView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$deleteSelectedMessages$0(Ljava/util/HashSet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 9

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->delete(Ljava/util/ArrayList;)V

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->delete(Ljava/util/ArrayList;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private static synthetic lambda$gotoMessage$1(JI)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChatActivity;->of(JI)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method private updateWithOffset()V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, v3, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public clickSelect(Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V
    .locals 3

    check-cast p2, Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BookmarksFragment;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/web/BookmarksFragment;->setSelected(Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/web/BookmarksFragment;->setSelected(Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->setChecked(Z)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {p1, v1, v2, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;ZZZ)V

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

    new-instance v2, Lorg/telegram/ui/web/BookmarksFragment$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BookmarksFragment$1;-><init>(Lorg/telegram/ui/web/BookmarksFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v5, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selectedCount:Lorg/telegram/ui/Components/NumberTextView;

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

    sget v2, Lorg/telegram/messenger/R$id;->menu_link:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_message:I

    const/high16 v6, 0x42580000    # 54.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/messenger/R$string;->AccDescrGoToMessage:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v5, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$id;->menu_delete:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

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

    new-instance v2, Lorg/telegram/ui/web/BookmarksFragment$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BookmarksFragment$2;-><init>(Lorg/telegram/ui/web/BookmarksFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

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

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/web/BookmarksFragment$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/BookmarksFragment$3;-><init>(Lorg/telegram/ui/web/BookmarksFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p1, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/messenger/R$string;->WebNoBookmarks:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public deleteSelectedMessages()V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-object v6, v6, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->links:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v8, v4, :cond_1

    move-object v5, v7

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    iget-object v6, v6, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->links:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v8, v4, :cond_3

    move-object v5, v7

    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "DeleteOptionsTitle"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    const-string v1, "AreYouSureUnsaveSingleMessage"

    goto :goto_1

    :cond_6
    const-string v1, "AreYouSureUnsaveFewMessages"

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/BookmarksFragment;Ljava/util/HashSet;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->addedUrls:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "@"

    const-string v2, "$"

    const-string v3, "#"

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-object p2, p2, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->links:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-static {v5}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/web/BookmarksFragment;->addedUrls:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v0}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;->as(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/BookmarksFragment;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-boolean p2, p2, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->endReached:Z

    if-nez p2, :cond_13

    goto/16 :goto_7

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-object p2, p2, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->links:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-static {v5}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/web/BookmarksFragment;->addedUrls:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v7

    if-eqz v5, :cond_8

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v8, :cond_8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v8, :cond_8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_2

    :cond_8
    move-object v8, v4

    :goto_2
    if-eqz v8, :cond_9

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_b

    iget-object v9, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_a
    iget-object v7, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    goto :goto_4

    :cond_b
    :goto_3
    move-object v7, v4

    :goto_4
    if-eqz v8, :cond_c

    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move-object v8, v4

    :goto_5
    iget-object v9, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    invoke-static {v6, v9}, Lorg/telegram/ui/web/BookmarksFragment;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    invoke-static {v7, v6}, Lorg/telegram/ui/web/BookmarksFragment;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    invoke-static {v8, v6}, Lorg/telegram/ui/web/BookmarksFragment;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_1

    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;->as(Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/BookmarksFragment;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-object p2, p2, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->links:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-static {v5}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_6

    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/web/BookmarksFragment;->addedUrls:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/web/BookmarksFragment;->query:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;->as(Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {p0, v5}, Lorg/telegram/ui/web/BookmarksFragment;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-boolean p2, p2, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->endReached:Z

    if-nez p2, :cond_13

    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v0, 0x20

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_14

    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$string;->WebBookmarks:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoMessage()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget-object v3, p0, Lorg/telegram/ui/web/BookmarksFragment;->closeToTabs:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_1
    new-instance v3, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/web/BookmarksFragment$$ExternalSyntheticLambda2;-><init>(JI)V

    const-wide/16 v0, 0x50

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
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

.method public isSelected(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BookmarksFragment;->clickSelect(Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->whenClicked:Lorg/telegram/messenger/Utilities$Callback;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    invoke-virtual {v0}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->attach()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    invoke-virtual {v0}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->detach()V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const-class p3, Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BookmarksFragment;->clickSelect(Lorg/telegram/ui/Components/UItem;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSelected(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
