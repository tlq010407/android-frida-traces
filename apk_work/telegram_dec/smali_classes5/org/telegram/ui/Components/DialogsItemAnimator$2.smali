.class Lorg/telegram/ui/Components/DialogsItemAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/DialogsItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

.field final synthetic val$dialogCell:Lorg/telegram/ui/Cells/DialogCell;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/DialogCell;->setClipProgress(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$dialogCell:Lorg/telegram/ui/Cells/DialogCell;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object p1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
