.class Lorg/telegram/ui/web/BookmarksFragment$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BookmarksFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private applySearch:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/web/BookmarksFragment;


# direct methods
.method public static synthetic $r8$lambda$22sKrybv2fQ38iu4YIXC2-RA8Xw(Lorg/telegram/ui/web/BookmarksFragment$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BookmarksFragment$2;->lambda$$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$3eupru2wPjiDqmp2SBmTNdSWT-I(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BookmarksFragment$2;->lambda$onTextChanged$0(Lorg/telegram/ui/web/BookmarksFragment;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    new-instance p1, Lorg/telegram/ui/web/BookmarksFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/BookmarksFragment$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/web/BookmarksFragment$2;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->applySearch:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$$1()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v0, v0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->load()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onTextChanged$0(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/web/BookmarksFragment;->access$400(Lorg/telegram/ui/web/BookmarksFragment;)V

    return-void
.end method

.method private scheduleSearch()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->applySearch:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->applySearch:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BookmarksFragment;->access$202(Lorg/telegram/ui/web/BookmarksFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->applySearch:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v0, v0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->detach()V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iput-object v1, v0, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    return-void
.end method

.method public onSearchExpand()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-static {v0}, Lorg/telegram/ui/web/BookmarksFragment;->access$200(Lorg/telegram/ui/web/BookmarksFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-static {v2}, Lorg/telegram/ui/web/BookmarksFragment;->access$200(Lorg/telegram/ui/web/BookmarksFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-static {v2, p1}, Lorg/telegram/ui/web/BookmarksFragment;->access$202(Lorg/telegram/ui/web/BookmarksFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v2, v2, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->detach()V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    new-instance v3, Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    invoke-static {v2}, Lorg/telegram/ui/web/BookmarksFragment;->access$300(Lorg/telegram/ui/web/BookmarksFragment;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    new-instance v6, Lorg/telegram/ui/web/BookmarksFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lorg/telegram/ui/web/BookmarksFragment$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/BookmarksFragment;)V

    invoke-direct {v3, v4, p1, v6}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    iput-object v3, v2, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v2, v2, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    invoke-virtual {v2}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->attach()V

    invoke-direct {p0}, Lorg/telegram/ui/web/BookmarksFragment$2;->scheduleSearch()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object v2, v2, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$2;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    return-void
.end method
