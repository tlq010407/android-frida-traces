.class public Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchDownloadsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget p2, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x3

    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v0, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    sub-int v2, p1, v0

    sub-int v0, p2, v0

    iget-object p3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    iget p3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    sub-int p3, p1, p3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object p3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v3, v3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v4, v4, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v2, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$200(Lorg/telegram/ui/Components/SearchDownloadsContainer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p3, v3}, Lorg/telegram/messenger/DownloadController;->swapLoadingPriority(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object p3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_0
    return v1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
