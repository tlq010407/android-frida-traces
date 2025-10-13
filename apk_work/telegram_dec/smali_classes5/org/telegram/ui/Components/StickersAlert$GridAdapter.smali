.class Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation


# instance fields
.field private cache:Landroid/util/SparseArray;

.field private context:Landroid/content/Context;

.field private positionsToSets:Landroid/util/SparseArray;

.field private stickersPerRow:I

.field private stickersRowCount:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;

.field private totalItems:I


# direct methods
.method public static synthetic $r8$lambda$Y-gCESj4ymvcE8s-8EZm72G1M1s(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Lorg/telegram/ui/Cells/StickerEmojiCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->lambda$onBindViewHolder$0(Lorg/telegram/ui/Cells/StickerEmojiCell;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/ui/Cells/StickerEmojiCell;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$5200(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ContentPreviewViewer;->setDelegate(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ContentPreviewViewer;->showMenuFor(Landroid/view/View;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v1
.end method

.method public getThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    :cond_0
    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_0
    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6800(Lorg/telegram/ui/Components/StickersAlert;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersRowCount:I

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    div-int/2addr v5, v6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    iget v8, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v8, v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x1

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iget v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->stickersPerRow:I

    mul-int v6, v6, v5

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    iget v7, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v7, v4

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_a
    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_b

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    if-eqz v2, :cond_b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x78

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v2, :cond_b

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    add-int/2addr v0, v1

    goto :goto_5

    :cond_b
    :goto_6
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->totalItems:I

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 p2, 0x42a40000    # 82.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->positionsToSets:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6600(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iget-object v3, p2, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickersAlert;->access$6700(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v5

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickersAlert;->access$5000(Lorg/telegram/ui/Components/StickersAlert;)Z

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Object;Ljava/lang/String;ZZ)V

    iget-object p2, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;->editModeIcon:Landroid/widget/ImageView;

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Lorg/telegram/ui/Cells/StickerEmojiCell;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$AddStickerBtnView;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/StickersAlert$AddStickerBtnView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/StickersAlert;->access$6400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$6300(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1, v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter$1;-><init>(Lorg/telegram/ui/Components/StickersAlert$GridAdapter;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getImageView()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickersAlert;->access$1800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateColors()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
