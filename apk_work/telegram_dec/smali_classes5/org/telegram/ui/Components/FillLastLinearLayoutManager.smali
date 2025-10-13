.class public Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private additionalHeight:I

.field private bind:Z

.field private canScrollVertically:Z

.field fixedLastItemHeight:Z

.field private heights:Landroid/util/SparseArray;

.field private lastItemHeight:I

.field private listHeight:I

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private listWidth:I

.field private minimumHeight:I

.field private setMeassuredHeightToLastItem:Z

.field private skipFirstItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->heights:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->lastItemHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->bind:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->canScrollVertically:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMeassuredHeightToLastItem:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->additionalHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->heights:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->lastItemHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->bind:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->canScrollVertically:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMeassuredHeightToLastItem:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iput p4, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->additionalHeight:I

    return-void
.end method

.method private calcLastItemHeight()V
    .locals 12

    iget v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->skipFirstItem:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->heights:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->heights:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->bind:Z

    if-eqz v5, :cond_3

    invoke-virtual {v0, v6, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_3
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v7, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->canScrollVertically()Z

    move-result v11

    invoke-static {v8, v9, v10, v5, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, v7, v5}, Landroid/view/View;->measure(II)V

    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    if-nez v2, :cond_4

    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :cond_4
    iget-boolean v5, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->fixedLastItemHeight:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    add-int/2addr v5, v4

    if-lt v3, v5, :cond_6

    goto :goto_1

    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    if-lt v3, v5, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->fixedLastItemHeight:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->minimumHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    sub-int/2addr v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->additionalHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->lastItemHeight:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->minimumHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    sub-int/2addr v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->additionalHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :goto_3
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->canScrollVertically:Z

    return v0
.end method

.method public getLastItemHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->lastItemHeight:I

    return v0
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setMeassuredHeightToLastItem:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->lastItemHeight:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    invoke-super {p0, p1, p3, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->heights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->heights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listWidth:I

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->listHeight:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public setAdditionalHeight(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->additionalHeight:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public setBind(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->bind:Z

    return-void
.end method

.method public setFixedLastItemHeight()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->fixedLastItemHeight:Z

    return-void
.end method

.method public setMinimumLastViewHeight(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->minimumHeight:I

    return-void
.end method

.method public setSkipFirstItem()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->skipFirstItem:Z

    return-void
.end method
