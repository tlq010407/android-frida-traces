.class public Lorg/telegram/ui/Components/StickerSetLinkIcon;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final N:I

.field public alpha:I

.field private final count:I

.field private final drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private hit:Z

.field public final out:Z

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IZLjava/util/ArrayList;Z)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 p4, 0xff

    iput p4, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->alpha:I

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->rect:Landroid/graphics/RectF;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->hit:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->out:Z

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->N:I

    mul-int v0, p2, p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->count:I

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->count:I

    if-ge p4, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    aput-object v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detach(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public die()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->hit:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->alpha:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerSetLinkIcon;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerSetLinkIcon;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerSetLinkIcon;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->N:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerSetLinkIcon;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->N:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerSetLinkIcon;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerSetLinkIcon;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->N:I

    if-ge v5, v6, :cond_6

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->N:I

    if-ge v6, v7, :cond_5

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    if-ltz v7, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    array-length v9, v8

    if-lt v7, v9, :cond_1

    goto :goto_3

    :cond_1
    aget-object v8, v8, v7

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    int-to-float v9, v6

    mul-float v9, v9, v2

    add-float/2addr v9, v0

    float-to-int v9, v9

    int-to-float v10, v5

    mul-float v10, v10, v3

    add-float/2addr v10, v1

    float-to-int v10, v10

    add-int/lit8 v11, v6, 0x1

    int-to-float v11, v11

    mul-float v11, v11, v2

    add-float/2addr v11, v0

    float-to-int v11, v11

    add-int/lit8 v12, v5, 0x1

    int-to-float v12, v12

    mul-float v12, v12, v3

    add-float/2addr v12, v1

    float-to-int v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v8, v8, v7

    iget v9, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->alpha:I

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v8, v8, v7

    iget-boolean v9, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->out:Z

    if-eqz v9, :cond_3

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_outAnimatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_2

    :cond_3
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_2
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v7, v8, v7

    invoke-virtual {v7, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public equals(Ljava/util/ArrayList;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    array-length v2, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->drawables:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-nez v3, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_3
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public keepAlive()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->hit:Z

    return-void
.end method

.method public readyToDie()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->hit:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/StickerSetLinkIcon;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
