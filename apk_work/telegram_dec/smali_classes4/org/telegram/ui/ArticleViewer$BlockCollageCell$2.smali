.class Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
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
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    const/4 p3, 0x0

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    instance-of p4, p2, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->positions:Ljava/util/HashMap;

    check-cast p2, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$16700(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object p2

    :goto_0
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    goto :goto_1

    :cond_0
    instance-of p4, p2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->positions:Ljava/util/HashMap;

    check-cast p2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$9200(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    iget-object p4, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz p4, :cond_6

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p4, Landroid/graphics/Point;->x:I

    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget v2, v2, v0

    mul-float v2, v2, p4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-byte v0, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    sub-int/2addr v0, v2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge p3, v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$2;->this$1:Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$16800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer$BlockCollageCell$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ne v3, v4, :cond_4

    iget-byte v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v6, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-ne v5, v6, :cond_3

    iget-byte v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    iget-byte v6, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-ne v5, v6, :cond_3

    if-ne v3, v4, :cond_3

    iget-byte v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v6, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v5, v6, :cond_3

    goto :goto_4

    :cond_3
    if-ne v3, v4, :cond_4

    iget p2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    mul-float p4, p4, p2

    float-to-double p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr v1, p2

    goto :goto_5

    :cond_4
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    neg-int p2, v1

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    return-void
.end method
