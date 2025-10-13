.class abstract Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaPage"
.end annotation


# instance fields
.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationSupportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private animationSupportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

.field private buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field public fastScrollAnimator:Landroid/animation/ObjectAnimator;

.field public fastScrollEnabled:Z

.field public fastScrollHideHintRunnable:Ljava/lang/Runnable;

.field public fastScrollHinWasShown:Z

.field public fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

.field public highlightAnimation:Z

.field public highlightMessageId:I

.field public highlightProgress:F

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public lastCheckScrollTime:J

.field private layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private listView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

.field private progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private searchViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private selectedType:I

.field private viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    return p1
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->searchViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->searchViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method static synthetic access$11102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    return-object p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    return-object p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/StickerEmptyView;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/DefaultItemAnimator;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ClippingImageView;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object p1
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static synthetic access$6702(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/FlickerLoadingView;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    return-object p0
.end method

.method static synthetic access$8302(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    return-object p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->listView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getScrollBarY()I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result p1

    const v0, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    :cond_2
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingListView:Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
