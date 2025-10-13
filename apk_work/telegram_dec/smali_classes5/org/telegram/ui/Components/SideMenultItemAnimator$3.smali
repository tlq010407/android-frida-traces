.class Lorg/telegram/ui/Components/SideMenultItemAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SideMenultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SideMenultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SideMenultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->this$0:Lorg/telegram/ui/Components/SideMenultItemAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$deltaX:I

    iput-object p4, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$view:Landroid/view/View;

    iput p5, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$deltaY:I

    iput-object p6, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$deltaY:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->this$0:Lorg/telegram/ui/Components/SideMenultItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->this$0:Lorg/telegram/ui/Components/SideMenultItemAnimator;

    iget-object p1, p1, Lorg/telegram/ui/Components/SideMenultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->this$0:Lorg/telegram/ui/Components/SideMenultItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SideMenultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->this$0:Lorg/telegram/ui/Components/SideMenultItemAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/SideMenultItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
