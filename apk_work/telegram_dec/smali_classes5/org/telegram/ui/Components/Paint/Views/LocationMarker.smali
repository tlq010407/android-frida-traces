.class public Lorg/telegram/ui/Components/Paint/Views/LocationMarker;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private animatedVideo:Lorg/telegram/ui/Components/AnimatedFloat;

.field private attachedToWindow:Z

.field private final bounds:Landroid/graphics/RectF;

.field public final density:F

.field private flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private final flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private final flagIconPadding:F

.field private final flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private forceEmoji:Z

.field private h:F

.field private hasFlag:Z

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final iconPadding:F

.field private final iconSize:F

.field private isVideo:Z

.field private layout:Landroid/text/StaticLayout;

.field private layoutLeft:F

.field private layoutWidth:F

.field private maxWidth:I

.field public final outlinePaint:Landroid/graphics/Paint;

.field private final padding:Landroid/graphics/RectF;

.field public final padx:I

.field public final pady:I

.field private final path:Landroid/graphics/Path;

.field private relayout:Z

.field private text:Ljava/lang/String;

.field private final textPaint:Landroid/text/TextPaint;

.field private textScale:F

.field public final type:I

.field public final variant:I

.field private w:F


# direct methods
.method public static synthetic $r8$lambda$NnUrPcxtH-70pLxzfRxskgyUioA(Lorg/telegram/ui/Components/Paint/Views/LocationMarker;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->lambda$setCodeEmoji$1(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kA9WVTNWvMZV_E_Uxm7XroalC4s(Lorg/telegram/ui/Components/Paint/Views/LocationMarker;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->lambda$setCodeEmoji$0(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFI)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->text:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    const v2, 0x408a8f5c    # 4.33f

    const v3, 0x40f51eb8    # 7.66f

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    const/high16 v0, 0x40500000    # 3.25f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->iconPadding:F

    const/high16 v0, 0x40100000    # 2.25f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagIconPadding:F

    const v0, 0x41aaa3d7    # 21.33f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->iconSize:F

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textScale:F

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->bounds:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->path:Landroid/graphics/Path;

    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x15e

    invoke-direct {v6, p0, v8, v9, v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->animatedVideo:Lorg/telegram/ui/Components/AnimatedFloat;

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->variant:I

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    mul-float v4, v4, p3

    float-to-int p2, v4

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    mul-float v5, v5, p3

    float-to-int v1, v5

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    invoke-virtual {p0, p2, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    iput p4, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->type:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->map_pin3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->icon:Landroid/graphics/drawable/Drawable;

    const/high16 p1, 0x41c00000    # 24.0f

    mul-float p3, p3, p1

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p1, "fonts/rcondensedbold.ttf"

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    return-void
.end method

.method private containsEmoji(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget-object v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private findDocument(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->containsEmoji(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getEmojiThumb(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LocationMarker;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private synthetic lambda$setCodeEmoji$0(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->findDocument(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiThumb(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "80_80"

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiThumb(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v12, "80_80"

    const-string v14, "80_80"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v10 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$setCodeEmoji$1(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 13

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->findDocument(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiThumb(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, "80_80"

    const-string v4, "80_80"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public attachInternal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->attachedToWindow:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->isVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public detachInternal()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->attachedToWindow:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->drawInternal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setupLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->w:F

    add-float/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->hasFlag:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40100000    # 2.25f

    const v3, 0x41aaa3d7    # 21.33f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->animatedVideo:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->isVideo:Z

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const v5, 0x3f99999a    # 1.2f

    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v2

    iget v9, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v8, v8

    iget v10, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    mul-float v9, v9, v3

    sub-float/2addr v10, v9

    div-float/2addr v10, v4

    add-float/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v7

    invoke-virtual {p1, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v0, v6

    if-gez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v8, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v2

    iget v10, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v9, v9

    iget v11, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    mul-float v10, v10, v3

    sub-float/2addr v11, v10

    div-float/2addr v11, v4

    add-float/2addr v9, v11

    invoke-virtual {v7, v8, v9, v10, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v8

    invoke-virtual {p1, v5, v5, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sub-float/2addr v6, v0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->icon:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v8, v6, v7

    float-to-int v8, v8

    add-int/2addr v8, v5

    iget v9, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    iget v10, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    mul-float v11, v7, v3

    sub-float v12, v10, v11

    div-float/2addr v12, v4

    float-to-int v12, v12

    add-int/2addr v12, v9

    add-float/2addr v6, v3

    mul-float v6, v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    add-float/2addr v10, v11

    div-float/2addr v10, v4

    float-to-int v6, v10

    add-int/2addr v9, v6

    invoke-virtual {v0, v8, v12, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->hasFlag:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji:Z

    if-eqz v6, :cond_6

    :cond_5
    const/high16 v1, 0x40100000    # 2.25f

    :cond_6
    add-float/2addr v5, v1

    add-float/2addr v5, v3

    const/high16 v1, 0x40500000    # 3.25f

    add-float/2addr v5, v1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v5, v5, v1

    add-float/2addr v0, v5

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutLeft:F

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public forceEmoji()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->relayout:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getCodeEmojiDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->isVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    return-object v0
.end method

.method public getEmojiBounds(Landroid/graphics/RectF;)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40100000    # 2.25f

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v3, v1, v2

    add-float/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    const v6, 0x41aaa3d7    # 21.33f

    mul-float v7, v2, v6

    sub-float v8, v5, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v4

    add-float/2addr v1, v6

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    add-float/2addr v5, v7

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v8, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getHeightInternal()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->pady:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTypesCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getWidthInternal()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->w:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->attachInternal()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->detachInternal()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setupLayout()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getWidthInternal()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getHeightInternal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCodeEmoji(ILjava/lang/String;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v2, :cond_0

    iput-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->hasFlag:Z

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->hasFlag:Z

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    const-string v4, "StaticEmoji"

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/Paint/Views/LocationMarker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/LocationMarker;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v6, v5, v7}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    const-string v4, "RestrictedEmoji"

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/Paint/Views/LocationMarker$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/LocationMarker;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v6, v5, v7}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiThumb(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v10, "80_80"

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v15, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->getEmojiThumb(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v17, "80_80"

    const-string v19, "80_80"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v15 .. v27}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->relayout:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->isVideo:Z

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->attachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->flagAnimatedImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->isVideo:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->maxWidth:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->relayout:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->text:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->relayout:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setType(II)V
    .locals 4

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->icon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x4c000000    # 3.3554432E7f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const p2, 0x3f389375    # 0.721f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->icon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setupLayout()V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->relayout:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->maxWidth:I

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padx:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->hasFlag:Z

    const/high16 v6, 0x40100000    # 2.25f

    const/4 v7, 0x0

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v5, 0x40100000    # 2.25f

    :goto_1
    add-float/2addr v4, v5

    const v5, 0x41aaa3d7    # 21.33f

    add-float/2addr v4, v5

    const/high16 v8, 0x40500000    # 3.25f

    add-float/2addr v4, v8

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v3

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    div-float v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textScale:F

    const v9, 0x3ecccccd    # 0.4f

    cmpg-float v3, v3, v9

    if-gez v3, :cond_3

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->text:Ljava/lang/String;

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    invoke-static {v10, v11}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v12

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->text:Ljava/lang/String;

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textPaint:Landroid/text/TextPaint;

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v1, v11

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v3

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move/from16 v20, v1

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    :goto_2
    iput v7, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutWidth:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutLeft:F

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    if-ge v3, v9, :cond_4

    iget v9, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutWidth:F

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutWidth:F

    iget v9, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutLeft:F

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutLeft:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v9, 0x2

    if-le v3, v9, :cond_5

    const v2, 0x3e99999a    # 0.3f

    :goto_4
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textScale:F

    goto :goto_5

    :cond_5
    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutWidth:F

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_4

    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->padding:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->hasFlag:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->forceEmoji:Z

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_6
    add-float/2addr v3, v6

    add-float/2addr v3, v5

    add-float/2addr v3, v8

    iget v4, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->density:F

    mul-float v3, v3, v4

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layoutWidth:F

    iget v7, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textScale:F

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->w:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v2

    mul-float v3, v3, v4

    mul-float v4, v4, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->textScale:F

    mul-float v2, v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->h:F

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->relayout:Z

    return-void
.end method
