.class public Lorg/telegram/ui/RecyclerListViewScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field lastScrolled:I

.field final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$sLSlmmXDcqgF7MGTMVZRY6vndcs(Lorg/telegram/ui/RecyclerListViewScroller;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/RecyclerListViewScroller;->lambda$smoothScrollBy$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/RecyclerListViewScroller;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method private synthetic lambda$smoothScrollBy$0(ILandroid/animation/ValueAnimator;)V
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lorg/telegram/ui/RecyclerListViewScroller;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->lastScrolled:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iput p1, p0, Lorg/telegram/ui/RecyclerListViewScroller;->lastScrolled:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public smoothScrollBy(I)V
    .locals 3

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(IJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IJLandroid/view/animation/Interpolator;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->lastScrolled:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/RecyclerListViewScroller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/RecyclerListViewScroller$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/RecyclerListViewScroller;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/RecyclerListViewScroller$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/RecyclerListViewScroller$1;-><init>(Lorg/telegram/ui/RecyclerListViewScroller;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/RecyclerListViewScroller;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
