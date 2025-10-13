.class public Lorg/telegram/ui/ArticleViewer$BlockTableCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockTableCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

.field private firstLayout:Z

.field private listX:I

.field private listY:I

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private scrollView:Landroid/widget/HorizontalScrollView;

.field private tableLayout:Lorg/telegram/ui/Components/TableLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    new-instance p3, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockTableCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockTableCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lorg/telegram/ui/Components/TableLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-direct {p3, p2, p0, p1}, Lorg/telegram/ui/Components/TableLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/Components/TableLayout;->setOrientation(I)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TableLayout;->setRowOrderPreserved(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$15700(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)Lorg/telegram/ui/Components/TableLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    return-object p0
.end method

.method static synthetic access$15800(Lorg/telegram/ui/ArticleViewer$BlockTableCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->updateChildTextPositions()V

    return-void
.end method

.method private updateChildTextPositions()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    iget-object v4, v3, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextX()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listX:I

    add-int/2addr v5, v6

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget-object v4, v3, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextY()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listY:I

    add-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    iget-object v4, v3, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getRow()I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/ArticleViewer$DrawingText;->row:I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/TableLayout$Child;->setSelectionIndex(I)V

    move v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public createTextLayout(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;I)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_right:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->align_center:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v5, p2

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/ArticleViewer;->access$14200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p1

    return-object p1
.end method

.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getHalfLinePaint()Landroid/graphics/Paint;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$16100()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderPaint()Landroid/graphics/Paint;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$16200()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$16000()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getStripPaint()Landroid/graphics/Paint;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$16300()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_3

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_2
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13600()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    iget p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listX:I

    iget p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listY:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listY:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->firstLayout:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    const/high16 p4, 0x42100000    # 36.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p1, p3}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollX(I)V

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->firstLayout:Z

    :cond_1
    return-void
.end method

.method public onLayoutChild(Lorg/telegram/ui/ArticleViewer$DrawingText;II)V
    .locals 6

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$000(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->isPunctuationCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer$PageLayout;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$500(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz p2, :cond_2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/high16 v0, 0x41900000    # 18.0f

    const/4 v1, 0x0

    if-lez p2, :cond_0

    mul-int/lit8 p2, p2, 0xe

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listX:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textX:I

    :goto_0
    sub-int p2, p1, p2

    move v6, p2

    goto :goto_1

    :cond_0
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listX:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textX:I

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iget-object v11, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$14200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v0, 0x41000000    # 8.0f

    if-eqz p2, :cond_1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textY:I

    invoke-virtual {p2}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listY:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textX:I

    iput v3, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textY:I

    iput v3, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listY:I

    const/4 p2, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listX:I

    sub-int v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v2, :cond_3

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_3

    :cond_2
    const/4 p2, 0x1

    :cond_3
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->updateChildTextPositions()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listX:I

    add-int/2addr v7, v8

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextX()I

    move-result v8

    add-int v10, v7, v8

    iget v7, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->listY:I

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextY()I

    move-result v4

    add-int v11, v7, v4

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v9, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textX:I

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->textY:I

    move-object v6, p1

    move-object v7, p0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;)V
    .locals 12

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->scrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/HorizontalScrollView;I)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout;->removeAllChildrens()V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->bordered:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/TableLayout;->setDrawLines(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->striped:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/TableLayout;->setStriped(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/TableLayout;->setRtl(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->colspan:I

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x1

    :goto_4
    iget v10, v8, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    const/4 v10, 0x1

    :goto_5
    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eqz v11, :cond_5

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v10, v8, v7, v2, v9}, Lorg/telegram/ui/Components/TableLayout;->addChild(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;III)V

    goto :goto_6

    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {v8, v7, v2, v9, v10}, Lorg/telegram/ui/Components/TableLayout;->addChild(IIII)V

    :goto_6
    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->tableLayout:Lorg/telegram/ui/Components/TableLayout;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/TableLayout;->setColumnCount(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->firstLayout:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
