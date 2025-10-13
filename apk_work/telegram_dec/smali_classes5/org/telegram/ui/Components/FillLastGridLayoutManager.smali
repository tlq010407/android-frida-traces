.class public Lorg/telegram/ui/Components/FillLastGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field private additionalHeight:I

.field private bind:Z

.field private canScrollVertically:Z

.field private heights:Landroid/util/SparseArray;

.field protected lastItemHeight:I

.field private listHeight:I

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private listWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->heights:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->lastItemHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->bind:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->canScrollVertically:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->additionalHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->heights:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->lastItemHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->bind:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->canScrollVertically:Z

    iput-object p6, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iput p5, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->additionalHeight:I

    return-void
.end method


# virtual methods
.method protected calcLastItemHeight()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listHeight:I

    if-lez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->shouldCalcLastItemHeight()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    if-ge v7, v3, :cond_8

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v11

    add-int/2addr v8, v11

    if-eq v11, v2, :cond_2

    if-le v8, v2, :cond_3

    :cond_2
    move v8, v11

    const/4 v9, 0x1

    :cond_3
    if-nez v9, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->heights:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v11, :cond_5

    iget-object v11, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v11, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->heights:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-boolean v9, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->bind:Z

    if-eqz v9, :cond_6

    invoke-virtual {v1, v11, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_6
    iget-object v9, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v12, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v4

    invoke-static {v12, v13, v14, v15, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    iget v12, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listHeight:I

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->canScrollVertically()Z

    move-result v15

    invoke-static {v12, v13, v14, v9, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v9

    iget-object v12, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12, v4, v9}, Landroid/view/View;->measure(II)V

    iget-object v4, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v10, v4

    iget v4, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listHeight:I

    iget v9, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->additionalHeight:I

    sub-int/2addr v4, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v4, v9

    if-lt v10, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    iget v1, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listHeight:I

    sub-int/2addr v1, v10

    iget v2, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->additionalHeight:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->lastItemHeight:I

    :cond_9
    :goto_3
    return-void
.end method

.method public canScrollVertically()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->canScrollVertically:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;IZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->lastItemHeight:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->heights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->heights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listHeight:I

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listWidth:I

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->listHeight:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->calcLastItemHeight()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public setBind(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->bind:Z

    return-void
.end method

.method public setCanScrollVertically(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FillLastGridLayoutManager;->canScrollVertically:Z

    return-void
.end method

.method protected shouldCalcLastItemHeight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
