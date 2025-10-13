.class public Lorg/telegram/ui/Components/UniversalRecyclerView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;
    }
.end annotation


# instance fields
.field public final adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private doNotDetachViews:Z

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private reorderingAllowed:Z

.field private reorderingOnOtherAxis:Z


# direct methods
.method public static synthetic $r8$lambda$HwQsKjqfgq0fW-aQ2U15BPbk-4E(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$new$0(Lorg/telegram/messenger/Utilities$Callback5;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$I0po8Q-3OzSo_m5RcUZxbHlP6cs(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$allowReorder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JUUl8vCG0K15oU0YYo2pTFhfxTg(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$new$1(Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 0
    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 13

    .line 0
    move-object v8, p0

    move-object v2, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v0, p9

    move-object/from16 v7, p8

    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, -0x1

    const/4 v11, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$1;

    move/from16 v1, p10

    invoke-direct {v0, p0, p1, v1, v11}, Lorg/telegram/ui/Components/UniversalRecyclerView$1;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;IZ)V

    iput-object v0, v8, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/UniversalRecyclerView$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView$2;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;I)V

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$3;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView$3;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    new-instance v12, Lorg/telegram/ui/Components/UniversalAdapter;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v8, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v9, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v9}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    :cond_1
    if-eqz v10, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v10}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/UniversalRecyclerView$4;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V
    .locals 8

    .line 0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->doNotDetachViews:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingOnOtherAxis:Z

    return p0
.end method

.method private synthetic lambda$allowReorder$2(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/Utilities$Callback5;Landroid/view/View;IFF)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/Utilities$Callback5Return;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public allowReorder(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorder(Z)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/UniversalAdapter;->drawWhiteSections(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public doNotDetachViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->doNotDetachViews:Z

    return-void
.end method

.method public findPositionByItemId(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public findViewByItemId(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_1

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isReorderAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    return v0
.end method

.method public listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;Z)V

    return-void
.end method

.method public listenReorder(Lorg/telegram/messenger/Utilities$Callback2;Z)V
    .locals 2

    .line 0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingOnOtherAxis:Z

    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/UniversalRecyclerView$1;)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public makeHorizontal()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/telegram/ui/Components/UniversalRecyclerView$5;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v1, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView$6;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;I)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$7;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView$7;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected swappedElements()V
    .locals 0

    return-void
.end method
