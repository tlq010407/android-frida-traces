.class public Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field alpha:F

.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private attached:Z

.field private final bounds:Landroid/graphics/Rect;

.field colorFilter:Landroid/graphics/ColorFilter;

.field private final currentAccount:I

.field currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isStatic:Z

.field lastColorForFilter:I

.field private parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->bounds:Landroid/graphics/Rect;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->currentAccount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->alpha:F

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    return-void
.end method

.method public static preload(ILorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-wide v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->preload()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_0
    return-void
.end method

.method public isLoaded()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->attached:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->alpha:F

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->lastColorForFilter:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->lastColorForFilter:I

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->lastColorForFilter:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->attached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    :goto_0
    return-void
.end method

.method public setStatic()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->isStatic:Z

    return-void
.end method

.method public setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->isStatic:Z

    const-string v1, "60_60"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_firstframe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v4, v1

    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v7

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-string v10, "tgs"

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v11, p1

    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->isStatic:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->attached:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->parent:Landroid/view/View;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x1000000

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->lastColorForFilter:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    :goto_1
    return-void
.end method
