.class public final Lorg/telegram/ui/GroupCallActivity$EmojiSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmojiSlot"
.end annotation


# instance fields
.field private final INTERVAL:J

.field private attached:Z

.field private clip:Lorg/telegram/ui/GradientClip;

.field private final invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

.field private lastEmoji:Ljava/lang/String;

.field private loaded:Z

.field private final offset:I

.field private final parents:Ljava/util/HashSet;

.field private final pool:[Landroid/graphics/drawable/Drawable;

.field private real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private realAllowed:Z

.field private realThumb:Landroid/graphics/drawable/Drawable;

.field private final rectF:Landroid/graphics/RectF;

.field private startTime:J


# direct methods
.method public static synthetic $r8$lambda$HJmxvTJlw6dmQmwqGPIofi7K8bY(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lambda$updateEmoji$1(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bk6SVM3Vm8ww3fkQtMczzXL6bSA(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->INTERVAL:J

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    new-instance v0, Lorg/telegram/ui/GradientClip;

    invoke-direct {v0}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->clip:Lorg/telegram/ui/GradientClip;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    new-instance v1, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;)V

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->offset:I

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/GroupCallActivity;->access$25800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->startTime:J

    return-void
.end method

.method private checkAttach()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->onAttached()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->onDetached()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateEmoji$1(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->updateEmoji()V

    return-void
.end method

.method private onAttached()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_0
    return-void
.end method

.method private onDetached()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_0
    return-void
.end method

.method private shiftPool()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v3, v1, v2

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lorg/telegram/ui/GroupCallActivity;->access$25800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    aput-object v2, v1, v0

    return-void
.end method

.method private updateEmoji()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getProductionAccount()I

    move-result v0

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    const-string v1, "StaticEmoji"

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$EmojiSlot;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    const-string v2, "\ufe0f"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4, v5}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    :cond_3
    if-eqz v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setupDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoji \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" not found in addemoji/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->checkAttach()V

    return-void
.end method

.method public detach(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->parents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->checkAttach()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v10, v1

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    neg-float v11, v10

    invoke-virtual {v1, v11, v11}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->offset:I

    int-to-long v3, v3

    const-wide/16 v5, 0x2d

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    iget-wide v3, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->startTime:J

    sub-long v3, v1, v3

    long-to-float v5, v3

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-boolean v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    const/4 v15, 0x0

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v12, :cond_1

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    iget-boolean v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    if-eqz v12, :cond_1

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    sub-float v16, v7, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v17

    add-float v17, v17, v10

    mul-float v14, v16, v17

    invoke-virtual {v12, v15, v14}, Landroid/graphics/RectF;->offset(FF)V

    cmpg-float v14, p3, v6

    if-gez v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    float-to-int v15, v15

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v14, v13, v13, v15, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v14, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    sub-float v14, v6, p3

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v14, v14, v15

    float-to-int v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    const/16 v14, 0xff

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    const/4 v12, 0x0

    cmpl-float v14, p3, v12

    if-lez v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    const/high16 v14, -0x3f800000    # -4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v15, v14}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-int v14, v14

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v12, v13, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v14, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v14, v14, p3

    float-to-int v14, v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v14, 0xff

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    sub-float v14, v7, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v15

    add-float/2addr v15, v10

    mul-float v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v14, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x1

    aget-object v12, v12, v14

    iget-object v15, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    float-to-int v15, v15

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v12, v13, v13, v15, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v14

    const/16 v12, 0x7f

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v14

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v14

    const/16 v12, 0xff

    invoke-virtual {v6, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v12

    add-float/2addr v12, v10

    mul-float v7, v7, v12

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v7}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    iget-object v7, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v12, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v6, v13, v13, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    const/16 v7, 0x7f

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->pool:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget-boolean v5, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v5, 0xb4

    rem-long/2addr v3, v5

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->startTime:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->shiftPool()V

    iget-boolean v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    :cond_5
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    float-to-int v2, v11

    int-to-float v2, v2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    add-float v6, v4, v10

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-virtual {v1, v8, v3, v5, v4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v3, v10

    iget v5, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8, v2, v3, v4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x1

    xor-int/2addr v1, v13

    return v1
.end method

.method public set(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getProductionAccount()I

    move-result v2

    new-instance v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v4, 0x15

    invoke-direct {v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->lastEmoji:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setupEmojiThumb(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->updateEmoji()V

    iget-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attached:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->real:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->invalidate:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->loaded:Z

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->realAllowed:Z

    :cond_4
    return-void
.end method
