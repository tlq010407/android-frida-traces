.class public abstract Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/Premium/PagerHeaderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$Adapter;,
        Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;
    }
.end annotation


# instance fields
.field autoPlayEnabled:Z

.field autoScrollRunnable:Ljava/lang/Runnable;

.field private checkEffect:Z

.field comparator:Ljava/util/Comparator;

.field private final currentAccount:I

.field firstDraw:Z

.field firstMeasure:Z

.field haptic:Z

.field hasSelectedView:Z

.field interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field isVisible:Z

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field oldSelectedView:Landroid/view/View;

.field private final premiumStickers:Ljava/util/ArrayList;

.field selectStickerOnNextLayout:I

.field private size:I

.field sortedView:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$IAlhQFwWgG_CVyqgyd12BBGJWNU(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->lambda$onLayout$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jLjmT5YXAroozP1EJKf9h693CHo(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lz8HK1mQJjBpR5yE6PkdsLHYANo(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->lambda$new$0(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstMeasure:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstDraw:Z

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->comparator:Ljava/util/Comparator;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->selectStickerOnNextLayout:I

    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->currentAccount:I

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$Adapter;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$1;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->preloadPremiumPreviewStickers()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->setStickers()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->drawEffectForView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->scheduleAutoScroll()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->size:I

    return p0
.end method

.method private drawEffectForView(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->hasSelectedView:Z

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    if-ne v3, p1, :cond_1

    invoke-virtual {v3, v1, v1, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->setDrawImage(ZZZ)V

    goto :goto_2

    :cond_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->hasSelectedView:Z

    xor-int/2addr v4, v1

    invoke-virtual {v3, v4, v0, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->setDrawImage(ZZZ)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;)I
    .locals 1

    iget p0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->progress:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    iget p1, p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->progress:F

    mul-float p1, p1, v0

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->drawEffectForView(Landroid/view/View;Z)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->haptic:Z

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p0, p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLayout$2()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    rem-int v0, v1, v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->selectStickerOnNextLayout:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->drawEffectForView(Landroid/view/View;Z)V

    return-void
.end method

.method private scheduleAutoScroll()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoPlayEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa8c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private setStickers()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->premiumPreviewStickers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumStickersPreviewLoaded:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->setStickers()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->isVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_1

    sub-float v4, v3, v4

    :cond_1
    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->progress:F

    iget-object v6, v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v5, v3

    mul-float v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstDraw:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->checkEffect:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->oldSelectedView:Landroid/view/View;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstDraw:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->drawEffectForView(Landroid/view/View;Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstDraw:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->checkEffect:Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->oldSelectedView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->oldSelectedView:Landroid/view/View;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->haptic:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->sortedView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumStickersPreviewLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->scheduleAutoScroll()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumStickersPreviewLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstMeasure:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->premiumStickers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->firstMeasure:Z

    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->selectStickerOnNextLayout:I

    if-lez p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->drawEffectForView(Landroid/view/View;Z)V

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->selectStickerOnNextLayout:I

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->size:I

    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :goto_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public setAutoPlayEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoPlayEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoPlayEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->scheduleAutoScroll()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->checkEffect:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->drawEffectForView(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOffset(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->isVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->isVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
