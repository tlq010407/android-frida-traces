.class Lorg/telegram/ui/Components/DialogsItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/DialogsItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$deltaX:I

    iput-object p4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$view:Landroid/view/View;

    iput p5, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$deltaY:I

    iput-object p6, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$deltaY:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/DialogCell;->setMoving(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iput-boolean v1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->moving:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object p1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->dispatchFinishedWhenDone()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/DialogCell;->setMoving(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iput-boolean v1, p1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->moving:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$5;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
