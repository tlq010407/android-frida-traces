.class public Lorg/telegram/ui/Components/ReplyMessageLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;
    }
.end annotation


# instance fields
.field public backgroundColor:I

.field public final backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field public final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final clipPath:Landroid/graphics/Path;

.field public color1:I

.field public final color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color1Paint:Landroid/graphics/Paint;

.field public color2:I

.field public final color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color2Paint:Landroid/graphics/Paint;

.field private color2Path:Landroid/graphics/Path;

.field public color3:I

.field public final color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color3Paint:Landroid/graphics/Paint;

.field private color3Path:Landroid/graphics/Path;

.field private emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private emojiAlpha:F

.field private emojiDocumentId:J

.field private emojiLoaded:Z

.field public final emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private emojiOffsetX:F

.field private emojiOffsetY:F

.field public hasColor2:Z

.field public hasColor3:Z

.field private iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

.field private lastHasColor3:Z

.field private lastHeight:F

.field private lastLoadingTTime:J

.field private final lineClipPath:Landroid/graphics/Path;

.field private loading:Z

.field public final loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingT:F

.field private loadingTranslationT:F

.field public nameColor:I

.field public final nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final parentView:Landroid/view/View;

.field public final radii:[F

.field private final rectF:Landroid/graphics/RectF;

.field private reversedOut:Z

.field private sponsored:Z

.field public final switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private switchedCount:I

.field private wasColorId:I

.field private wasMessageId:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/Components/ReplyMessageLine$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReplyMessageLine$1;-><init>(Lorg/telegram/ui/Components/ReplyMessageLine;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x190

    move-object v1, v0

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x1b8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x140

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ReplyMessageLine;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method private checkColorPathes(F)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHeight:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHasColor3:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eq v0, v2, :cond_4

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v2, 0x40ca8f5c    # 6.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const v3, 0x40551eb8    # 3.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v4, v3, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    move v5, v4

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v5, p1

    if-gez v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v9, v0, v7

    sub-float v7, v5, v7

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v8, v5, v2

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float/2addr v8, v1

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v8, v5, v1

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    add-float v6, v2, v1

    add-float/2addr v6, v3

    add-float/2addr v5, v6

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v6, :cond_1

    add-float/2addr v5, v2

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v5, :cond_3

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    :goto_1
    cmpg-float v5, v4, p1

    if-gez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v8, v0, v7

    sub-float v9, v4, v7

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v9, v4, v2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float/2addr v9, v1

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v8, v4, v1

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    add-float v5, v2, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    goto :goto_1

    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHeight:F

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHasColor3:Z

    :cond_4
    return-void
.end method

.method private incrementLoadingT()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1e

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    sub-long v4, v0, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    return-void
.end method

.method private isEmojiLoaded()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    :cond_2
    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    :cond_3
    const/4 v0, 0x7

    if-ge p2, v0, :cond_4

    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, p2

    :goto_2
    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    return-void

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    goto :goto_3

    :cond_5
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p2

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    goto :goto_2

    :cond_7
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v2, p3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-virtual {p2, v1, p3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    const/4 p1, 0x2

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iget p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iget p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    if-eq p2, p3, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eq p1, p3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v1, :cond_b

    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    :cond_b
    return-void
.end method


# virtual methods
.method public check(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    if-eqz v3, :cond_0

    invoke-interface/range {p4 .. p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v5

    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sponsored:Z

    const v11, 0x3dcccccd    # 0.1f

    if-nez v1, :cond_3

    iput-boolean v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    if-eqz v5, :cond_2

    const v10, 0x3df5c28f    # 0.12f

    goto :goto_2

    :cond_2
    const v10, 0x3dcccccd    # 0.1f

    :goto_2
    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    return v1

    :cond_3
    const/4 v12, 0x4

    const/4 v13, -0x1

    const/4 v14, 0x3

    if-ne v4, v12, :cond_6

    iget-object v15, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v15, :cond_6

    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v15

    if-eqz v15, :cond_6

    iget-object v15, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v15

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v15, :cond_6

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_4

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v9

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    invoke-direct {v0, v1, v9, v3}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_6
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    :goto_7
    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto/16 :goto_14

    :cond_6
    if-eqz v4, :cond_1c

    iget v6, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-gez v6, :cond_b

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    if-nez p2, :cond_b

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v2, :cond_b

    :cond_9
    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_a

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v6, :cond_a

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v6, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->sponsoredColor:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v6, :cond_1c

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    if-eq v6, v13, :cond_1c

    :cond_b
    iget v6, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v6, :cond_c

    goto/16 :goto_d

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->sponsoredColor:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v6, :cond_e

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    if-eq v7, v13, :cond_e

    if-ne v4, v14, :cond_d

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    iput-wide v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    :cond_d
    move v6, v7

    goto/16 :goto_d

    :cond_e
    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_13

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v6, :cond_13

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_13

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    const/4 v2, 0x5

    const-wide/16 v8, 0x0

    cmp-long v16, v6, v8

    iget v8, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    if-gez v16, :cond_10

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v2

    :cond_f
    if-ne v4, v14, :cond_12

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v6

    :goto_8
    iput-wide v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_9

    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v2

    :cond_11
    if-ne v4, v14, :cond_12

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v6

    goto :goto_8

    :cond_12
    :goto_9
    move v6, v2

    goto/16 :goto_d

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_16

    if-eqz p2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_a

    :cond_14
    move-object/from16 v2, p2

    :goto_a
    if-nez v2, :cond_15

    move-object/from16 v2, p2

    :cond_15
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v6

    if-ne v4, v14, :cond_1b

    goto :goto_b

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v6

    if-eqz v6, :cond_17

    if-eqz p2, :cond_17

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v2

    if-ne v4, v14, :cond_12

    move v6, v2

    move-object/from16 v2, p2

    :goto_b
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v7

    :goto_c
    iput-wide v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_d

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v6

    if-eqz v6, :cond_1a

    if-eqz v2, :cond_1a

    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z

    if-eqz v6, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_18

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v6

    if-ne v4, v14, :cond_1b

    goto :goto_b

    :cond_18
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v6

    if-ne v4, v14, :cond_1b

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v7

    goto :goto_c

    :cond_19
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v6

    if-ne v4, v14, :cond_1b

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v7

    goto :goto_c

    :cond_1a
    const/4 v6, 0x0

    :cond_1b
    :goto_d
    invoke-direct {v0, v1, v6, v3}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    :cond_1c
    if-nez v4, :cond_1d

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-gez v2, :cond_1f

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_1d

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_1d

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_1e

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_1e
    :goto_e
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v6, :cond_1d

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_1d

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1f
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v2, :cond_20

    move v6, v2

    goto/16 :goto_12

    :cond_20
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_f

    :cond_21
    move-object/from16 v2, p2

    :goto_f
    if-eqz v2, :cond_24

    goto :goto_10

    :cond_22
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_24

    :goto_10
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v7

    :goto_11
    iput-wide v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_12

    :cond_23
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v6, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v7

    goto :goto_11

    :cond_24
    const/4 v6, 0x0

    :goto_12
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v2, v6, v3}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_6

    :goto_13
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    goto/16 :goto_7

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput v13, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v13, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v13, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyNameText:I

    :goto_15
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto/16 :goto_1a

    :cond_25
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    const/4 v6, 0x2

    if-nez v2, :cond_26

    if-ne v4, v6, :cond_2d

    :cond_26
    if-ne v4, v6, :cond_27

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-nez v2, :cond_27

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inCodeBackground:I

    :goto_16
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    goto :goto_18

    :cond_27
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-nez v2, :cond_29

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_28
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    goto :goto_16

    :cond_29
    :goto_17
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    goto :goto_16

    :goto_18
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    goto :goto_19

    :cond_2a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    :cond_2b
    :goto_19
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    if-eqz v5, :cond_2c

    const v11, 0x3df5c28f    # 0.12f

    :cond_2c
    invoke-static {v2, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    goto :goto_15

    :cond_2d
    :goto_1a
    if-eqz v4, :cond_2e

    if-eq v4, v14, :cond_2e

    if-ne v4, v12, :cond_2f

    :cond_2e
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2f

    iput-wide v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    :cond_2f
    iget-wide v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_31

    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v1, :cond_31

    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_30

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_1b

    :cond_30
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_31

    :goto_1b
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_32

    iget-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto/16 :goto_3
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFF)V
    .locals 9

    .line 0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZZ)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZZ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x0

    aput p3, v0, v1

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x3

    aput p4, p3, v0

    const/4 v0, 0x2

    aput p4, p3, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x5

    aput p4, p3, v0

    const/4 v0, 0x4

    aput p4, p3, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget p4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p4, p4

    div-float/2addr p4, v2

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p4, v0

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x7

    aput p4, p3, p5

    const/4 p5, 0x6

    aput p4, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v4, p7

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZZ)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZZ)V
    .locals 28

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez p5, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v2, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->isEmojiLoaded()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_6

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    cmpl-float v6, v7, v6

    if-lez v6, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3e99999a    # 0.3f

    if-nez v6, :cond_1

    new-instance v6, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v9, 0x40800000    # 4.0f

    const v10, -0x3f3570a4    # -6.33f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v10, v11, v11}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v10, 0x3f47ae14    # 0.78f

    const v12, 0x3f666666    # 0.9f

    const/high16 v13, 0x41f00000    # 30.0f

    const/high16 v14, 0x40400000    # 3.0f

    invoke-direct {v9, v13, v14, v10, v12}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v10, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v12, 0x42380000    # 46.0f

    const/high16 v13, -0x3e780000    # -17.0f

    const v14, 0x3f19999a    # 0.6f

    invoke-direct {v10, v12, v13, v14, v14}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v12, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v13, -0x40d58106    # -0.666f

    const v14, 0x3f5eb852    # 0.87f

    const v15, 0x428b51ec    # 69.66f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v12, v15, v13, v14, v3}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v13, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v14, -0x3eb66666    # -12.6f

    const v15, 0x3f83d70a    # 1.03f

    const/high16 v4, 0x42c40000    # 98.0f

    invoke-direct {v13, v4, v14, v15, v8}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v4, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v14, 0x424c0000    # 51.0f

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-direct {v4, v14, v15, v11, v7}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v11, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v14, 0x41a00000    # 20.0f

    const v15, 0x3f451eb8    # 0.77f

    const v7, 0x40ca8f5c    # 6.33f

    invoke-direct {v11, v7, v14, v15, v3}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    new-instance v3, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v20, 0x3f19999a    # 0.6f

    const/16 v21, 0x1

    const/high16 v17, -0x3e680000    # -19.0f

    const/high16 v18, 0x41400000    # 12.0f

    const v19, 0x3f4ccccd    # 0.8f

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFFZ)V

    new-instance v7, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v26, 0x3f000000    # 0.5f

    const/16 v27, 0x1

    const/high16 v23, -0x3e500000    # -22.0f

    const/high16 v24, 0x42100000    # 36.0f

    const v25, 0x3f333333    # 0.7f

    move-object/from16 v22, v7

    invoke-direct/range {v22 .. v27}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFFZ)V

    const/16 v14, 0x9

    new-array v14, v14, [Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v6, 0x1

    aput-object v9, v14, v6

    const/4 v6, 0x2

    aput-object v10, v14, v6

    const/4 v6, 0x3

    aput-object v12, v14, v6

    const/4 v6, 0x4

    aput-object v13, v14, v6

    const/4 v6, 0x5

    aput-object v4, v14, v6

    const/4 v4, 0x6

    aput-object v11, v14, v4

    const/4 v4, 0x7

    aput-object v3, v14, v4

    const/16 v3, 0x8

    aput-object v7, v14, v3

    iput-object v14, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetX:F

    iget v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, v2, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-eqz p4, :cond_2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v6, v2, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x41a80000    # 21.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->getColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v7, v7, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v9, 0x430c0000    # 140.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v2, v2, v9

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_1
    mul-float v7, v7, v8

    float-to-int v2, v7

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    array-length v6, v2

    if-ge v15, v6, :cond_5

    aget-object v2, v2, v15

    iget-boolean v6, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->q:Z

    if-eqz v6, :cond_4

    if-nez p4, :cond_4

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v7, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->a:F

    const/high16 v8, 0x42990000    # 76.5f

    mul-float v7, v7, v8

    iget v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    iget v6, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->x:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget v7, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->y:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget v2, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->s:F

    mul-float v8, v8, v2

    mul-float v8, v8, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sub-float v9, v6, v8

    float-to-int v9, v9

    sub-float v10, v7, v8

    float-to-int v10, v10

    add-float/2addr v6, v8

    float-to-int v6, v6

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v2, v9, v10, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :goto_4
    add-int/2addr v15, v2

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    sget v4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v4, v4

    iget-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->sponsored:Z

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz v5, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v5, 0x40400000    # 3.0f

    :goto_0
    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    mul-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v8, v9, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v4, v5, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v5

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v7, v3, v5

    if-lez v7, :cond_1

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-nez v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    int-to-float v9, v7

    const v11, 0x3e99999a    # 0.3f

    mul-float v9, v9, v11

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->incrementLoadingT()V

    iget v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    const/high16 v8, 0x43700000    # 240.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    float-to-double v11, v7

    const-wide v13, 0x3feb333340000000L    # 0.8500000238418579

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v7, v11

    mul-float v7, v7, v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3fc00000    # 1.5f

    add-float/2addr v11, v12

    const/high16 v13, 0x40600000    # 3.5f

    rem-float/2addr v11, v13

    mul-float v11, v11, v9

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v11, v5, v14}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v11

    add-float/2addr v7, v12

    rem-float/2addr v7, v13

    sub-float/2addr v7, v12

    mul-float v7, v7, v9

    invoke-static {v7, v5, v14}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v15

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float v4, v14, v4

    invoke-static {v5, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float v15, v15, v4

    add-float/2addr v13, v15

    iget v4, v2, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    iget v11, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v15

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v14, v6

    invoke-static {v14, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float v15, v15, v3

    add-float/2addr v11, v15

    invoke-virtual {v9, v12, v13, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v6, v7, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    cmpl-float v6, v4, v5

    if-lez v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->incrementLoadingT()V

    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v7, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    const v9, 0x4197eb85    # 18.99f

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/ReplyMessageLine$$ExternalSyntheticBackport0;->m(II)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    const v9, 0x414a8f5c    # 12.66f

    goto :goto_2

    :goto_3
    iget v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iget-object v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    mul-int/lit16 v10, v10, 0x1a9

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    add-float/2addr v8, v9

    iget-boolean v9, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    if-eqz v9, :cond_3

    const/16 v9, 0x64

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    rem-float/2addr v8, v7

    neg-float v7, v8

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v2, v2, v5

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ReplyMessageLine;->checkColorPathes(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    int-to-float v7, v2

    mul-float v7, v7, v4

    float-to-int v4, v7

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    int-to-float v5, v2

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawLoadingBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFF)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v3, 0x0

    aput p3, v0, v3

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x3

    aput p4, p3, v0

    const/4 v0, 0x2

    aput p4, p3, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x5

    aput p4, p3, v0

    const/4 v0, 0x4

    aput p4, p3, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget p4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p4, p4

    div-float/2addr p4, v2

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p4, v2

    int-to-float p4, p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x7

    aput p4, p3, p5

    const/4 p5, 0x6

    aput p4, p3, p5

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez p3, :cond_2

    new-instance p3, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p3}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p4, 0x40600000    # 3.5f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setSpeed(F)V

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget p4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const p5, 0x3dcccccd    # 0.1f

    invoke-static {p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    iget p5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v0, 0x3e99999a    # 0.3f

    invoke-static {p5, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p5

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/high16 v2, 0x3fa00000    # 1.25f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {p3, p4, p5, v0, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadii([F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p6, p6, p3

    float-to-int p3, p6

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    :goto_0
    return v0
.end method

.method public offsetEmoji(FF)Lorg/telegram/ui/Components/ReplyMessageLine;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetX:F

    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiOffsetY:F

    return-object p0
.end method

.method public resetAnimation()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->resetAnimation()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    return-void
.end method

.method public setEmojiAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiAlpha:F

    return-void
.end method

.method public setFactCheck(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    iget-wide v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/16 v3, 0xd

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_2

    iget-wide v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result p1

    return p1
.end method

.method public setLoading(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    return-void
.end method
