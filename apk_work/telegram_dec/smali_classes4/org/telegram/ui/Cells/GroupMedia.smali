.class public Lorg/telegram/ui/Cells/GroupMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;,
        Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;
    }
.end annotation


# instance fields
.field private final animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

.field public attached:Z

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapHeight:I

.field private blurBitmapMessageId:I

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapState:I

.field private blurBitmapWidth:I

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private buttonTextPrice:J

.field public final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private clipPath:Landroid/graphics/Path;

.field private clipPath2:Landroid/graphics/Path;

.field private clipRect:Landroid/graphics/RectF;

.field public height:I

.field public hidden:Z

.field public final holders:Ljava/util/ArrayList;

.field private layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field public maxWidth:I

.field private overrideWidth:I

.field private pressButton:Z

.field private pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

.field private priceText:Lorg/telegram/ui/Components/Text;

.field private priceTextPrice:J

.field spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x15e

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-void
.end method


# virtual methods
.method public allVisible()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v1, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public checkBlurBitmap()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    const/high16 v4, 0x42c80000    # 100.0f

    if-le v2, v3, :cond_1

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_1

    :cond_1
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v2, v2, v4

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    if-le v5, v6, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v7, v6, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapMessageId:I

    if-ne v6, v0, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapState:I

    if-ne v6, v5, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapWidth:I

    if-ne v6, v2, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapHeight:I

    if-eq v6, v3, :cond_8

    :cond_5
    iput v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapState:I

    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapMessageId:I

    iput v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapWidth:I

    iput v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapHeight:I

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    int-to-float v5, v4

    iget v6, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    int-to-float v7, v6

    iget v8, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    sub-int/2addr v8, v4

    int-to-float v4, v8

    iget v8, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    sub-int/2addr v8, v6

    int-to-float v6, v8

    invoke-virtual {v3, v5, v7, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v2, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Cells/GroupMedia;->drawImages(Landroid/graphics/Canvas;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v7, v7

    sub-float v9, v7, v3

    div-float/2addr v9, v8

    add-float/2addr v9, v6

    iget v10, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    int-to-float v11, v11

    sub-float v12, v11, v4

    div-float/2addr v12, v8

    add-float/2addr v12, v10

    add-float/2addr v7, v3

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    add-float/2addr v11, v4

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-virtual {v5, v9, v12, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    div-float v9, v4, v8

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v9, v9, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/GroupMedia;->drawBlurred(Landroid/graphics/Canvas;F)V

    const/high16 v2, 0x50000000

    invoke-static {v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    iget v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    div-float/2addr v3, v8

    sub-float/2addr v4, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v5, v3

    const/4 v6, -0x1

    move-object v3, p1

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupMedia;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v2, :cond_1

    new-instance v2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v2, v3, v5, v6, v4}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupMedia;->allVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    sub-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTimeAlpha()F

    move-result v0

    mul-float v7, v1, v0

    const v0, 0x41351eb8    # 11.32f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v5, v4, v0

    sub-float/2addr v5, v2

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    sub-float/2addr v4, v2

    add-float v9, v6, v1

    invoke-virtual {v3, v5, v6, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    div-float/2addr v1, v8

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    iget v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v2

    const v0, 0x40b51eb8    # 5.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float v5, v0, v1

    const/4 v6, -0x1

    move-object v2, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p4, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->rewind()V

    iget-object p4, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, p2, p3, p3, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawBlurred(Landroid/graphics/Canvas;F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupMedia;->checkBlurBitmap()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public drawImages(Landroid/graphics/Canvas;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v9

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v14, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v15, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v10, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v15, v10

    int-to-float v15, v15

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v13, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v11, v13

    int-to-float v11, v11

    iget v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    sub-int/2addr v12, v10

    int-to-float v10, v12

    iget v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v14, v15, v11, v10, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v10, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v10, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v10

    iget-wide v10, v10, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentTime:J

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setTime(I)V

    :cond_0
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_1

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v11, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v11, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v11, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v11, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v12, v11

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v14, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v14, v13

    int-to-float v14, v14

    iget v15, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    add-int/2addr v11, v15

    int-to-float v11, v11

    iget v15, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    invoke-virtual {v10, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    iget-object v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radii:[F

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v10, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_1
    iget-object v10, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v10, v11, v12, v13, v14}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    iget-object v10, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v11, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    iget-object v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    iget-object v14, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v12, v14

    add-float/2addr v11, v12

    iget-object v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v12

    iget-object v14, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v14

    div-float/2addr v14, v13

    iget-object v15, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    add-float/2addr v12, v14

    iget-object v14, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v14

    iget-object v15, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v15

    div-float/2addr v15, v13

    iget-object v13, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    add-float/2addr v14, v15

    iget-object v13, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v13

    iget-object v15, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    move/from16 v16, v2

    iget-object v2, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v15, v2

    add-float/2addr v13, v15

    invoke-virtual {v10, v11, v12, v14, v13}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(FFFF)V

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    iget-object v12, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/ImageLoader;->getFileProgressSizes(Ljava/lang/String;)[J

    move-result-object v11

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    invoke-virtual {v2, v12, v6}, Lorg/telegram/messenger/SendMessagesHelper;->isSendingPaidMessage(II)Z

    move-result v2

    if-nez v11, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    iget-boolean v2, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->album:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    :goto_1
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    goto :goto_2

    :cond_2
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v11, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->filename:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->access$000(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)I

    move-result v2

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v2, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v2

    sub-float/2addr v10, v9

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    const/16 v11, 0x1f

    invoke-virtual {v8, v2, v10, v11}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v2, v7, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    cmpl-float v1, v9, v6

    if-lez v1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float/2addr v5, v3

    float-to-int v10, v5

    int-to-float v5, v10

    sub-float/2addr v4, v2

    float-to-int v11, v4

    int-to-float v6, v11

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, v9

    float-to-int v7, v1

    const/4 v3, 0x0

    const/16 v12, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v7, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move v4, v10

    move v5, v11

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;IIFZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_6
    const/4 v10, 0x0

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    invoke-static {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->access$100(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;

    move-result-object v2

    if-eqz v2, :cond_7

    const v2, 0x41366666    # 11.4f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->access$100(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v7, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v11, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v7, v11

    int-to-float v7, v7

    add-float/2addr v7, v4

    add-float/2addr v2, v6

    add-float v11, v7, v3

    invoke-virtual {v5, v6, v7, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x41351eb8    # 11.32f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    sub-float/2addr v5, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_8

    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v3, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/Cells/GroupMedia;->drawBlurred(Landroid/graphics/Canvas;F)V

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->access$100(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;

    move-result-object v2

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v11, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    add-float/2addr v5, v4

    const v11, 0x40b51eb8    # 5.66f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v1, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v11, v1

    int-to-float v1, v11

    add-float/2addr v1, v4

    add-float v4, v1, v3

    const/4 v11, -0x1

    move-object v1, v2

    move-object/from16 v2, p1

    move v3, v5

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method public getHolderAt(FF)Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v1, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhotoImage(I)Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object v0, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v2, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object p1, p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public isLoading()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->attach(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/GroupMedia;->getHolderAt(FF)Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result p1

    if-eq p1, v3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object p1, p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressButton:Z

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_6

    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/GroupMedia;->getHolderAt(FF)Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v7, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v7

    if-eq v7, v3, :cond_3

    iget-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressButton:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v0

    if-ne v0, v6, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-interface/range {v6 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressButton:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz p1, :cond_8

    const/4 v4, 0x1

    :cond_8
    return v4
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-nez p3, :cond_2

    return-void

    :cond_2
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    if-nez p3, :cond_3

    new-instance p3, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    invoke-direct {p3}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object p3, p3, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object p3, p3, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->calculate()V

    iget p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->overrideWidth:I

    const/4 v0, 0x0

    if-lez p3, :cond_4

    :goto_0
    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_4

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result p3

    const/high16 v1, 0x42f40000    # 122.0f

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getParentWidth()I

    move-result p3

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkNeedDrawShareButton(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    goto :goto_1

    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawAvatar()Z

    move-result p3

    if-eqz p3, :cond_7

    iget p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_7
    :goto_4
    const/4 p3, 0x0

    :goto_5
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p3, v1, :cond_10

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p3, v5, :cond_8

    move-object v5, v3

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    :goto_6
    if-nez v5, :cond_f

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getPosition(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v2, v2

    mul-float v6, v6, v2

    float-to-int v10, v6

    iget v2, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v5, v5, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v2, v2, v5

    float-to-int v11, v2

    new-instance v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    move-object v5, v2

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;ZII)V

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->attachPath:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object v3, v5

    goto :goto_8

    :cond_a
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_c

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_b

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_b
    :goto_8
    iput-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    :cond_c
    iget-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v2}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->uploadProgress:F

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attach()V

    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {v5, v1, p1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->updateMedia(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;Lorg/telegram/messenger/MessageObject;)V

    :goto_9
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_5

    :cond_10
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_11

    move-object v0, v3

    goto :goto_b

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    :goto_b
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->detach()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    :cond_12
    add-int/2addr p3, v4

    goto :goto_a

    :cond_13
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/GroupMedia;->updateHolders(Lorg/telegram/messenger/MessageObject;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget p3, p1, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v2

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v0, v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    iget p3, p1, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    iget p1, p1, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float p3, p3, p1

    float-to-int p1, p3

    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    if-eqz p1, :cond_14

    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int p3, v0

    const-string v0, "UnlockPaidContent"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x3f333333    # 0.7f

    invoke-static {p3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p1, p3, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result p1

    iget p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_14

    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int p3, v3

    const-string v1, "UnlockPaidContentShort"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p1, p3, v2, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    if-eqz p1, :cond_15

    iget-wide v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceTextPrice:J

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_16

    :cond_15
    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide p2, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceTextPrice:J

    long-to-int p3, p2

    const-string p2, "PaidMediaPrice"

    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x3f666666    # 0.9f

    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    const/high16 v0, 0x41400000    # 12.0f

    invoke-direct {p1, p2, v0, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    :cond_16
    return-void
.end method

.method public setOverrideWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->overrideWidth:I

    return-void
.end method

.method public updateHolders(Lorg/telegram/messenger/MessageObject;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->namesOffset:I

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->captionAbove:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->captionAbove:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCommentLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->overrideWidth:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    if-lez v6, :cond_5

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v9, v9, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    int-to-float v9, v9

    div-float v9, v8, v9

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_7

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v6

    const/high16 v9, 0x42f40000    # 122.0f

    :goto_4
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_6

    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getParentWidth()I

    move-result v6

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkNeedDrawShareButton(Lorg/telegram/messenger/MessageObject;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0xa

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v9, v9, 0x40

    int-to-float v9, v9

    goto :goto_4

    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawAvatar()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    const/high16 v9, 0x42500000    # 52.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    :cond_8
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v10, v6, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    mul-float v10, v10, v9

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v11, v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    iput v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    iget v10, v6, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    iget v6, v6, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v10, v10, v6

    float-to-int v6, v10

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    iput-boolean v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v10, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_9

    const/4 v12, 0x2

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    :goto_8
    sub-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_9
    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_1a

    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v15, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object v11, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getPosition(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v11

    if-nez v11, :cond_a

    move/from16 v19, v7

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/high16 v18, 0x447a0000    # 1000.0f

    goto/16 :goto_12

    :cond_a
    iget v15, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->left:F

    div-float/2addr v15, v8

    mul-float v15, v15, v9

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v5, v5

    mul-float v15, v15, v5

    float-to-int v15, v15

    iget v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->top:F

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v8, v8, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v4, v4, v8

    float-to-int v4, v4

    move/from16 v19, v7

    iget v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v7, v7

    const/high16 v18, 0x447a0000    # 1000.0f

    div-float v7, v7, v18

    mul-float v7, v7, v9

    mul-float v7, v7, v5

    float-to-int v5, v7

    iget v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    iget v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v20, v8, 0x1

    if-nez v20, :cond_b

    add-int/2addr v15, v6

    sub-int/2addr v5, v6

    :cond_b
    and-int/lit8 v20, v8, 0x4

    if-nez v20, :cond_c

    add-int/2addr v4, v6

    sub-int/2addr v7, v6

    :cond_c
    and-int/lit8 v20, v8, 0x2

    if-nez v20, :cond_d

    sub-int/2addr v5, v6

    :cond_d
    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_e

    sub-int/2addr v7, v6

    :cond_e
    iput v15, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    iput v4, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int v8, v15, v5

    iput v8, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    add-int v8, v4, v7

    iput v8, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    iget-object v8, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v15, v15

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float v7, v7

    invoke-virtual {v8, v15, v4, v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_f

    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_f

    if-nez v2, :cond_f

    move v7, v10

    goto :goto_a

    :cond_f
    move/from16 v7, v19

    :goto_a
    if-eqz v5, :cond_10

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_10

    if-nez v2, :cond_10

    move v5, v10

    goto :goto_b

    :cond_10
    move/from16 v5, v19

    :goto_b
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_11

    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_11

    if-nez v3, :cond_11

    move v11, v10

    goto :goto_c

    :cond_11
    move/from16 v11, v19

    :goto_c
    if-eqz v8, :cond_12

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_12

    if-nez v3, :cond_12

    move v4, v10

    goto :goto_d

    :cond_12
    move/from16 v4, v19

    :goto_d
    if-nez v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-eqz v8, :cond_13

    move/from16 v4, v19

    goto :goto_e

    :cond_13
    move/from16 v11, v19

    :cond_14
    :goto_e
    if-nez v2, :cond_16

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedTop:Z

    if-eqz v8, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v8

    if-eqz v8, :cond_15

    move v5, v12

    goto :goto_f

    :cond_15
    move v7, v12

    :cond_16
    :goto_f
    iget-object v8, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v7, v5, v4, v11}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    iget-object v8, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radii:[F

    int-to-float v7, v7

    const/4 v15, 0x1

    aput v7, v8, v15

    const/16 v17, 0x0

    aput v7, v8, v17

    int-to-float v5, v5

    const/4 v7, 0x3

    aput v5, v8, v7

    const/16 v16, 0x2

    aput v5, v8, v16

    int-to-float v4, v4

    const/4 v5, 0x5

    aput v4, v8, v5

    const/4 v5, 0x4

    aput v4, v8, v5

    int-to-float v4, v11

    const/4 v5, 0x7

    aput v4, v8, v5

    const/4 v5, 0x6

    aput v4, v8, v5

    if-eqz v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v14, v7}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    :cond_17
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    if-nez v4, :cond_19

    iget-boolean v4, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->hidden:Z

    if-eqz v4, :cond_18

    goto :goto_10

    :cond_18
    const/4 v4, 0x0

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v4, 0x1

    :goto_11
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    :goto_12
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v19

    const/4 v5, 0x0

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v11, 0x2

    goto/16 :goto_9

    :cond_1a
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_13

    :cond_1b
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    :goto_13
    if-eqz v1, :cond_1c

    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int v4, v3

    const-string v3, "UnlockPaidContent"

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {v2, v3, v6, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int v1, v7

    const-string v3, "UnlockPaidContentShort"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v2, v1, v6, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    :cond_1c
    return-void
.end method
