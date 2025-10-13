.class public Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;
.implements Lorg/telegram/ui/Components/AttachableDrawable;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field final currentAccount:I

.field currentParent:Lorg/telegram/messenger/ImageReceiver;

.field public final gradientTools:Lorg/telegram/ui/Components/GradientTools;

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field imageSeted:Z

.field isPremium:Z

.field parents:Ljava/util/HashSet;

.field roundRadius:F

.field sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

.field stickerPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V
    .locals 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->parents:Ljava/util/HashSet;

    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->stickerPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->currentAccount:I

    iput p3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->type:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->isPremium:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xff

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    :cond_2
    invoke-virtual {v0, v1, v4, v6, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    if-ne p3, v5, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x7

    goto :goto_2

    :cond_3
    if-ne p3, v7, :cond_4

    const/16 p2, 0xf

    goto :goto_2

    :cond_4
    const/16 p2, 0x8

    :goto_2
    new-instance p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;->emoji_id:J

    invoke-direct {p3, p2, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    iput-object p3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_5
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    iput-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    new-instance p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable$1;-><init>(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    if-ne p3, v5, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->setImage()V

    :cond_7
    :goto_3
    return-void
.end method

.method private setImage()V
    .locals 15

    iget v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageSeted:Z

    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v5, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->isPremium:Z

    const-string v3, "50_50_firstframe"

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->type:I

    if-ne v2, v1, :cond_0

    const-string v1, "50_50"

    :goto_1
    move-object v4, v1

    move-object v6, v3

    move-object v1, v0

    goto :goto_2

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "100_100"

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move-object v6, v1

    move-object v4, v3

    :goto_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v9

    iget-object v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const-string v12, "tgs"

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v13, v0

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    iget v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->stickerPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-string v10, "tgs"

    const/4 v12, 0x0

    const-string v4, "100_100"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v11, v0

    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageSeted:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->setImage()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->currentParent:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->roundRadius:F

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v2, v1, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const v4, 0x3e051eb8    # 0.13f

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_4

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->type:I

    iget v3, p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->type:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v3, v2, Lorg/telegram/ui/Components/GradientTools;->color1:I

    iget-object v4, p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v5, v4, Lorg/telegram/ui/Components/GradientTools;->color1:I

    if-ne v3, v5, :cond_5

    iget v3, v2, Lorg/telegram/ui/Components/GradientTools;->color2:I

    iget v5, v4, Lorg/telegram/ui/Components/GradientTools;->color2:I

    if-ne v3, v5, :cond_5

    iget v3, v2, Lorg/telegram/ui/Components/GradientTools;->color3:I

    iget v5, v4, Lorg/telegram/ui/Components/GradientTools;->color3:I

    if-ne v3, v5, :cond_5

    iget v2, v2, Lorg/telegram/ui/Components/GradientTools;->color4:I

    iget v3, v4, Lorg/telegram/ui/Components/GradientTools;->color4:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    iget-object p1, p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz v2, :cond_5

    iget-object p1, p1, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz p1, :cond_5

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->parents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->roundRadius:F

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->parents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->stickerPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz p1, :cond_4

    iget p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->parents:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->stickerPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->sizeStickerMarkup:Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_3
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->gradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public synthetic setParent(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AttachableDrawable$-CC;->$default$setParent(Lorg/telegram/ui/Components/AttachableDrawable;Landroid/view/View;)V

    return-void
.end method

.method public setParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;->currentParent:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method
