.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Landroid/content/Context;IIZLorg/telegram/ui/ArticleViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iput-object p6, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected hasSiblingChild(I)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16400(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16400(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 p1, 0x1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    iget-byte v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v1, v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$3;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v4, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v5, v6, :cond_2

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v4, v6, :cond_2

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v3
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
