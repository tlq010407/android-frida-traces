.class public abstract Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;
.super Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedMediaListView"
.end annotation


# instance fields
.field private final animationSupportingSortedCells:Ljava/util/ArrayList;

.field private animationSupportingSortedCellsOffset:I

.field protected archivedHintLayout:Landroid/text/StaticLayout;

.field protected archivedHintLayoutLeft:F

.field protected archivedHintLayoutWidth:F

.field protected archivedHintPaint:Landroid/text/TextPaint;

.field final drawingViews:Ljava/util/ArrayList;

.field final drawingViews2:Ljava/util/ArrayList;

.field final drawingViews3:Ljava/util/ArrayList;

.field final excludeDrawViews:Ljava/util/HashSet;

.field poller:Lorg/telegram/ui/Stories/UserListPoller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->excludeDrawViews:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews2:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews3:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public checkHighlightCell(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMovingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isThisListView()Z

    move-result v3

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    if-eqz v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-ne v3, v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v5

    const/4 v13, 0x1

    if-eqz v5, :cond_18

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v14, -0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v6, v15, :cond_4

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v15

    if-ltz v15, :cond_1

    if-gt v15, v7, :cond_0

    if-ne v7, v5, :cond_1

    :cond_0
    move v7, v15

    :cond_1
    if-ltz v15, :cond_3

    if-lt v15, v14, :cond_2

    if-ne v14, v5, :cond_3

    :cond_2
    move v14, v15

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    const/4 v12, -0x1

    const/4 v15, -0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v6, v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_6

    if-gt v9, v12, :cond_5

    if-ne v12, v5, :cond_6

    :cond_5
    move v12, v9

    :cond_6
    if-ltz v9, :cond_8

    if-lt v9, v15, :cond_7

    if-ne v15, v5, :cond_8

    :cond_7
    move v15, v9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_9
    if-ltz v14, :cond_10

    if-ltz v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getPinchCenterPosition()I

    move-result v5

    if-ltz v5, :cond_10

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getPinchCenterPosition()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v10

    div-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v10

    div-int v10, v15, v10

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getPinchCenterPosition()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v19

    div-int v10, v10, v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v19

    div-int v19, v14, v19

    sub-int v10, v10, v19

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v10

    div-int v10, v14, v10

    sub-int/2addr v10, v9

    if-gez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v11

    if-lt v10, v11, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v10

    div-int v10, v15, v10

    add-int/2addr v10, v9

    if-gez v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v11

    if-le v10, v11, :cond_c

    :cond_b
    const/4 v9, 0x0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v10

    div-int/2addr v12, v10

    add-int/2addr v12, v9

    if-lt v12, v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v10

    if-gt v5, v10, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v5

    div-int/2addr v7, v5

    sub-int/2addr v7, v9

    if-lt v7, v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v6

    if-ge v5, v6, :cond_f

    :cond_e
    const/4 v9, 0x0

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getPinchCenterPosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v6

    rem-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v6

    sub-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v5, v6

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->excludeDrawViews:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    iput v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCellsOffset:I

    const/4 v6, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-gt v10, v11, :cond_13

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gez v10, :cond_11

    goto :goto_4

    :cond_11
    instance-of v10, v7, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v10, :cond_12

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    check-cast v7, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_13

    iget v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCellsOffset:I

    add-int/2addr v7, v13

    iput v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCellsOffset:I

    :cond_13
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_14
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v10

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_15
    const/4 v1, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_16
    const/4 v2, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    mul-float v7, v7, v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v7, v10

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v7

    sub-float v10, v12, v7

    mul-float v1, v1, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v7

    mul-float v2, v2, v7

    add-float/2addr v1, v2

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setVisibilityAlpha(F)V

    :cond_17
    move v10, v9

    move v9, v5

    goto :goto_7

    :cond_18
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    move v11, v3

    const/4 v6, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/high16 v12, 0x40000000    # 2.0f

    if-ge v6, v1, :cond_21

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gt v2, v3, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gez v2, :cond_1a

    :cond_19
    move-object/from16 v21, v4

    goto/16 :goto_c

    :cond_1a
    instance-of v1, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->checkHighlightCell(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMessageAlphaEnter()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMessageAlphaEnter()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMessageAlphaEnter()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_9

    :cond_1b
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v3

    xor-int/2addr v3, v13

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageAlpha(FZ)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v2, v9

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v5

    div-int/2addr v3, v5

    add-int/2addr v3, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v5

    mul-int v3, v3, v5

    add-int/2addr v3, v2

    iget v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCellsOffset:I

    add-int/2addr v3, v5

    if-ltz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v5

    if-ge v2, v5, :cond_1d

    if-ltz v3, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v2, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v5, v7

    div-float/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v4

    const/16 v20, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    sub-float/2addr v12, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    mul-float v12, v12, v2

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationX(F)V

    sub-float/2addr v13, v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    mul-float v13, v13, v2

    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->excludeDrawViews:Ljava/util/HashSet;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->animationSupportingSortedCells:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    cmpg-float v2, v2, v11

    if-gez v2, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v11

    :cond_1c
    const/4 v2, 0x1

    goto :goto_a

    :cond_1d
    move-object/from16 v21, v4

    const/4 v2, 0x0

    :goto_a
    if-nez v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :goto_b
    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    goto :goto_e

    :cond_1e
    move-object/from16 v21, v4

    goto :goto_e

    :goto_c
    instance-of v1, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v1, :cond_20

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    :cond_1f
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_b

    :cond_20
    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v21

    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v1

    const/high16 v13, 0x3fa00000    # 1.25f

    const/high16 v21, 0x437f0000    # 255.0f

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v1, v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    add-float v22, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v1, v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    add-float v7, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float v23, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float v24, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    float-to-double v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isStories()Z

    move-result v2

    if-eqz v2, :cond_22

    mul-float v1, v1, v13

    :cond_22
    move/from16 v25, v1

    const/4 v6, 0x0

    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->excludeDrawViews:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move/from16 v26, v6

    move/from16 v29, v7

    const/16 v16, 0x0

    const/16 v19, 0x0

    goto/16 :goto_11

    :cond_23
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v2

    rem-int/2addr v1, v2

    sub-int v2, v1, v9

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v16

    sub-int v16, v16, v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v19

    div-int v16, v16, v19

    sub-int v3, v16, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v2

    mul-float v4, v4, v23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v26

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v26, v17, v26

    mul-float v4, v4, v26

    int-to-float v1, v1

    mul-float v1, v1, v24

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v26

    mul-float v1, v1, v26

    add-float/2addr v4, v1

    int-to-float v1, v3

    mul-float v1, v1, v25

    add-float/2addr v1, v11

    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v5, v7, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v1

    if-ge v2, v1, :cond_24

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, v22

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v26, v1, v22

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v1

    mul-float v1, v1, v21

    float-to-int v3, v1

    const/16 v27, 0x0

    const/16 v28, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move/from16 v29, v3

    const/16 v19, 0x0

    move/from16 v3, v27

    const/16 v16, 0x0

    move-object v13, v5

    move/from16 v5, v26

    move/from16 v26, v6

    move/from16 v6, v29

    move/from16 v29, v7

    move/from16 v7, v28

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual {v13, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    :cond_24
    move-object v13, v5

    move/from16 v26, v6

    move/from16 v29, v7

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-virtual {v13, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_11
    add-int/lit8 v6, v26, 0x1

    move/from16 v7, v29

    const/high16 v13, 0x3fa00000    # 1.25f

    goto/16 :goto_f

    :cond_25
    const/16 v16, 0x0

    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    add-float v13, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    add-float v15, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isStories()Z

    move-result v2

    if-eqz v2, :cond_26

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v1, v1, v2

    :cond_26
    move v12, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float v18, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v2

    int-to-float v2, v2

    div-float v19, v1, v2

    const/4 v7, 0x0

    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getColumnsCount()I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v2, v10

    add-int v3, v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v4

    const/16 v20, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v15, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    int-to-float v1, v1

    mul-float v1, v1, v18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v1, v1, v4

    int-to-float v4, v3

    mul-float v4, v4, v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    int-to-float v2, v2

    mul-float v2, v2, v12

    add-float/2addr v2, v11

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getAnimateToColumnsCount()I

    move-result v1

    if-ge v3, v1, :cond_27

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, v13

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v1, v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v1

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v1, v17, v1

    mul-float v1, v1, v21

    float-to-int v3, v1

    const/16 v22, 0x0

    const/16 v23, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move/from16 v24, v3

    move/from16 v3, v22

    move-object/from16 v30, v6

    move/from16 v6, v24

    move/from16 v22, v7

    move/from16 v7, v23

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object/from16 v1, v30

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13

    :cond_27
    move-object v1, v6

    move/from16 v22, v7

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v22, 0x1

    goto/16 :goto_12

    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getChangeColumnsProgress()F

    move-result v1

    mul-float v1, v1, v21

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 v11, 0x0

    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_29

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawCrossafadeImage(Landroid/graphics/Canvas;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_19

    :cond_2a
    move-object/from16 v21, v4

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v11, v1, :cond_2f

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10700(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMessageAlphaEnter()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMessageAlphaEnter()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMessageAlphaEnter()Landroid/util/SparseArray;

    move-result-object v3

    move-object/from16 v5, v21

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    goto :goto_17

    :cond_2b
    move-object/from16 v5, v21

    goto :goto_16

    :cond_2c
    move-object/from16 v5, v21

    const/4 v4, 0x0

    :goto_16
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_17
    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_2d

    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setEnterAnimationAlpha(F)V

    goto :goto_18

    :cond_2d
    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_2e

    check-cast v1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Cells/SharedAudioCell;->setEnterAnimationAlpha(F)V

    :cond_2e
    :goto_18
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v5

    goto :goto_15

    :cond_2f
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_30
    :goto_19
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->getMovingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isThisListView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaListView;->isChangeColumnsAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getAnimateToColumnsCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getChangeColumnsProgress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnsCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getMessageAlphaEnter()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMovingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinchCenterPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportingAdapter()Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportingListView()Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isChangeColumnsAnimation()Z
.end method

.method public abstract isStories()Z
.end method

.method public isThisListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
