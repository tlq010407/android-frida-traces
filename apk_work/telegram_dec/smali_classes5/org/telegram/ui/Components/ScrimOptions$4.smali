.class Lorg/telegram/ui/Components/ScrimOptions$4;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrimOptions;->setScrim(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private alpha:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ScrimOptions;

.field final synthetic val$backgroundPaint:Landroid/graphics/Paint;

.field final synthetic val$bitmapPaint:Landroid/graphics/Paint;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$finalLayout:Landroid/text/StaticLayout;

.field final synthetic val$path:Lorg/telegram/ui/Components/LinkPath;

.field final synthetic val$pathBounds:Landroid/graphics/RectF;

.field final synthetic val$pos:[I

.field final synthetic val$pos2:[I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrimOptions;Lorg/telegram/ui/Components/LinkPath;[ILorg/telegram/ui/Cells/ChatMessageCell;[ILandroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/text/StaticLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$path:Lorg/telegram/ui/Components/LinkPath;

    iput-object p3, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos2:[I

    iput-object p4, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p5, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos:[I

    iput-object p6, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$finalBitmap:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pathBounds:Landroid/graphics/RectF;

    iput-object p8, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$bitmapPaint:Landroid/graphics/Paint;

    iput-object p9, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$backgroundPaint:Landroid/graphics/Paint;

    iput-object p10, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$finalLayout:Landroid/text/StaticLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 p1, 0xff

    iput p1, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->alpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->alpha:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRadius()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->alpha:I

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos2:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->currentBackgroundDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos2:[I

    aget v2, v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos:[I

    aget v2, v0, v1

    int-to-float v2, v2

    aget v0, v0, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos:[I

    aget v2, v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    aget v0, v0, v3

    neg-int v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pos2:[I

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$finalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$finalBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$pathBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$path:Lorg/telegram/ui/Components/LinkPath;

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$path:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->val$finalLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrimOptions$4;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
