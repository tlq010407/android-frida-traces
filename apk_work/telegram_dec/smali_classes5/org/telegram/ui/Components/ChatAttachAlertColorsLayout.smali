.class public Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

.field public currentItemTop:I

.field public gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private itemSize:I

.field private itemsPerRow:I

.field layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field wallpaperConsumer:Landroidx/core/util/Consumer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p1, 0x42a00000    # 80.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    const/4 p1, 0x3

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->currentItemTop:I

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p3, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$3;

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    return p0
.end method


# virtual methods
.method public getCurrentItemTop()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->currentItemTop:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    const v0, 0x7fffffff

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-lt v0, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->currentItemTop:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreMeasure(II)V
    .locals 6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    :goto_0
    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    div-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    mul-int v1, v1, p1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->itemsPerRow:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int p1, p1, v0

    sub-int/2addr v0, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    sub-int p1, p2, p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v1, p1, :cond_3

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_3

    :cond_3
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_3
    const/high16 p2, 0x42500000    # 52.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_4

    goto :goto_4

    :cond_4
    move v0, p1

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->SelectColor:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->wallpaperConsumer:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/WallpapersListActivity;->fillDefaultColors(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
