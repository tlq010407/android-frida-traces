.class public Lorg/telegram/ui/Components/UniversalAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UniversalAdapter$Section;,
        Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;
    }
.end annotation


# instance fields
.field private allowReorder:Z

.field private applyBackground:Z

.field private chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

.field private final classGuid:I

.field private final context:Landroid/content/Context;

.field private final currentAccount:I

.field private currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

.field private currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

.field private final dialog:Z

.field protected fillItems:Lorg/telegram/messenger/Utilities$Callback2;

.field private final items:Ljava/util/ArrayList;

.field protected final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final oldItems:Ljava/util/ArrayList;

.field private onReordered:Lorg/telegram/messenger/Utilities$Callback2;

.field private orderChanged:Z

.field private orderChangedId:I

.field private final reorderSections:Ljava/util/ArrayList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final whiteSections:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$2uPIrsaVq0AF0234k0rcGHRdLO0(Lorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UItem;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/UItem;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7u_o9PZvvbLi9wKZ2NUwR6atNjQ(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->lambda$onBindViewHolder$3(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsVChfixuvtQlcbaXLGxMbyCLDI(Lorg/telegram/ui/Components/UniversalAdapter;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->lambda$update$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkYqYy_dtBSQIc15WzODxdmLimw(Lorg/telegram/ui/Components/UItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->applyBackground:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    iput p4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->classGuid:I

    iput-boolean p5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    iput-object p6, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    iput-object p7, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private callReorder(I)V
    .locals 5

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget v0, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private findViewByItemObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 p1, 0x0

    if-ne v1, v3, :cond_2

    return-object p1

    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, v3, :cond_3

    if-ne v4, v1, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method private hasDivider(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result p1

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/UItem;I)V
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/UItem;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;
    .locals 1

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->findViewByItemObject(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$onBindViewHolder$3(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$update$0(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private updateColors(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$Colorable;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$Colorable;->updateColors()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->shouldApplyBackground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public drawWhiteSections(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    iget v2, v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget-boolean v3, p0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p2, p1, v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;III)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getItem(I)Lorg/telegram/ui/Components/UItem;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/UItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method public getReorderSectionId(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/UniversalAdapter$Section;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v0, v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lorg/telegram/ui/Components/UItem;->enabled:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public isReorderItem(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShadow(I)Z
    .locals 3

    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->isShadow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x22

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    const/4 v5, 0x1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v15

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateColors(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v10, 0x0

    if-lt v9, v1, :cond_2

    invoke-static {v9}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, v6, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    instance-of v3, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v10

    :goto_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move v3, v15

    move-object/from16 v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UItem$UItemFactory;->bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    goto/16 :goto_1f

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    const/16 v11, 0xc

    const/16 v12, 0x8

    const-string v13, ""

    const/4 v14, -0x1

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1f

    :pswitch_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget v2, v0, Lorg/telegram/ui/Cells/HeaderCell;->id:I

    iget v7, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, v7, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/HeaderCell;->id:I

    goto/16 :goto_1f

    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget v7, v0, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    iget v8, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v7, v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2, v15, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz v1, :cond_5

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_5
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    const/16 v1, 0x28

    if-ne v9, v1, :cond_41

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->hideCollapseArrow()V

    goto/16 :goto_1f

    :cond_6
    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    new-instance v3, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v4, v0}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1f

    :pswitch_2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->pad:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setUserOrChat(Lorg/telegram/tgnet/TLObject;)V

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget v2, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    iget v7, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, v7, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->setNeedDivider(Z)V

    goto/16 :goto_1f

    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->pad:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    iget-object v11, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v13, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    iget v2, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_2
    const-string v12, ""

    move-object v10, v0

    move v14, v15

    move v15, v5

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/CheckBoxCell;->itemId:I

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz v1, :cond_9

    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_9
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    const/16 v1, 0x24

    if-eq v9, v1, :cond_a

    const/16 v1, 0x29

    if-ne v9, v1, :cond_41

    :cond_a
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCollapseButton(ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1f

    :pswitch_4
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto/16 :goto_1f

    :pswitch_5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_b

    move-object v10, v1

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    :cond_b
    iput-boolean v15, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    if-nez v10, :cond_c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v0

    :goto_3
    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_1f

    :cond_c
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v17

    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v19, v10

    move/from16 v20, v1

    goto :goto_3

    :pswitch_6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iget-boolean v7, v4, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v7, :cond_d

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_d

    move-object v7, v1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-eqz v7, :cond_d

    if-eqz v7, :cond_10

    const-string v8, "BotUsers"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_d
    iget-boolean v7, v4, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    if-eqz v7, :cond_10

    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_e

    move-object v7, v1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_e
    instance-of v7, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v7, :cond_f

    move-object v7, v1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_f
    move-object v7, v10

    :goto_4
    if-eqz v7, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_10
    move-object v7, v13

    :goto_5
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_16

    move-object v8, v1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v9, :cond_14

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_11

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v11, "Subscribers"

    :goto_6
    invoke-static {v11, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_11
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v11, "Members"

    goto :goto_6

    :goto_7
    instance-of v11, v7, Landroid/text/SpannableStringBuilder;

    const-string v12, ", "

    if-eqz v11, :cond_12

    move-object v2, v7

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    :cond_12
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/CharSequence;

    aput-object v7, v11, v3

    aput-object v12, v11, v5

    aput-object v9, v11, v2

    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_8

    :cond_13
    move-object v7, v9

    :cond_14
    :goto_8
    iget-object v13, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_15
    :goto_9
    move-object/from16 v20, v7

    move-object/from16 v19, v13

    goto :goto_a

    :cond_16
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_15

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :goto_a
    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of v5, v3, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v5, :cond_17

    move-object v10, v3

    check-cast v10, Lorg/telegram/messenger/Utilities$Callback;

    :cond_17
    invoke-virtual {v0, v2, v10}, Lorg/telegram/ui/Cells/ProfileSearchCell;->allowBotOpenButton(ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->red:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setRectangularAvatar(Z)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    iput-boolean v15, v0, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    goto/16 :goto_1f

    :pswitch_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GraySectionCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v5, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    goto/16 :goto_1f

    :cond_18
    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1f

    :pswitch_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextRightIconCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget v2, v4, Lorg/telegram/ui/Components/UItem;->iconResId:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextRightIconCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Cells/TextRightIconCell;->setDivider(Z)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v1

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1f

    :pswitch_9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;

    if-eqz v2, :cond_41

    check-cast v1, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;->set(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;Z)V

    goto/16 :goto_1f

    :pswitch_a
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_19
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v2, v4, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-direct {v1, v14, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1f

    :pswitch_b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    iget-wide v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->dialogId:J

    iget-object v7, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_1a

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_c

    :cond_1a
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_1b

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    goto :goto_c

    :cond_1b
    const-wide/16 v7, 0x0

    :goto_c
    cmp-long v9, v1, v7

    if-nez v9, :cond_1c

    const/4 v1, 0x1

    goto :goto_d

    :cond_1c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setIsSendAs(ZZ)V

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->set(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChecked(ZZ)V

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setDivider(Z)V

    goto/16 :goto_1f

    :pswitch_c
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-virtual {v0, v10, v15}, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;->set(Lorg/telegram/tgnet/tl/TL_stats$BroadcastRevenueTransaction;Z)V

    goto/16 :goto_1f

    :pswitch_d
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;->set(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)V

    goto/16 :goto_1f

    :pswitch_e
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    new-instance v3, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;->set(ILorg/telegram/ui/StatisticActivity$ChartViewData;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    goto/16 :goto_1f

    :pswitch_f
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;->setChecked(ZZ)V

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    if-eqz v2, :cond_41

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;->set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Z)V

    goto/16 :goto_1f

    :pswitch_10
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setChecked(ZZ)V

    iget-boolean v1, v6, Lorg/telegram/ui/Components/UniversalAdapter;->allowReorder:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setReorder(Z)V

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    if-eqz v2, :cond_41

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v0, v1, v10, v15}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Ljava/lang/String;Z)V

    goto/16 :goto_1f

    :pswitch_11
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/SlideIntChooseView;->set(ILorg/telegram/ui/Cells/SlideIntChooseView$Options;Lorg/telegram/messenger/Utilities$Callback;)V

    iget-wide v1, v4, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SlideIntChooseView;->setMinValueAllowed(I)V

    goto/16 :goto_1f

    :pswitch_12
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/SlideChooseView;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->texts:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    iget-wide v1, v4, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideChooseView;->setMinAllowedIndex(I)V

    new-instance v1, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    goto/16 :goto_1f

    :pswitch_13
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    iget v1, v6, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    invoke-virtual {v0, v1, v4, v15}, Lorg/telegram/ui/Cells/UserCell;->setFromUItem(ILorg/telegram/ui/Components/UItem;Z)V

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    xor-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setAddButtonVisible(Z)V

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setCloseIcon(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1f

    :pswitch_14
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/UserCell;

    iget v1, v6, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    invoke-virtual {v0, v1, v4, v15}, Lorg/telegram/ui/Cells/UserCell;->setFromUItem(ILorg/telegram/ui/Components/UItem;Z)V

    if-ne v9, v11, :cond_41

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto/16 :goto_1f

    :pswitch_15
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogRadioCell;

    iget v1, v0, Lorg/telegram/ui/Cells/DialogRadioCell;->itemId:I

    iget v2, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, v2, :cond_1d

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/DialogRadioCell;->setChecked(ZZ)V

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/DialogRadioCell;->setEnabled(ZZ)V

    goto :goto_e

    :cond_1d
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/DialogRadioCell;->setEnabled(ZZ)V

    :goto_e
    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/ui/Cells/DialogRadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_f

    :cond_1e
    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    iget-boolean v3, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v2, v3, v15}, Lorg/telegram/ui/Cells/DialogRadioCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    :goto_f
    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v0, Lorg/telegram/ui/Cells/DialogRadioCell;->itemId:I

    goto/16 :goto_1f

    :pswitch_16
    const/4 v1, 0x7

    if-eq v9, v1, :cond_22

    if-ne v9, v12, :cond_1f

    goto :goto_11

    :cond_1f
    const/16 v1, 0x26

    if-ne v9, v1, :cond_26

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/CollapseTextCell;

    iget-object v0, v4, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    invoke-virtual {v10, v0, v1}, Lorg/telegram/ui/Cells/CollapseTextCell;->set(Ljava/lang/CharSequence;Z)V

    iget-boolean v0, v4, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v0, :cond_20

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_10
    invoke-virtual {v10, v0}, Lorg/telegram/ui/Cells/CollapseTextCell;->setColor(I)V

    goto/16 :goto_14

    :cond_20
    iget-boolean v0, v4, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v0, :cond_21

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_10

    :cond_21
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_10

    :cond_22
    :goto_11
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-ne v9, v12, :cond_23

    const/16 v11, 0xdc

    :cond_23
    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_24
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    iget-object v0, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    iget-boolean v0, v4, Lorg/telegram/ui/Components/UItem;->accent:Z

    const/high16 v1, 0x41880000    # 17.0f

    if-eqz v0, :cond_25

    const/16 v0, 0x11

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextGravity(I)V

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v4

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/high16 v11, 0x42700000    # 60.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_13
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v3, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_14

    :cond_25
    const v0, 0x800003

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextGravity(I)V

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_13

    :cond_26
    :goto_14
    if-eqz v8, :cond_27

    iget v0, v8, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_15

    :cond_27
    const/4 v0, 0x0

    :goto_15
    if-eqz v7, :cond_28

    iget v1, v7, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_16

    :cond_28
    const/4 v1, 0x0

    :goto_16
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_17

    :cond_29
    if-eqz v0, :cond_2a

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_17

    :cond_2a
    if-eqz v1, :cond_2b

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    goto :goto_17

    :cond_2b
    sget v0, Lorg/telegram/messenger/R$drawable;->field_carret_empty:I

    :goto_17
    iget-object v1, v6, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    iget-object v7, v6, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, v6, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v1, :cond_2c

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f

    :cond_2c
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f

    :pswitch_17
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-boolean v3, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v0, v1, v2, v3, v15}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_1f

    :pswitch_18
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v0, v4, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    iget-object v11, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v12, v4, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-boolean v13, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v14, 0x0

    move v1, v15

    move v15, v3

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V

    goto/16 :goto_1f

    :pswitch_19
    move v1, v15

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget v3, v2, Lorg/telegram/ui/Cells/TextCheckCell;->itemId:I

    iget v5, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v3, v5, :cond_2e

    iget-boolean v3, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_2e
    iget-boolean v3, v4, Lorg/telegram/ui/Components/UItem;->enabled:Z

    invoke-virtual {v2, v3, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {v2, v3, v5, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->id:I

    iput v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;->itemId:I

    const/16 v1, 0x9

    if-ne v9, v1, :cond_41

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-eqz v1, :cond_2f

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    goto :goto_18

    :cond_2f
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    :goto_18
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    goto/16 :goto_b

    :pswitch_1a
    move v1, v15

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_30

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndSticker(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_19

    :cond_30
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndSticker(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    goto :goto_19

    :cond_31
    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_32

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_19

    :cond_32
    iget v2, v4, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-nez v2, :cond_33

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_19

    :cond_33
    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_19

    :cond_34
    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_35

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v5, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v5, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_19

    :cond_35
    iget v2, v4, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-nez v2, :cond_36

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_19

    :cond_36
    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v5, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v5, v2, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :goto_19
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v1, :cond_37

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1f

    :cond_37
    iget-boolean v1, v4, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz v1, :cond_38

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_1a
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_1f

    :cond_38
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1a

    :pswitch_1b
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/TopViewCell;

    iget v1, v4, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-eqz v1, :cond_3a

    iget-boolean v2, v4, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-eqz v2, :cond_39

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TopViewCell;->setEmojiStatic(I)V

    goto :goto_1b

    :cond_39
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TopViewCell;->setEmoji(I)V

    goto :goto_1b

    :cond_3a
    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/TopViewCell;->setEmoji(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/TopViewCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1f

    :pswitch_1c
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, v4, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    :pswitch_1d
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v7, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-nez v7, :cond_3b

    const/4 v5, 0x0

    :cond_3b
    if-ne v2, v5, :cond_3c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eq v2, v3, :cond_41

    :cond_3c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eqz v2, :cond_41

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    if-eq v9, v14, :cond_3e

    const/4 v2, -0x3

    if-ne v9, v2, :cond_3d

    goto :goto_1c

    :cond_3d
    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_1d

    :cond_3e
    :goto_1c
    invoke-static {v14, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    :goto_1d
    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    :goto_1e
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f

    :pswitch_1e
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;

    iget v2, v4, Lorg/telegram/ui/Components/UItem;->intValue:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;->setMinusHeight(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v7, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-nez v7, :cond_3f

    const/4 v5, 0x0

    :cond_3f
    if-ne v2, v5, :cond_40

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eq v2, v3, :cond_41

    :cond_40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-eqz v2, :cond_41

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v2, v4, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    invoke-static {v14, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_1e

    :cond_41
    :goto_1f
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_19
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_1c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_16
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/UniversalAdapter;->dialog:Z

    if-eqz v2, :cond_0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_0
    sget v4, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v1, v4, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    iget v6, v0, Lorg/telegram/ui/Components/UniversalAdapter;->classGuid:I

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/telegram/ui/Components/UItem$UItemFactory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_5

    :cond_1
    new-instance v2, Landroid/view/View;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object v14, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v9, 0x15

    const/16 v10, 0xf

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_2
    new-instance v2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Cells/CollapseTextCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/CollapseTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_4
    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    const/4 v4, 0x4

    const/4 v7, 0x4

    goto :goto_1

    :cond_3
    const/16 v2, 0x24

    if-ne v1, v2, :cond_4

    const/4 v7, 0x6

    goto :goto_1

    :cond_4
    const/16 v2, 0x25

    if-ne v1, v2, :cond_5

    const/4 v4, 0x7

    const/4 v7, 0x7

    goto :goto_1

    :cond_5
    const/16 v2, 0x29

    if-ne v1, v2, :cond_6

    const/16 v4, 0x8

    const/16 v7, 0x8

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    new-instance v2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v6, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v10, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v8, 0x15

    const/4 v9, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    goto/16 :goto_5

    :pswitch_5
    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v6, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto/16 :goto_5

    :pswitch_6
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v4, v6, v5}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    goto/16 :goto_5

    :pswitch_7
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :pswitch_8
    new-instance v2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_9
    new-instance v2, Lorg/telegram/ui/Cells/TextRightIconCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/TextRightIconCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_a
    new-instance v2, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_b
    new-instance v2, Landroid/view/View;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :pswitch_c
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v6, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setIsSendAs(ZZ)V

    goto/16 :goto_5

    :pswitch_d
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v8, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v14, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v10, 0x17

    const/16 v11, 0x14

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    goto/16 :goto_5

    :pswitch_e
    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/ChannelMonetizationLayout$TransactionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_f
    new-instance v2, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_10
    iget-object v2, v0, Lorg/telegram/ui/Components/UniversalAdapter;->chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    if-nez v2, :cond_7

    new-instance v2, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-direct {v2}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/UniversalAdapter;->chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    :cond_7
    new-instance v2, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget v6, v0, Lorg/telegram/ui/Components/UniversalAdapter;->currentAccount:I

    add-int/lit8 v7, v1, -0x12

    iget-object v8, v0, Lorg/telegram/ui/Components/UniversalAdapter;->chartSharedUI:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    iget v9, v0, Lorg/telegram/ui/Components/UniversalAdapter;->classGuid:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/StatisticActivity$UniversalChartCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;I)V

    goto/16 :goto_5

    :pswitch_11
    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Business/QuickRepliesActivity$LargeQuickReplyView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_12
    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5, v6}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_13
    new-instance v2, Lorg/telegram/ui/Cells/SlideIntChooseView;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/SlideIntChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_14
    new-instance v2, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_15
    new-instance v2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZ)V

    goto/16 :goto_5

    :pswitch_16
    new-instance v2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    const/16 v8, 0xc

    if-ne v1, v8, :cond_9

    const/4 v8, 0x3

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    invoke-direct {v2, v7, v4, v8, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/UserCell;->setSelfAsSavedMessages(Z)V

    goto/16 :goto_5

    :pswitch_17
    new-instance v2, Lorg/telegram/ui/Cells/DialogRadioCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Cells/DialogRadioCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    :pswitch_18
    new-instance v2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    if-ne v1, v4, :cond_a

    const/4 v9, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    :goto_4
    iget-object v10, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v4, 0x15

    const/16 v8, 0x3c

    move-object v5, v2

    move-object v6, v7

    move v7, v4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_5

    :pswitch_19
    new-instance v2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v6, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v4, 0x9

    if-ne v1, v4, :cond_c

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawCheckRipple(Z)V

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v11, v2

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCheckCell;->setColors(IIIII)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0x38

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setHeight(I)V

    goto :goto_5

    :pswitch_1a
    new-instance v2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    :pswitch_1b
    new-instance v2, Lorg/telegram/ui/Components/TopViewCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/TopViewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    :pswitch_1c
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v7, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v12, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v10, 0xf

    const/4 v11, 0x0

    const/16 v9, 0x11

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    :pswitch_1d
    if-eqz v2, :cond_b

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v14, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x15

    const/16 v17, 0xf

    move-object v13, v2

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    :cond_b
    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    iget-object v5, v0, Lorg/telegram/ui/Components/UniversalAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_5

    :pswitch_1e
    new-instance v2, Lorg/telegram/ui/Components/UniversalAdapter$1;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/Components/UniversalAdapter$1;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Landroid/content/Context;)V

    goto :goto_5

    :pswitch_1f
    new-instance v2, Lorg/telegram/ui/Components/UniversalAdapter$2;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/Components/UniversalAdapter$2;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Landroid/content/Context;)V

    goto :goto_5

    :pswitch_20
    new-instance v2, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/UniversalAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/Components/UniversalAdapter$FullscreenCustomFrameLayout;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Landroid/content/Context;)V

    :cond_c
    :goto_5
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->shouldApplyBackground(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->allowReorder:Z

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateColors(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public reorderDone()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChangedId:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->callReorder(I)V

    :cond_0
    return-void
.end method

.method public reorderSectionEnd()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    :cond_0
    return-void
.end method

.method public reorderSectionStart()I
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$Section;-><init>(Lorg/telegram/ui/Components/UniversalAdapter$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentReorderSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public setApplyBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->applyBackground:Z

    return-void
.end method

.method public shouldApplyBackground(I)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->applyBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v2, 0x1

    if-lt p1, v0, :cond_1

    return v2

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public swapElements(II)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->onReordered:Lorg/telegram/messenger/Utilities$Callback2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result v1

    if-ltz v0, :cond_5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/UItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/UItem;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v3

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->hasDivider(I)Z

    move-result p2

    if-eq p2, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChangedId:I

    if-eq p1, v0, :cond_4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->callReorder(I)V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChanged:Z

    iput v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->orderChangedId:I

    :cond_5
    :goto_0
    return-void
.end method

.method public update(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/UniversalAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateReorder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 2

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v0, v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->attachedView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setReorder(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateReorder(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->allowReorder:Z

    return-void
.end method

.method public updateWithoutNotify()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->fillItems:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public whiteSectionEnd()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    :cond_0
    return-void
.end method

.method public whiteSectionStart()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter$Section;-><init>(Lorg/telegram/ui/Components/UniversalAdapter$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->start:I

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter;->currentWhiteSection:Lorg/telegram/ui/Components/UniversalAdapter$Section;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Components/UniversalAdapter$Section;->end:I

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
