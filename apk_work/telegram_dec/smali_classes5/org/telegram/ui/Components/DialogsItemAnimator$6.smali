.class Lorg/telegram/ui/Components/DialogsItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/DialogsItemAnimator;->animateChangeImpl(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object p1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->dispatchFinishedWhenDone()V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object p1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->this$0:Lorg/telegram/ui/Components/DialogsItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;->val$changeInfo:Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
