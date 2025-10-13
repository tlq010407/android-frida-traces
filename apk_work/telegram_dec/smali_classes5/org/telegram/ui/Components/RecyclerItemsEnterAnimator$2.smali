.class Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field final synthetic val$finalFrom:I

.field final synthetic val$finalProgressView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$g2GB4Jel2oVNqnYddJpDMzOEvxE(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->lambda$onPreDraw$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->val$finalProgressView:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->val$finalFrom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$100(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->invalidateAlpha:Z

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->preDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v5}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v6}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->val$finalProgressView:Landroid/view/View;

    if-eq v5, v7, :cond_0

    iget v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->val$finalFrom:I

    sub-int/2addr v7, v0

    if-lt v6, v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$100(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Landroid/util/SparseArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$100(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Landroid/util/SparseArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iput-boolean v0, v7, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->invalidateAlpha:Z

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-static {v7}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->access$000(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v5, v5, v7

    float-to-int v5, v5

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;I)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2$1;

    invoke-direct {v8, p0, v6}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2$1;-><init>(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;I)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v5, v5

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v0, [Landroid/animation/Animator;

    aput-object v7, v5, v3

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;->this$0:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->currentAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2$2;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2$2;-><init>(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator$2;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
