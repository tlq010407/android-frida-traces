.class Lorg/telegram/ui/Components/FilterTabsView$4;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FilterTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method public static synthetic $r8$lambda$DghHiTLqtaEB-diK1Uy8XexT6xo(Lorg/telegram/ui/Components/FilterTabsView$TabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4;->lambda$animateMoveImpl$1(Lorg/telegram/ui/Components/FilterTabsView$TabView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdoggU4rMPOjHMdROyrmpFPK3SA(Lorg/telegram/ui/Components/FilterTabsView$4;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4;->lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method

.method private static synthetic lambda$animateMoveImpl$1(Lorg/telegram/ui/Components/FilterTabsView$TabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    add-int v3, p3, p2

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v4, p4, p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p5, v3

    sub-int p3, p6, v4

    if-eqz p2, :cond_0

    neg-int p4, p2

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    if-eqz p3, :cond_1

    neg-int p4, p3

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput v1, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    iput-boolean v7, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v1, p3

    move-object v2, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v7

    :cond_4
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$4$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$4;Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->clearTransitionParams()V

    :cond_0
    return-void
.end method

.method public onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->clearTransitionParams()V

    :cond_0
    return-void
.end method

.method public runPendingAnimations()V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    new-array v0, v1, [F

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V

    return-void
.end method
