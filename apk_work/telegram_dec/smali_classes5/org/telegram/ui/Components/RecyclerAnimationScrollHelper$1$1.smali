.class Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

.field final synthetic val$incomingViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->val$incomingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$400(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$300(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopIgnoringView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$200(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$200(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->ignoreView(Landroid/view/View;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$200(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ChildHelper;->getHiddenChildCount()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hidden child count must be 0"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "views count in child helper must be quals views count in recycler view"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->val$incomingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_9

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$finalAnimatableAdapter:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->onAnimationEnd()V

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$200(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$200(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onEndAnimation()V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->access$402(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
