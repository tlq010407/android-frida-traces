.class Lorg/telegram/ui/web/BookmarksFragment$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
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
.field final synthetic this$0:Lorg/telegram/ui/web/BookmarksFragment;


# direct methods
.method public static synthetic $r8$lambda$zxfcA_nqyu0i6_159jgYkj8d1bM(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BookmarksFragment$1;->lambda$onItemClick$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onItemClick$0(Landroid/view/View;)V
    .locals 1

    instance-of v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-static {p1}, Lorg/telegram/ui/web/BookmarksFragment;->access$000(Lorg/telegram/ui/web/BookmarksFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-static {p1}, Lorg/telegram/ui/web/BookmarksFragment;->access$100(Lorg/telegram/ui/web/BookmarksFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p1, p1, Lorg/telegram/ui/web/BookmarksFragment;->selected:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v0, Lorg/telegram/ui/web/BookmarksFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/web/BookmarksFragment$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_delete:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BookmarksFragment;->deleteSelectedMessages()V

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$id;->menu_link:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$1;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BookmarksFragment;->gotoMessage()V

    :cond_3
    :goto_0
    return-void
.end method
