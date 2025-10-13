.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method private getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->getSavedGift()Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isPinnedAndSaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    invoke-direct {p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$300(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$300(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z

    move-result v0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$300(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z

    move-result v0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$300(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->isPinnedAndSaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->isPinnedAndSaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$200(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p3

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->reorderPinned(II)V

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateWithoutNotify()V

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->giftsView:Lorg/telegram/ui/Stars/ProfileGiftsView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/ProfileGiftsView;->update()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    if-nez p2, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$200(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->reorderDone()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    :cond_1
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
