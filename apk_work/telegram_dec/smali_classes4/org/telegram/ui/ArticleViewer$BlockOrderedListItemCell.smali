.class Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockOrderedListItemCell"
.end annotation


# instance fields
.field private blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private blockX:I

.field private blockY:I

.field private currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

.field private currentBlockType:I

.field private numOffsetY:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private verticalAlign:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$18900(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41900000    # 18.0f

    if-eqz v1, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer;->access$14300(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v9, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    const/4 v11, 0x1

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    iput-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$12300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)I

    move-result v0

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v13, 0x0

    if-nez v0, :cond_0

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iput v13, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19000(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19100(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    sget v1, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    if-eq v0, v1, :cond_4

    :cond_1
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0, v10}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19002(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)I

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19102(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)I

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19202(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)I

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_1
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    if-ge v14, v8, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v15}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$12500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v15}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$12500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v4, v10, v1

    iget v5, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-static {v15, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    invoke-static {v15}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19202(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)I

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$18700()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "00."

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19202(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)I

    :cond_4
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x41900000    # 18.0f

    if-eqz v0, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_3
    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    goto :goto_4

    :cond_5
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr v0, v3

    goto :goto_3

    :goto_4
    iput-boolean v13, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v10, v0

    iget v3, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    sub-int/2addr v0, v3

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$19200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int v4, v4, v1

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    :cond_6
    move v4, v0

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$10400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    const/high16 v14, 0x41000000    # 8.0f

    if-eqz v0, :cond_9

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$10400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v3

    iget v5, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v1

    :goto_5
    move-object v7, v1

    goto :goto_6

    :cond_7
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_5

    :goto_6
    iget-object v8, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13300(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    :cond_8
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v13, v0, v1

    goto/16 :goto_c

    :cond_9
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    if-eqz v3, :cond_b

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    :cond_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v4, v0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_9

    :cond_b
    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    if-nez v0, :cond_f

    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    if-nez v0, :cond_f

    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    if-nez v0, :cond_f

    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$18800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput v13, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    iput v13, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    iput v13, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    move v4, v10

    goto :goto_9

    :cond_d
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    if-eqz v0, :cond_e

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_7
    add-int/2addr v4, v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    :cond_10
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_7

    :goto_9
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    if-eqz v1, :cond_11

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineCount()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getLineAscent(I)I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->numOffsetY:I

    :cond_11
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v1, :cond_12

    iput-boolean v11, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    iput v13, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_b

    :cond_12
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v2, :cond_13

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    iget-boolean v1, v1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    :goto_a
    iput-boolean v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    goto :goto_b

    :cond_13
    instance-of v2, v1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v2, :cond_14

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$19400(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Z

    move-result v1

    goto :goto_a

    :cond_14
    :goto_b
    iget-boolean v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->verticalAlign:Z

    if-eqz v1, :cond_15

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    :cond_15
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v13, v0, v1

    :cond_16
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v13, v0

    :cond_17
    :goto_c
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-ne v0, v1, :cond_18

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v13, v0

    :cond_18
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$12300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)I

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v13, v0

    :cond_19
    move v11, v13

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1a

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$19300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->prefix:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    if-eqz v0, :cond_1c

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;->fillTextLayoutBlocks(Ljava/util/ArrayList;)V

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;

    instance-of v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_1b

    check-cast v1, Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v3, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockX:I

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    iget v3, v9, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockY:I

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_d

    :cond_1c
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlockType:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlockType:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->blockLayout:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->currentBlock:Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$5800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;IIZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
