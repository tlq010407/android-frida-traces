.class Lorg/telegram/ui/web/BookmarksFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
.method constructor <init>(Lorg/telegram/ui/web/BookmarksFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$3;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$3;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$3;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    invoke-static {p1}, Lorg/telegram/ui/web/BookmarksFragment;->access$200(Lorg/telegram/ui/web/BookmarksFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$3;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p1, p1, Lorg/telegram/ui/web/BookmarksFragment;->list:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/web/AddressBarList$BookmarksList;->load()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$3;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p1, p1, Lorg/telegram/ui/web/BookmarksFragment;->searchList:Lorg/telegram/ui/web/AddressBarList$BookmarksList;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/BookmarksFragment$3;->this$0:Lorg/telegram/ui/web/BookmarksFragment;

    iget-object p2, p1, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p2, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    return-void
.end method
