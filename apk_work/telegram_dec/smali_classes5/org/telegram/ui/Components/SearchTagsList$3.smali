.class Lorg/telegram/ui/Components/SearchTagsList$3;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchTagsList;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$3;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 7

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p2, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->startAnimate()V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v3, p3, v0

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    float-to-int p3, p3

    add-int v4, p4, p3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p3, p5, v3

    sub-int p4, p6, v4

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p3, :cond_2

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    if-eqz p4, :cond_3

    neg-int p3, p4

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v1, p3

    move-object v2, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->checkIsRunning()V

    const/4 p1, 0x1

    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
