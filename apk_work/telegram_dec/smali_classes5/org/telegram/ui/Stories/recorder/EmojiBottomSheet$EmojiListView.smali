.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;
    }
.end annotation


# instance fields
.field private bottomBound:F

.field public emoji:Z

.field private invalidated:Z

.field private final lineDrawables:Ljava/util/ArrayList;

.field private final lineDrawablesTmp:Ljava/util/ArrayList;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field public smoothScrolling:Z

.field private topBound:F

.field private final unusedArrays:Ljava/util/ArrayList;

.field private final unusedLineDrawables:Ljava/util/ArrayList;

.field private final viewsGroupedByLines:Landroid/util/SparseArray;

.field private final whiteFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->smoothScrolling:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->whiteFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollToPosition(II)V

    return-void
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->whiteFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method private scrollToPosition(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-nez v1, :cond_1

    sub-int v1, p1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41100000    # 9.0f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->invalidated:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->topBound:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->bottomBound:F

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->emoji:Z

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    if-eqz v4, :cond_9

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->bottomBound:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->topBound:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->smoothScrolling:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_10

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    iget v10, v10, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->position:I

    if-ne v10, v8, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    if-nez v6, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    goto :goto_8

    :cond_d
    new-instance v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->setLayerNum(I)V

    :goto_8
    iput v8, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->position:I

    invoke-virtual {v6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    :cond_e
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v5, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-lez v9, :cond_f

    if-lez v10, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v11

    move-object v5, v6

    move-object v6, p1

    move-wide v7, v2

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    iput-object v6, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_a

    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_15

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    if-nez v3, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setBounds(FF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->topBound:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->bottomBound:F

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    :cond_0
    return-void
.end method
