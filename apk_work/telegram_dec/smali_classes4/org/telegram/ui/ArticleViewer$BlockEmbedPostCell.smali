.class Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockEmbedPostCell"
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/messenger/ImageReceiver;

.field private avatarVisible:Z

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

.field private dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private lineHeight:I

.field private nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x41000000    # 8.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/16 v2, 0x36

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x36

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x20

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v3, :cond_3

    const/high16 v3, 0x41200000    # 10.0f

    goto :goto_1

    :cond_3
    const/high16 v3, 0x41980000    # 19.0f

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v2, v2, 0x20

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v3

    :cond_6
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v5, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lineHeight:I

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_4
    sub-int/2addr v3, v1

    int-to-float v7, v3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13600()Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v1, v2

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v10, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    instance-of v2, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;

    const/high16 v12, 0x42480000    # 50.0f

    const/4 v13, 0x0

    const/high16 v14, 0x40800000    # 4.0f

    if-eqz v2, :cond_3

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v8, v11, v0

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget-object v7, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v8

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v13, v0, v1

    :cond_0
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v2, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int v5, v1, v2

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    iget-object v9, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v8

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13300(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    :cond_2
    move v1, v13

    goto/16 :goto_a

    :cond_3
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    const/4 v15, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$14100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    iput-boolean v2, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v2, :cond_5

    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarImageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v23

    const/16 v22, 0x0

    const/16 v24, 0x1

    const-string v18, "40_40"

    const-wide/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :cond_5
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    iget-boolean v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    const/16 v16, 0x36

    if-eqz v1, :cond_6

    const/16 v1, 0x36

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v4, v11, v1

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v9, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, v17

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->access$14200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_9

    iget-boolean v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x36

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v1, v1, 0x20

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->nameLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_8

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_5

    :cond_8
    const/high16 v1, 0x41980000    # 19.0f

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_9
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    const/high16 v9, 0x41e80000    # 29.0f

    if-eqz v0, :cond_b

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getChatFullDate()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x36

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v4, v11, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v7, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    goto :goto_7

    :cond_b
    iput-object v15, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    :goto_7
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v12, v11, v0

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget-object v7, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v12

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    :cond_c
    move v15, v8

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v2, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int v5, v1, v2

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v1

    move-object v7, v1

    goto :goto_8

    :cond_d
    move-object/from16 v7, v17

    :goto_8
    iget-object v8, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v12

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13300(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v8, v15, v0

    goto :goto_9

    :cond_e
    move v8, v15

    goto :goto_9

    :cond_f
    iput-object v15, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iput-object v15, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    :goto_9
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_11

    iget-boolean v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->avatarVisible:Z

    if-eqz v1, :cond_10

    const/16 v13, 0x36

    :cond_10
    add-int/lit8 v13, v13, 0x20

    int-to-float v1, v13

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->dateLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_11
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_12

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_12
    iget-object v0, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_13

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_13
    move v1, v8

    :goto_a
    iput v1, v10, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->lineHeight:I

    :cond_14
    invoke-virtual {v10, v11, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->textY:I

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->creditOffset:I

    add-int v7, v0, v3

    move-object v3, p1

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
