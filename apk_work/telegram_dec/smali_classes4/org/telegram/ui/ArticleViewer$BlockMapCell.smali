.class Lorg/telegram/ui/ArticleViewer$BlockMapCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockMapCell"
.end annotation


# instance fields
.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

.field private currentMapProvider:I

.field private currentType:I

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private photoPressed:Z

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v1

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v4, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentMapProvider:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$19600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->map_pin:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$19602(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$19600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$19600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    int-to-float v5, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    div-float/2addr v6, v5

    int-to-float v5, v1

    sub-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$19600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$19600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {v5, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$19600(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v2}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_6

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_5
    sub-int/2addr v0, v2

    int-to-float v7, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$13600()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->Map:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 31

    move-object/from16 v9, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move v11, v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v11, v0

    if-ne v1, v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v1, :cond_c

    iget v4, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    const/high16 v5, 0x41900000    # 18.0f

    if-nez v4, :cond_2

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0xe

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v2

    sub-int v1, v11, v1

    move v8, v1

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v11, v1

    move v8, v1

    move v1, v11

    :goto_1
    iget v4, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    if-nez v4, :cond_3

    int-to-float v0, v1

    iget-object v4, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->w:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->h:I

    int-to-float v4, v4

    mul-float v0, v0, v4

    float-to-int v0, v0

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_3

    int-to-float v0, v4

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->h:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->w:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v1, v0

    sub-int v0, v11, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v10

    add-int/2addr v2, v0

    move v12, v4

    goto :goto_2

    :cond_3
    move v12, v0

    :goto_2
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v2, v2

    iget-boolean v4, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->isFirst:Z

    const/high16 v13, 0x41000000    # 8.0f

    if-nez v4, :cond_5

    iget v4, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    if-eq v4, v3, :cond_5

    if-eq v4, v10, :cond_5

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x0

    :goto_4
    int-to-float v1, v1

    int-to-float v4, v12

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$10600(Lorg/telegram/ui/ArticleViewer;)I

    move-result v14

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v7, v1, v0

    float-to-int v7, v7

    div-float v0, v4, v0

    float-to-int v0, v0

    const/16 v22, 0xf

    const/16 v23, -0x1

    const/16 v21, 0x1

    move-wide v15, v2

    move-wide/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v0

    invoke-static/range {v14 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->formapMapUrl(IDDIIZII)Ljava/lang/String;

    move-result-object v25

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    div-float/2addr v4, v2

    float-to-int v3, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v4, 0xf

    invoke-static {v0, v1, v3, v4, v2}, Lorg/telegram/messenger/WebFile;->createWithGeoPoint(Lorg/telegram/tgnet/TLRPC$GeoPoint;IIII)Lorg/telegram/messenger/WebFile;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$10600(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    iput v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentMapProvider:I

    if-ne v1, v10, :cond_6

    if-eqz v0, :cond_7

    iget-object v14, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v19

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_6
    if-eqz v25, :cond_7

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v30}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    :cond_7
    :goto_5
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v5, v0

    iput v5, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    if-nez v0, :cond_a

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v8

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13200(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/high16 v14, 0x40800000    # 4.0f

    if-eqz v0, :cond_8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditOffset:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_8
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    iget v2, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditOffset:I

    add-int v5, v1, v2

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$6600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v1

    :goto_6
    move-object v7, v1

    goto :goto_7

    :cond_9
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_6

    :goto_7
    iget-object v15, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v4, v8

    move-object v8, v15

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13300(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    iget v2, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    :cond_a
    iget-boolean v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->isFirst:Z

    if-nez v0, :cond_b

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    if-nez v0, :cond_b

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-gtz v0, :cond_b

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v12, v0

    :cond_b
    move v3, v12

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentType:I

    if-eq v0, v10, :cond_c

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v3, v0

    :cond_c
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const-string v0, ","

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->photoPressed:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->photoPressed:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->photoPressed:Z

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$2300(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "geo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, "?q="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->photoPressed:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->photoPressed:Z

    if-nez v0, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v11, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    iget v12, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    move-object v8, p1

    move-object v9, p0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v11, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->textY:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->creditOffset:I

    add-int v12, v0, v1

    move-object v8, p1

    move-object v9, p0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/ArticleViewer;->access$13100(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    return v4
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->isFirst:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
