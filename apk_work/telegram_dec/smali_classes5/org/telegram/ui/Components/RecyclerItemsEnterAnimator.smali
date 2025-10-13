.class public Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field alwaysCheckItemsAlpha:Z

.field public animateAlphaProgressView:Z

.field currentAnimations:Ljava/util/ArrayList;

.field ignoreView:Ljava/util/HashSet;

.field invalidateAlpha:Z

.field private final listAlphaItems:Landroid/util/SparseArray;

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field preDrawListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listAlphaItems:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->ignoreView:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->animateAlphaProgressView:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->currentAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->preDrawListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->alwaysCheckItemsAlpha:Z

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listAlphaItems:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->currentAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->currentAnimations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->currentAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->preDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->preDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->preDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listAlphaItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->invalidateAlpha:Z

    return-void
.end method

.method public dispatchDraw()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->invalidateAlpha:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->alwaysCheckItemsAlpha:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->ignoreView:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listAlphaItems:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->invalidateAlpha:Z

    :cond_4
    return-void
.end method

.method public getProgressView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_0

    instance-of v4, v3, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public onDetached()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->cancel()V

    return-void
.end method

.method public showItemsAnimated(I)V
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->getProgressView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->ignoreView:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->ignoreView(Landroid/view/View;)V

    iget-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->animateAlphaProgressView:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v5

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    aput v4, v0, v5

    invoke-static {v1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$1;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$1;-><init>(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 p1, p1, -0x1

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;-><init>(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;Landroid/view/View;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->preDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
