.class Lorg/telegram/ui/Components/ReactedUsersListView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactedUsersListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

.field final synthetic val$llm:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->val$llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ReactedUsersListView;->canLoadMore:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->val$llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactedUsersListView;->access$300(Lorg/telegram/ui/Components/ReactedUsersListView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ReactedUsersListView;->access$400(Lorg/telegram/ui/Components/ReactedUsersListView;)I

    move-result p3

    sub-int/2addr p2, p3

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView$3;->this$0:Lorg/telegram/ui/Components/ReactedUsersListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactedUsersListView;->access$500(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    :cond_0
    return-void
.end method
