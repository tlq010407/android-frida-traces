.class Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

.field final synthetic val$this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    iput-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->val$this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

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
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isActionModeShowed()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->canReorder(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$2500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/16 p1, 0xf

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->this$0:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;->isActionModeShowed()Z

    move-result v0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->canReorder(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->canReorder(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->swapElements(II)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$500(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$StoriesAdapter;->reorderDone()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer$10;->this$1:Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;->access$300(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$BotPreviewsEditLangContainer;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
