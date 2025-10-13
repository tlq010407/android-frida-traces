.class public Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;
    }
.end annotation


# static fields
.field private static currentIndex:I


# instance fields
.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field animationIndex:I

.field bounds:Landroid/graphics/Rect;

.field currentAccount:I

.field effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field firsDraw:Z

.field lastGenerateTime:J

.field longAnimation:Z

.field parentView:Landroid/view/View;

.field particles:Ljava/util/ArrayList;

.field showGeneric:Z

.field startTime:J


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;IZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->firsDraw:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    iput p2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    iput-boolean p4, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->showGeneric:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->startTime:J

    if-eqz p4, :cond_0

    const/16 p1, 0x1010

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p3, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowDrawWhileCacheGenerating(Z)V

    :cond_0
    return-void
.end method

.method public static createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;IZZ)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->firsDraw:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    new-instance v3, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;-><init>(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$1;)V

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->generate()V

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v5, 0xc

    if-ge v0, v5, :cond_1

    iget-wide v5, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->startTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x5dc

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    const-wide/16 v7, 0xc8

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    iget-wide v5, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->lastGenerateTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x32

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;-><init>(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$1;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->generate()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->lastGenerateTime:J

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->showGeneric:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->progress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->parentView:Landroid/view/View;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_7
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->firsDraw:Z

    return-void
.end method

.method public isDone()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->parentView:Landroid/view/View;

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_8

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->showGeneric:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_pcache_compress"

    const-string v4, "_"

    const-string v5, " "

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    iget v8, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v1, :cond_1

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_1

    iget-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    if-eqz v9, :cond_0

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentIndex:I

    add-int/lit8 v11, v10, 0x1

    sput v11, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v18

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    iget v8, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/UserConfig;->genericAnimationsStickerPack:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    if-nez v2, :cond_2

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    if-gez v1, :cond_3

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentIndex:I

    add-int/lit8 v10, v9, 0x1

    sput v10, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/ui/EmojiAnimationsOverlay;->getFilterWidth()I

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_4
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-string v17, "60_60"

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_2
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1, v6, v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    :cond_7
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v8, Lorg/telegram/messenger/R$raw;->custom_emoji_reaction:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_3
    return-void
.end method
